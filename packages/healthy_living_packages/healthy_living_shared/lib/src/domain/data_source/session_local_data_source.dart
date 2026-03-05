abstract interface class SessionLocalDataSource {
  Future<void> saveAccessToken(String token);
  Future<void> saveRefreshToken(String token);
  Future<void> removeAccessToken();
  Future<void> removeRefreshToken();
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> saveIsAuthenticated(bool isAuthenticated);
  Future<bool?> getIsAuthenticated();
  Future<void> removeIsAuthenticated();
  Future<void> setIsPremiumUser(bool isPremiumUser);
  Future<bool?> getIsPremiumUser();
  Future<void> removeIsPremiumUser();
  Future<bool> saveLogs(String message);
  Future<String?> getLogs();
}