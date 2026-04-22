import 'package:she_aware/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:she_aware/domain/model/auth/auth.dart';
import 'package:she_aware/domain/repository/auth_repository.dart';
import 'package:she_aware/domain/util/failure.dart';
import 'package:she_aware/domain/util/result.dart';

class RegisterUseCase {
  final AuthRepository _authRepository;

  RegisterUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  Future<Result<Auth>> call({required RegisterRequest requestBody}) async {
    return await _authRepository
        .registerDevice(requestBody: requestBody)
        .then((auth) => Result.success(auth))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
