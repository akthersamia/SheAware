from django.db import models

class Article(models.Model):
    title = models.CharField(max_length=200)
    slug = models.SlugField(unique=True)
    category = models.CharField(max_length=50, default='General')
    body_html = models.TextField()
    sources = models.JSONField(default=list, blank=True)
    tags = models.JSONField(default=list, blank=True)
    lang = models.CharField(max_length=10, default='en')
    is_published = models.BooleanField(default=False)
    published_at = models.DateTimeField(null=True, blank=True)
    updated_at = models.DateTimeField(auto_now=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title
