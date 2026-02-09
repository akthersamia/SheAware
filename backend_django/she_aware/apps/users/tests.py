from django.urls import reverse
from rest_framework.test import APITestCase
from rest_framework import status
from apps.users.models import User, Device

class AuthTests(APITestCase):
    def test_register_device(self):
        url = reverse('device_register')
        data = {'platform': 'ios'}
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertTrue('device_id' in response.data)
        self.assertEqual(Device.objects.count(), 1)

    def test_register_user(self):
        url = reverse('user_register')
        data = {'email': 'test@example.com', 'password': 'password123'}
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertTrue('access_token' in response.data)
        self.assertEqual(User.objects.count(), 1)

    def test_login_user(self):
        user = User.objects.create_user(email='login@example.com', password='password123')
        url = reverse('token_obtain_pair')
        data = {'email': 'login@example.com', 'password': 'password123'}
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertTrue('access_token' in response.data)
