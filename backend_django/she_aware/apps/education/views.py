from rest_framework import generics, permissions
from .models import Article
from .serializers import ArticleSerializer

class ArticleListView(generics.ListAPIView):
    serializer_class = ArticleSerializer
    permission_classes = [permissions.AllowAny]

    def get_queryset(self):
        qs = Article.objects.filter(is_published=True)
        category = self.request.query_params.get('category')
        lang = self.request.query_params.get('lang')
        if category:
            qs = qs.filter(category=category)
        if lang:
            qs = qs.filter(lang=lang)
        return qs

class ArticleDetailView(generics.RetrieveAPIView):
    queryset = Article.objects.filter(is_published=True)
    serializer_class = ArticleSerializer
    permission_classes = [permissions.AllowAny]
