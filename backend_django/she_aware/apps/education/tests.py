from django.urls import reverse
from rest_framework.test import APITestCase
from rest_framework import status
from .models import Article

class ArticleTests(APITestCase):
    def setUp(self):
        Article.objects.create(title="Test Article", slug="test", body_html="<p>Test</p>", is_published=True)

    def test_list_articles(self):
        url = reverse('article_list')
        response = self.client.get(url)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)

    def test_get_article(self):
        article = Article.objects.first()
        url = reverse('article_detail', args=[article.id])
        response = self.client.get(url)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.data['title'], "Test Article")
