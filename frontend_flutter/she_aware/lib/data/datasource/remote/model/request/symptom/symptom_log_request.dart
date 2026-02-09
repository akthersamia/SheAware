import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_request.dart';

part 'symptom_log_request.freezed.dart';

part 'symptom_log_request.g.dart';

@freezed
abstract class SymptomLogRequest with _$SymptomLogRequest {
  const factory SymptomLogRequest({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'symptoms') required List<SymptomRequest> symptoms,
    @JsonKey(name: 'pain_intensity') required int painIntensity,
    @JsonKey(name: 'mood') required String mood,
    @JsonKey(name: 'notes', includeIfNull: false) String? notes,

  }) = _SymptomLogRequest;

  factory SymptomLogRequest.fromJson(Map<String, dynamic> json) =>
      _$SymptomLogRequestFromJson(json);
}
