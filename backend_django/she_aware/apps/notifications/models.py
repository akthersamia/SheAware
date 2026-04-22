from django.db import models
from apps.users.models import User, Device

class Notification(models.Model):
    TYPE_CHOICES = [
        ('reminder', 'Reminder'),
        ('campaign', 'Campaign'),
        ('system', 'System'),
    ]
    
    device = models.ForeignKey(Device, on_delete=models.CASCADE, null=True, blank=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    type = models.CharField(max_length=20, choices=TYPE_CHOICES, default='reminder')
    title = models.CharField(max_length=100)
    message = models.TextField()
    cron_spec = models.CharField(max_length=50, null=True, blank=True, help_text="Cron format for recurring reminders")
    next_send = models.DateTimeField(null=True, blank=True)
    is_sent = models.BooleanField(default=False)
    payload = models.JSONField(default=dict, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.type}: {self.title}"
