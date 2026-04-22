// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomRequestImpl _$$SymptomRequestImplFromJson(Map<String, dynamic> json) =>
    _$SymptomRequestImpl(
      name: json['name'] as String,
      severity: (json['severity'] as num).toInt(),
      durationValue: (json['duration_value'] as num).toInt(),
      durationUnit: json['duration_unit'] as String,
    );

Map<String, dynamic> _$$SymptomRequestImplToJson(
  _$SymptomRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'severity': instance.severity,
  'duration_value': instance.durationValue,
  'duration_unit': instance.durationUnit,
};
