// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EducationDataResponseImpl _$$EducationDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EducationDataResponseImpl(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  slug: json['slug'] as String?,
  category: json['category'] as String?,
  bodyHtml: json['body_html'] as String?,
  sources: (json['sources'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  lang: json['lang'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$$EducationDataResponseImplToJson(
  _$EducationDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'slug': instance.slug,
  'category': instance.category,
  'body_html': instance.bodyHtml,
  'sources': instance.sources,
  'tags': instance.tags,
  'lang': instance.lang,
  'updated_at': instance.updatedAt,
};
