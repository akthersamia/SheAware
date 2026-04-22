import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom_data_response.freezed.dart';
part 'symptom_data_response.g.dart';

@freezed
class SymptomDataResponse with _$SymptomDataResponse {
  const factory SymptomDataResponse({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'severity') int? severity,
    @JsonKey(name: 'duration_value') int? durationValue,
    @JsonKey(name: 'duration_unit') String? durationUnit,
  }) = _SymptomDataResponse;

  factory SymptomDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomDataResponseFromJson(json);
}

