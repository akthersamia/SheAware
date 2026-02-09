from django.urls import reverse
from rest_framework.test import APITestCase
from rest_framework import status
from apps.users.models import Device
from apps.symptoms.models import SymptomEntry, RiskScore

class SymptomTests(APITestCase):
    def setUp(self):
        self.device = Device.objects.create(platform='ios')
        self.device_id = str(self.device.id)

    def test_log_symptom_and_score(self):
        url = reverse('symptom_list_create')
        data = {
            "device_id": self.device_id,
            "symptoms": [{"symptom_id": 1, "severity": 3, "duration_value": 3, "duration_unit": "days"}],
            "notes": "Test"
        }
        # Send device id in header as per one flow, or body as per serializer
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertTrue('score_snapshot' in response.data)
        
        # Verify DB
        self.assertEqual(SymptomEntry.objects.count(), 1)
        self.assertEqual(RiskScore.objects.count(), 1)
        
        # Verify Logic (Heuristic: 3*5 = 15 => Low)
        score = RiskScore.objects.first()
        self.assertEqual(score.score, 15)
        self.assertEqual(score.category, "Low")

    def test_high_risk_flag(self):
        url = reverse('symptom_list_create')
        data = {
            "device_id": self.device_id,
            "symptoms": [{"name": "abnormal_bleeding", "severity": 4, "duration_value": 15, "duration_unit": "days"}],
        }
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        
        score = RiskScore.objects.first()
        # Heuristic: 4*5 = 20. Duration > 14 => +10. Total 30. Moderate.
        # But wait, logic for duration > 14 adds +10.
        # 4*5 + 10 = 30.
        # Also abnormal_bleeding >= 3 and days > 7. "seek_gp_soon" flag.
        self.assertEqual(score.score, 30)
        self.assertEqual(score.category, "Moderate")
        self.assertIn("seek_gp_soon", score.flags)

    def test_get_history(self):
        # Create an entry
        self.test_log_symptom_and_score()
        
        url = reverse('score_history')
        response = self.client.get(url, HTTP_X_DEVICE_ID=self.device_id)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)
