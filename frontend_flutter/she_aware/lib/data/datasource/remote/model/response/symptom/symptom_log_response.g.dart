// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_log_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomLogResponseImpl _$$SymptomLogResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SymptomLogResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: SymptomLogDataResponse.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$SymptomLogResponseImplToJson(
  _$SymptomLogResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
