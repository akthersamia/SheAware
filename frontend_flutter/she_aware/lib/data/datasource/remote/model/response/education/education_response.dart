import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/data/datasource/remote/model/response/education/education_data_response.dart';

part 'education_response.freezed.dart';
part 'education_response.g.dart';

@freezed
abstract class EducationResponse with _$EducationResponse {
  const factory EducationResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required List<EducationDataResponse> data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _EducationResponse;

  factory EducationResponse.fromJson(Map<String, dynamic> json) =>
      _$EducationResponseFromJson(json);
}