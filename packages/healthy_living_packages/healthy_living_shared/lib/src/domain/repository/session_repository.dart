import 'package:healthy_living_shared/src/domain/models/user_token_data_model.dart';

abstract interface class SessionRepository {
  Future<void> saveAccessToken(String token);
  Future<void> saveRefreshToken(String token);
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> removeAccessToken();
  Future<void> removeRefreshToken();
  Future<void> removeUserTokens();
  Future<void> saveIsAuthenticated(bool isAuthenticated);
  Future<bool?> getIsAuthenticated();
  Future<void> removeIsAuthenticated();
  Future<UserTokenDataModel?> refreshToken();
  Future<void> saveIsPremiumUser(bool isPremiumUser);
  Future<bool?> getIsPremiumUser();
  Future<void> removeIsPremiumUser();
  Future<bool> saveLogs({required String message, bool saveToFile = false});
}
