from django.db import models
from django.utils import timezone
from apps.users.models import User, Device

class SymptomDefinition(models.Model):
    key = models.CharField(max_length=50, unique=True, help_text="Internal key e.g. 'abnormal_bleeding'")
    display_text = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.display_text

class SymptomEntry(models.Model):
    device = models.ForeignKey(Device, on_delete=models.SET_NULL, null=True, blank=True)
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=True)
    entry_time = models.DateTimeField(default=timezone.now)
    # Storing symptoms as a list of dicts: [{ "symptom_id": 1, "severity": 3, "duration_value": 2, "duration_unit": "days" }]
    # Or cleaner: using the key directly in the JSON to avoid ID lookups if definitions change.
    # Spec says: "symptoms": [ { "symptom_id": 1, ... } ]
    # I will stick to JSONField for flexibility as requested.
    symptoms = models.JSONField(default=list) 
    pain_intensity = models.IntegerField(null=True, blank=True)
    mood = models.CharField(max_length=50, null=True, blank=True)
    notes = models.TextField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    deleted_at = models.DateTimeField(null=True, blank=True)

    class Meta:
        ordering = ['-entry_time']
        indexes = [
            models.Index(fields=['device', 'entry_time']),
            models.Index(fields=['user', 'entry_time']),
        ]

    def __str__(self):
        return f"Entry {self.id} ({self.entry_time.date()})"

class RiskScore(models.Model):
    entry = models.OneToOneField(SymptomEntry, on_delete=models.CASCADE, related_name='risk_score')
    score = models.IntegerField()
    category = models.CharField(max_length=50) # Low, Moderate, Elevated, High
    flags = models.JSONField(default=list, blank=True)
    explanation = models.TextField(blank=True)
    model = models.CharField(max_length=50, default='gemini-v1')
    response_payload = models.JSONField(null=True, blank=True, help_text="Raw response from AI model for debugging")
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Score {self.score} ({self.category})"
