// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_log_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomLogRequestImpl _$$SymptomLogRequestImplFromJson(
  Map<String, dynamic> json,
) => _$SymptomLogRequestImpl(
  deviceId: json['device_id'] as String,
  symptoms: (json['symptoms'] as List<dynamic>)
      .map((e) => SymptomRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
  painIntensity: (json['pain_intensity'] as num).toInt(),
  mood: json['mood'] as String,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$$SymptomLogRequestImplToJson(
  _$SymptomLogRequestImpl instance,
) => <String, dynamic>{
  'device_id': instance.deviceId,
  'symptoms': instance.symptoms,
  'pain_intensity': instance.painIntensity,
  'mood': instance.mood,
  if (instance.notes case final value?) 'notes': value,
};
