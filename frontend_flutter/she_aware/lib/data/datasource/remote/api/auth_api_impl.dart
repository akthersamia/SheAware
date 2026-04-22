import 'package:she_aware/data/datasource/remote/api/auth_api.dart';
import 'package:she_aware/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:she_aware/data/datasource/remote/model/response/auth/auth_response.dart';
import 'package:she_aware/data/datasource/remote/util/api_client.dart';
import 'package:she_aware/data/mapper/auth/auth_response_mapper.dart';
import 'package:she_aware/domain/model/auth/auth.dart';

class AuthApiImpl extends AuthApi {
  final ApiClient _client;

  static const registerUrl = 'auth/device';

  AuthApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<Auth> registerDevice({required RegisterRequest requestBody}) async {
    try {
      final response = await _client.post<JSONObject, AuthResponse>(
        path: registerUrl,
        data: requestBody.toJson(),
        converter: (json) {
          return AuthResponse.fromJson(json);
        },
      );
      return response.data.toAuth();
    } catch (e) {
      rethrow;
    }
  }
}
