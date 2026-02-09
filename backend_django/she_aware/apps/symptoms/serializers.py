from rest_framework import serializers
from .models import SymptomEntry, RiskScore, SymptomDefinition

class RiskScoreSerializer(serializers.ModelSerializer):
    class Meta:
        model = RiskScore
        fields = ['score', 'category', 'flags', 'explanation', 'created_at']

class SymptomEntrySerializer(serializers.ModelSerializer):
    score_snapshot = RiskScoreSerializer(source='risk_score', read_only=True)
    device_id = serializers.UUIDField(write_only=True, required=False)

    class Meta:
        model = SymptomEntry
        fields = ['id', 'entry_time', 'symptoms', 'pain_intensity', 'mood', 'notes', 'score_snapshot', 'device_id']
        read_only_fields = ['id']

    def create(self, validated_data):
        # Handle device/user association manually in view or here
        device_id = validated_data.pop('device_id', None)
        user = self.context['request'].user
        
        if user.is_authenticated:
            validated_data['user'] = user
        elif device_id:
            # Assume validation of device existence happens or handled by FK (if string passed, needs lookup)
            from apps.users.models import Device
            try:
                device = Device.objects.get(id=device_id)
                validated_data['device'] = device
            except Device.DoesNotExist:
                raise serializers.ValidationError({"device_id": "Invalid device ID"})
        else:
             raise serializers.ValidationError("Either User Auth or Device ID is required.")
             
        return super().create(validated_data)
