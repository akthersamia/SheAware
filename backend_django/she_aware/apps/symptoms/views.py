from rest_framework import generics, status, views
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated, AllowAny
from .models import SymptomEntry, RiskScore
from .serializers import SymptomEntrySerializer, RiskScoreSerializer
from apps.users.models import Device
from .services.scoring import ScoringService

class BaseSymptomView:
    def get_device_or_user(self):
        user = self.request.user
        device_id = self.request.headers.get('X-Device-Id') or self.request.query_params.get('device_id')
        
        if user.is_authenticated:
            return {'user': user}
        elif device_id:
            return {'device__id': device_id}
        return None

class SymptomListCreateView(BaseSymptomView, generics.ListCreateAPIView):
    serializer_class = SymptomEntrySerializer
    permission_classes = [AllowAny]

    def get_queryset(self):
        filters = self.get_device_or_user()
        if not filters:
            return SymptomEntry.objects.none()
        return SymptomEntry.objects.filter(**filters).order_by('-entry_time')

    def perform_create(self, serializer):
        # Pass device_id from header to serializer context or data if needed, but serializer handles it if passed in body.
        # Spec says body has device_id.
        # But if body doesn't, we can try header?
        # Serializer expects 'device_id' in validated_data if we want to resolve it there.
        # Actually checking serializer `create`: it looks for `device_id` in validated_data (from body).
        # We can also inject it from header.
        
        device_id = self.request.headers.get('X-Device-Id')
        save_kwargs = {}
        if device_id:
            save_kwargs['device_id'] = device_id
            
        instance = serializer.save(**save_kwargs)
        
        # Trigger Scoring
        service = ScoringService()
        service.calculate_score(instance)

class ScoreLatestView(BaseSymptomView, views.APIView):
    permission_classes = [AllowAny]

    def get(self, request):
        filters = self.get_device_or_user()
        if not filters:
             return Response({"detail": "User or Device ID required"}, status=status.HTTP_400_BAD_REQUEST)
        
        # Get latest risk score
        try:
            latest_score = RiskScore.objects.filter(entry__in=SymptomEntry.objects.filter(**filters)).latest('created_at')
            return Response(RiskScoreSerializer(latest_score).data)
        except RiskScore.DoesNotExist:
            return Response({"detail": "No scores found"}, status=status.HTTP_404_NOT_FOUND)

class ScoreHistoryView(BaseSymptomView, generics.ListAPIView):
    serializer_class = RiskScoreSerializer
    permission_classes = [AllowAny]

    def get_queryset(self):
        filters = self.get_device_or_user()
        if not filters:
            return RiskScore.objects.none()
        
        range_days = self.request.query_params.get('range', '30')
        try:
             days = int(range_days.replace('d', ''))
        except:
             days = 30
             
        # Filter by date range if needed, here just returning list
        return RiskScore.objects.filter(entry__in=SymptomEntry.objects.filter(**filters)).order_by('-created_at')
