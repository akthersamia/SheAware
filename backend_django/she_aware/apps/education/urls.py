from django.urls import path
from .views import ArticleListView, ArticleDetailView

urlpatterns = [
    path('content/articles', ArticleListView.as_view(), name='article_list'),
    path('content/articles/<int:pk>', ArticleDetailView.as_view(), name='article_detail'),
]
