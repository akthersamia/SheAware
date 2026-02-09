from rest_framework import views, status
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from .models import Device
from .serializers import DeviceSerializer

class DeviceRegisterView(views.APIView):
    permission_classes = [AllowAny]

    def post(self, request):
        serializer = DeviceSerializer(data=request.data)
        if serializer.is_valid():
            device = serializer.save()
            # Standard Wrapper will handle success/data
            return Response({
                "device_id": device.id,
                "server_ack": True
            }, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
