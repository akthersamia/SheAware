import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_data_response.freezed.dart';
part 'education_data_response.g.dart';

@freezed
abstract class EducationDataResponse with _$EducationDataResponse {
  const factory EducationDataResponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'body_html') String? bodyHtml,
    @JsonKey(name: 'sources') List<String>? sources,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'lang') String? lang,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _EducationDataResponse;

  factory EducationDataResponse.fromJson(Map<String, dynamic> json) =>
      _$EducationDataResponseFromJson(json);
}
