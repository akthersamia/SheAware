import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_snapshot_data_response.freezed.dart';
part 'score_snapshot_data_response.g.dart';

@freezed
class ScoreSnapshotDataResponse with _$ScoreSnapshotDataResponse {
  const factory ScoreSnapshotDataResponse({
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'flags') List<String>? flags,
    @JsonKey(name: 'explanation') String? explanation,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _ScoreSnapshotDataResponse;

  factory ScoreSnapshotDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ScoreSnapshotDataResponseFromJson(json);
}
