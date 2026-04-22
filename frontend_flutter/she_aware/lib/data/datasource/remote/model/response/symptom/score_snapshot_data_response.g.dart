// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_snapshot_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreSnapshotDataResponseImpl _$$ScoreSnapshotDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ScoreSnapshotDataResponseImpl(
  score: (json['score'] as num?)?.toInt(),
  category: json['category'] as String?,
  flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  explanation: json['explanation'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$$ScoreSnapshotDataResponseImplToJson(
  _$ScoreSnapshotDataResponseImpl instance,
) => <String, dynamic>{
  'score': instance.score,
  'category': instance.category,
  'flags': instance.flags,
  'explanation': instance.explanation,
  'created_at': instance.createdAt,
};
