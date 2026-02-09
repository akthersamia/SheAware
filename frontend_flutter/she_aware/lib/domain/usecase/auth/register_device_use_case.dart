import 'package:she_aware/domain/repository/auth_repository.dart';

class RegisterDeviceUseCase {
  final AuthRepository _authRepository;

  RegisterDeviceUseCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  Future<void> call() async {
    await _authRepository.ensureDeviceRegistered();
  }
}
