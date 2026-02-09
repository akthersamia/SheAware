// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportResponseImpl _$$SupportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SupportResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => SupportDataResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$SupportResponseImplToJson(
  _$SupportResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
