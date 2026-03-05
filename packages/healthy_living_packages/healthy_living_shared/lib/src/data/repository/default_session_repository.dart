import 'dart:async';

import 'package:flutter/services.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/user_token_data_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SessionRepository)
class DefaultSessionRepository implements SessionRepository {
  final SessionLocalDataSource _localDataSource;
  final SessionRemoteDataSource _remoteDataSource;
  static DefaultSessionRepository? _instance;

  DefaultSessionRepository._internal(
    this._localDataSource,
    this._remoteDataSource,
  );

  @factoryMethod
  factory DefaultSessionRepository({
    required SessionLocalDataSource localDataSource,
    required SessionRemoteDataSource remoteDataSource,
  }) {
    _instance ??= DefaultSessionRepository._internal(
      localDataSource,
      remoteDataSource,
    );
    return _instance!;
  }

  @override
  Future<void> saveAccessToken(String token) async {
    await _localDataSource.saveAccessToken(token);
  }

  @override
  Future<void> saveRefreshToken(String token) async {
    await _localDataSource.saveRefreshToken(token);
  }

  @override
  Future<String?> getAccessToken() async {
    return await _localDataSource.getAccessToken();
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _localDataSource.getRefreshToken();
  }

  @override
  Future<void> removeAccessToken() {
    return _localDataSource.removeAccessToken();
  }

  @override
  Future<void> removeRefreshToken() {
    return _localDataSource.removeRefreshToken();
  }

  @override
  Future<void> removeUserTokens() async {
    final accessToken = await getAccessToken();
    final refreshToken = await getRefreshToken();
    if (accessToken.isValidValue) {
      await removeAccessToken();
    }
    if (refreshToken.isValidValue) {
      await removeRefreshToken();
    }
  }

  @override
  Future<void> saveIsAuthenticated(bool isAuthenticated) async {
    await _localDataSource.saveIsAuthenticated(isAuthenticated);
  }

  @override
  Future<bool?> getIsAuthenticated() async {
    return _localDataSource.getIsAuthenticated();
  }

  @override
  Future<void> removeIsAuthenticated() {
    return _localDataSource.removeIsAuthenticated();
  }

  @override
  Future<UserTokenDataModel?> refreshToken() async {
    final refreshToken = await getRefreshToken();
    final accessToken = await getAccessToken();

    await saveLogs(message: "refresh token :  $refreshToken");

    if (refreshToken == null) return null;

    final UserTokenDataModel? userTokenDataModel = await _remoteDataSource
        .refreshToken(
          refreshToken: refreshToken,
          accessToken: accessToken ?? "",
        );
    if (userTokenDataModel != null &&
        userTokenDataModel.accessToken.isValidValue &&
        userTokenDataModel.refreshToken.isValidValue) {
      await saveLogs(
        message: "new access token :  ${userTokenDataModel.accessToken}",
      );
      await saveLogs(
        message: "new refresh token :  ${userTokenDataModel.refreshToken}",
      );

      await saveAccessToken(userTokenDataModel.accessToken);
      await saveRefreshToken(userTokenDataModel.refreshToken);
    } else {
      await saveLogs(message: "failed to get refreshToken api ");
    }
    return userTokenDataModel;
  }

  @override
  Future<void> saveIsPremiumUser(bool isPremiumUser) async {
    await _localDataSource.setIsPremiumUser(isPremiumUser);
  }

  @override
  Future<bool?> getIsPremiumUser() async {
    return _localDataSource.getIsPremiumUser();
  }

  @override
  Future<void> removeIsPremiumUser() {
    return _localDataSource.removeIsPremiumUser();
  }

  @override
  Future<bool> saveLogs({
    required String message,
    bool saveToFile = false,
  }) async {
    if (!EnvConfig().isSaveLogsEnabled) return false;
    if (!message.isValidValue) {
      await _localDataSource.saveLogs("");
    } else {
      String? logs = await _localDataSource.getLogs();
      await _localDataSource.saveLogs("$logs + , + $message");
      if (saveToFile) {
        String? savedLogs = await _localDataSource.getLogs();
        await Clipboard.setData(ClipboardData(text: savedLogs ?? ""));
      }
    }
    return true;
  }
}
