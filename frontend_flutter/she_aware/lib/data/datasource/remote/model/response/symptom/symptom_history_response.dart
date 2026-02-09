import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/data/datasource/remote/model/response/symptom/symptom_log_data_response.dart';

part 'symptom_history_response.freezed.dart';
part 'symptom_history_response.g.dart';

@freezed
abstract class SymptomHistoryResponse with _$SymptomHistoryResponse {
  const factory SymptomHistoryResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required List<SymptomLogDataResponse> data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _SymptomHistoryResponse;

  factory SymptomHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomHistoryResponseFromJson(json);
}