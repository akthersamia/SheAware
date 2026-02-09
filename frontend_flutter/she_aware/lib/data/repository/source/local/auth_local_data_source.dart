abstract class AuthLocalDataSource {
  String getAccessToken();

  Future<void> saveAccessToken(String token);

  String getRefreshToken();

  Future<void> saveRefreshToken(String token);

  Future<void> clearTokens();

  Future<void> clearAccessToken();

  Future<void> setAccountId({required String id});

  String getDeviceId();

  Future<void> saveDeviceId(String id);
}
