// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportDataResponseImpl _$$SupportDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SupportDataResponseImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  category: json['category'] as String?,
  link: json['link'] as String?,
  phoneNumber: json['phone_number'] as String?,
  isActive: json['is_active'] as bool,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$$SupportDataResponseImplToJson(
  _$SupportDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'category': instance.category,
  'link': instance.link,
  'phone_number': instance.phoneNumber,
  'is_active': instance.isActive,
  'created_at': instance.createdAt,
};
