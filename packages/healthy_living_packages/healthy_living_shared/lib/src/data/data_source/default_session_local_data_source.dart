import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/session_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:storage/storage.dart';

@LazySingleton(as: SessionLocalDataSource)
class DefaultSessionLocalDataSource implements SessionLocalDataSource {
  final SecureStorage _secureStorage;
  final KeyValueStorage _keyValueStorage;

  static DefaultSessionLocalDataSource? _instance;

  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _isAuthenticatedKey = 'is_authenticated';
  static const String _isPremiumUserKey = "is_premium_user";

  DefaultSessionLocalDataSource._internal(
    this._secureStorage,
    this._keyValueStorage,
  );

  @factoryMethod
  factory DefaultSessionLocalDataSource({
    required SecureStorage secureStorage,
    required KeyValueStorage keyValueStorage,
  }) {
    _instance ??= DefaultSessionLocalDataSource._internal(
      secureStorage,
      keyValueStorage,
    );
    return _instance!;
  }

  @override
  Future<String?> getAccessToken() {
    return _secureStorage.getString(_accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() {
    return _secureStorage.getString(_refreshTokenKey);
  }

  @override
  Future<void> saveAccessToken(String token) {
    return _secureStorage.setString(_accessTokenKey, token);
  }

  @override
  Future<void> saveRefreshToken(String token) {
    return _secureStorage.setString(_refreshTokenKey, token);
  }

  @override
  Future<void> removeAccessToken() {
    return _secureStorage.remove(_accessTokenKey);
  }

  @override
  Future<void> removeRefreshToken() {
    return _secureStorage.remove(_refreshTokenKey);
  }

  @override
  Future<void> saveIsAuthenticated(bool isAuthenticated) {
    return _keyValueStorage.setBool(_isAuthenticatedKey, isAuthenticated);
  }

  @override
  Future<bool?> getIsAuthenticated() {
    return _keyValueStorage.getBool(_isAuthenticatedKey);
  }

  @override
  Future<void> removeIsAuthenticated() {
    return _keyValueStorage.remove(_isAuthenticatedKey);
  }

  @override
  Future<void> setIsPremiumUser(bool isPremiumUser) {
    return _keyValueStorage.setBool(_isPremiumUserKey, isPremiumUser);
  }

  @override
  Future<bool?> getIsPremiumUser() {
    return _keyValueStorage.getBool(_isPremiumUserKey);
  }

  @override
  Future<void> removeIsPremiumUser() {
    return _keyValueStorage.remove(_isPremiumUserKey);
  }

  @override
  Future<bool> saveLogs(String message) {
    return _keyValueStorage.setString("logs", message);
  }

  @override
  Future<String?> getLogs() {
    return _keyValueStorage.getString("logs");
  }
}
