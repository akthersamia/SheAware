
import 'package:she_aware/data/datasource/remote/model/response/symptom/symptom_log_data_response.dart';
import 'package:she_aware/data/mapper/symptom/score_snapshot_response_mapper.dart';
import 'package:she_aware/data/mapper/symptom/symptom_response_mapper.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';

extension SymptomLogDataResponseMapper on SymptomLogDataResponse {
  SymptomLog toDomain() {
    return SymptomLog(
      id: id,
      entryTime: entryTime,
      symptoms: symptoms?.map((e) => e.toDomain()).toList(),
      painIntensity: painIntensity,
      mood: mood,
      notes: notes,
      scoreSnapshot: scoreSnapshot?.toDomain(),
    );
  }
}
