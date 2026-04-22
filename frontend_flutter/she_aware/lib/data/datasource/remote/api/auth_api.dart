import 'package:she_aware/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:she_aware/domain/model/auth/auth.dart';

abstract class AuthApi {
  Future<Auth> registerDevice({required RegisterRequest requestBody});
}
