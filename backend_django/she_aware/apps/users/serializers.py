from rest_framework import serializers
from .models import Device
import uuid

class DeviceSerializer(serializers.ModelSerializer):
    device_id = serializers.UUIDField(source='id', required=False)

    class Meta:
        model = Device
        fields = ['device_id', 'platform', 'created_at']
        read_only_fields = ['created_at']
    
    def create(self, validated_data):
        device_id = validated_data.pop('id', None)
        if device_id:
             device, created = Device.objects.get_or_create(id=device_id, defaults=validated_data)
             if not created and 'platform' in validated_data:
                 device.platform = validated_data['platform']
                 device.save()
             return device
        return super().create(validated_data)
