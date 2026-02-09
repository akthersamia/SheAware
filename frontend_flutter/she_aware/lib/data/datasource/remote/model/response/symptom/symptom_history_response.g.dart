// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomHistoryResponseImpl _$$SymptomHistoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SymptomHistoryResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => SymptomLogDataResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$SymptomHistoryResponseImplToJson(
  _$SymptomHistoryResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
