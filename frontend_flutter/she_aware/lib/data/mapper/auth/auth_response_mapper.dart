import 'package:she_aware/data/datasource/remote/model/response/auth/auth_data_response.dart';
import 'package:she_aware/domain/model/auth/auth.dart';

extension AuthResponseMapper on AuthDataResponse {
  Auth toAuth() {
    return Auth(
      deviceId: deviceId
    );
  }
}
