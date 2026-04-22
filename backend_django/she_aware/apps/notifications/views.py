from rest_framework import generics, serializers, status, permissions, views
from rest_framework.response import Response
from .models import Notification
from apps.users.models import Device

class NotificationSerializer(serializers.ModelSerializer):
    device_id = serializers.UUIDField(write_only=True)

    class Meta:
        model = Notification
        fields = ['id', 'device_id', 'type', 'title', 'message', 'cron_spec', 'next_send']
        read_only_fields = ['id', 'next_send']

    def create(self, validated_data):
        device_id = validated_data.pop('device_id')
        try:
            device = Device.objects.get(id=device_id)
            validated_data['device'] = device
        except Device.DoesNotExist:
             raise serializers.ValidationError({"device_id": "Invalid ID"})
        
        return super().create(validated_data)

class ScheduleNotificationView(generics.CreateAPIView):
    serializer_class = NotificationSerializer
    permission_classes = [permissions.AllowAny]

class PushNotificationView(views.APIView):
    permission_classes = [permissions.IsAdminUser]

    def post(self, request):
        # Stub for admin push
        return Response({"detail": "Push initiated"}, status=status.HTTP_200_OK)
