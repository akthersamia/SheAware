from django.urls import reverse
from rest_framework.test import APITestCase
from rest_framework import status
from apps.users.models import Device
from apps.notifications.models import Notification

class NotificationTests(APITestCase):
    def setUp(self):
        self.device = Device.objects.create(platform='ios')
        self.device_id = str(self.device.id)

    def test_schedule_notification(self):
        url = reverse('notification_schedule')
        data = {
            "device_id": self.device_id,
            "type": "reminder",
            "title": "Log symptoms",
            "message": "Time to log",
            "cron_spec": "0 9 * * *"
        }
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(Notification.objects.count(), 1)
