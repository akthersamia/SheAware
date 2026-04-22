import 'package:she_aware/data/datasource/remote/api/auth_api.dart';
import 'package:she_aware/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:she_aware/data/repository/source/remote/auth_remote_data_source.dart';
import 'package:she_aware/domain/model/auth/auth.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final AuthApi _authApi;

  AuthRemoteDataSourceImpl({required AuthApi authApi}) : _authApi = authApi;


  @override
  Future<Auth> registerDevice({required RegisterRequest requestBody}) async {
    var response = await _authApi.registerDevice(requestBody: requestBody);
    return response;
  }

}
