from django.db import models

class Resource(models.Model):
    CATEGORY_CHOICES = [
        ('NHS', 'NHS & Medical Resources'),
        ('HELPLINE', 'Helplines & Support'),
        ('EMERGENCY', 'Emergency Contact'),
        ('OTHER', 'Other Resources'),
    ]

    title = models.CharField(max_length=255)
    description = models.TextField(blank=True)
    category = models.CharField(max_length=50, choices=CATEGORY_CHOICES, default='OTHER')
    link = models.URLField(blank=True, null=True)
    phone_number = models.CharField(max_length=50, blank=True, null=True)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title
