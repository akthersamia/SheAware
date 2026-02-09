import 'package:she_aware/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:she_aware/data/repository/source/local/auth_local_data_source.dart';
import 'package:she_aware/data/repository/source/remote/auth_remote_data_source.dart';
import 'package:she_aware/domain/model/auth/auth.dart';
import 'package:she_aware/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl({
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });

  @override
  Future<Auth> registerDevice({required RegisterRequest requestBody}) async {
    var response = await authRemoteDataSource.registerDevice(
      requestBody: requestBody,
    );
    return response;
  }

  @override
  Future<void> ensureDeviceRegistered() async {
    final localDeviceId = authLocalDataSource.getDeviceId();
    if (localDeviceId.isNotEmpty) {
      return;
    }

    try {
      final response = await authRemoteDataSource.registerDevice(
        requestBody: const RegisterRequest(platform: 'android'),
      );
      await authLocalDataSource.saveDeviceId(response.deviceId);
    } catch (e) {
      rethrow;
    }
  }
}
