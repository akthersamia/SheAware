from django.contrib import admin
from .models import SymptomEntry, RiskScore, SymptomDefinition

class RiskScoreInline(admin.StackedInline):
    model = RiskScore
    extra = 0

@admin.register(SymptomEntry)
class SymptomEntryAdmin(admin.ModelAdmin):
    list_display = ['id', 'entry_time', 'user', 'device']
    inlines = [RiskScoreInline]

admin.site.register(SymptomDefinition)
admin.site.register(RiskScore)
