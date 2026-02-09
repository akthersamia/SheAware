// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_log_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomLogDataResponseImpl _$$SymptomLogDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SymptomLogDataResponseImpl(
  id: (json['id'] as num).toInt(),
  entryTime: json['entry_time'] as String?,
  symptoms: (json['symptoms'] as List<dynamic>?)
      ?.map((e) => SymptomDataResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  painIntensity: (json['pain_intensity'] as num?)?.toInt(),
  mood: json['mood'] as String?,
  notes: json['notes'] as String?,
  scoreSnapshot: json['score_snapshot'] == null
      ? null
      : ScoreSnapshotDataResponse.fromJson(
          json['score_snapshot'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$SymptomLogDataResponseImplToJson(
  _$SymptomLogDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'entry_time': instance.entryTime,
  'symptoms': instance.symptoms,
  'pain_intensity': instance.painIntensity,
  'mood': instance.mood,
  'notes': instance.notes,
  'score_snapshot': instance.scoreSnapshot,
};
