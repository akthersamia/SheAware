import 'package:she_aware/data/datasource/remote/model/response/support/support_data_response.dart';
import 'package:she_aware/domain/model/support/support.dart';

extension SupportResponseMapper on SupportDataResponse {
  Support toSupport() {
    return Support(
      id: id,
      title: title,
      description: description,
      category: category,
      link: link,
      phoneNumber: phoneNumber,
      isActive: isActive,
      createdAt: createdAt,
    );
  }
}
