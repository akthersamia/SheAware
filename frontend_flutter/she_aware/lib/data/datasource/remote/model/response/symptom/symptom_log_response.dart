import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/data/datasource/remote/model/response/symptom/symptom_log_data_response.dart';

part 'symptom_log_response.freezed.dart';
part 'symptom_log_response.g.dart';

@freezed
abstract class SymptomLogResponse with _$SymptomLogResponse {
  const factory SymptomLogResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required SymptomLogDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _SymptomLogResponse;

  factory SymptomLogResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomLogResponseFromJson(json);
}