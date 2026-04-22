import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/data/datasource/remote/model/response/support/support_data_response.dart';

part 'support_response.freezed.dart';
part 'support_response.g.dart';

@freezed
abstract class SupportResponse with _$SupportResponse {
  const factory SupportResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required List<SupportDataResponse> data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _SupportResponse;

  factory SupportResponse.fromJson(Map<String, dynamic> json) =>
      _$SupportResponseFromJson(json);
}