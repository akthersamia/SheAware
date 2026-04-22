from django.urls import path
from .views import SymptomListCreateView, ScoreLatestView, ScoreHistoryView

urlpatterns = [
    path('symptoms', SymptomListCreateView.as_view(), name='symptom_list_create'),
    path('score/latest', ScoreLatestView.as_view(), name='score_latest'),
    path('score/history', ScoreHistoryView.as_view(), name='score_history'),
]
