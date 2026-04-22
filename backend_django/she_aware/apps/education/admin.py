from django.contrib import admin
from .models import Article

@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ['title', 'category', 'lang', 'is_published', 'updated_at']
    list_filter = ['category', 'lang', 'is_published']
    search_fields = ['title', 'body_html']
