// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EducationResponseImpl _$$EducationResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EducationResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => EducationDataResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$EducationResponseImplToJson(
  _$EducationResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
