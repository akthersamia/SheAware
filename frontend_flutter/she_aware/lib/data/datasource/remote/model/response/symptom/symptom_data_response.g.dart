// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomDataResponseImpl _$$SymptomDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SymptomDataResponseImpl(
  name: json['name'] as String?,
  severity: (json['severity'] as num?)?.toInt(),
  durationValue: (json['duration_value'] as num?)?.toInt(),
  durationUnit: json['duration_unit'] as String?,
);

Map<String, dynamic> _$$SymptomDataResponseImplToJson(
  _$SymptomDataResponseImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'severity': instance.severity,
  'duration_value': instance.durationValue,
  'duration_unit': instance.durationUnit,
};
