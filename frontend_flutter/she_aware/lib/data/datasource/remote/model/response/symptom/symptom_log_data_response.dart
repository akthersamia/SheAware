import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/data/datasource/remote/model/response/symptom/score_snapshot_data_response.dart';
import 'package:she_aware/data/datasource/remote/model/response/symptom/symptom_data_response.dart';

part 'symptom_log_data_response.freezed.dart';
part 'symptom_log_data_response.g.dart';

@freezed
class SymptomLogDataResponse with _$SymptomLogDataResponse {
  const factory SymptomLogDataResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'entry_time') String? entryTime,
    @JsonKey(name: 'symptoms') List<SymptomDataResponse>? symptoms,
    @JsonKey(name: 'pain_intensity') int? painIntensity,
    @JsonKey(name: 'mood') String? mood,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'score_snapshot') ScoreSnapshotDataResponse? scoreSnapshot,
  }) = _SymptomLogDataResponse;

  factory SymptomLogDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomLogDataResponseFromJson(json);
}
