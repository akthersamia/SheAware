import 'package:she_aware/data/datasource/remote/model/response/symptom/score_snapshot_data_response.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';

extension ScoreSnapshotDataResponseMapper on ScoreSnapshotDataResponse {
  ScoreSnapshot toDomain() {
    return ScoreSnapshot(
      score: score,
      category: category,
      flags: flags,
      explanation: explanation,
      createdAt: createdAt,
    );
  }
}


