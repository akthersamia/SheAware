import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom_request.freezed.dart';

part 'symptom_request.g.dart';

@freezed
abstract class SymptomRequest with _$SymptomRequest {
  const factory SymptomRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'severity') required int severity,
    @JsonKey(name: 'duration_value') required int durationValue,
    @JsonKey(name: 'duration_unit') required String durationUnit,

  }) = _SymptomRequest;

  factory SymptomRequest.fromJson(Map<String, dynamic> json) =>
      _$SymptomRequestFromJson(json);
}
