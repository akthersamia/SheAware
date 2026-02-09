import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_data_response.freezed.dart';
part 'support_data_response.g.dart';

@freezed
abstract class SupportDataResponse with _$SupportDataResponse{
  const factory SupportDataResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _SupportDataResponse;

  factory SupportDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SupportDataResponseFromJson(json);
}
