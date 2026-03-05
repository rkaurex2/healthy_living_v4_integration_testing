import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable(as: NetworkInterceptor)
@accessTokenNetworkInterceptor
class AccessTokenInterceptor extends NetworkInterceptor {
  final SessionRepository _sessionRepository;

  static bool _isRefreshInProgress = false;

  // All requests waiting for refresh to finish
  static final List<Completer<void>> _refreshObservers = [];

  static bool _isSessionExpiredTriggerInProgress = false;

  // handling single session expired
  static final List<Completer<void>> _sessionExpiredObservers = [];

  AccessTokenInterceptor(SessionRepository sessionRepository)
    : _sessionRepository = sessionRepository;

  @override
  void onRequest(RequestData requestData, RequestHandler handler) async {
    try {
      String? accessToken = await getAccessToken();

      await _sessionRepository.saveLogs(
        message: "saved accessToken :  $accessToken",
      );

      // Check for accessToken validity only if it exists.
      if (accessToken?.trim().isValidValue == true) {
        // getOrRefreshAccessToken() will throw Exception if it fails to
        // get or refresh the access token.
        String? accessToken = await getOrRefreshAccessToken();
        requestData.requestHeaders["Authorization"] = "Bearer $accessToken";
      } else {
        await _sessionRepository.saveLogs(
          message: "clear data from preferences",
        );
        await UserSessionManager.instance.fireAndWait(
          UserSessionEventType.invalidAccessToken,
        );
      }

      super.onRequest(requestData, handler);
    } catch (ex, trace) {
      debugPrintStack(label: ex.toString(), stackTrace: trace);

      // Rejecting API call.
      handler.reject(requestData, ex);
    }
  }

  @override
  void onError(ErrorData errorData, ErrorHandler handler) async {
    try {
      final int? code = errorData.statusCode;
      final bool messageContains401 =
          errorData.errorMessage?.contains("401") ?? false;

      if (code == 401 || messageContains401) {
        await _sessionRepository.saveLogs(
          message: "onError: Unauthorized (401 detected) → triggerLogout",
        );

        await _triggerSessionExpiredOnce();
      }
    } catch (e, t) {
      debugPrintStack(label: e.toString(), stackTrace: t);
    }

    super.onError(errorData, handler);
  }

  Future<String> getOrRefreshAccessToken() async {
    String? accessToken = await getAccessToken();
    final isTokenValid = isAccessTokenValid(accessToken);

    if (isTokenValid) {
      await _sessionRepository.saveLogs(
        message: "isTokenValid :  $isTokenValid",
      );
      return accessToken!;
    } else {
      try {
        await _performRefreshWithQueue();
      } catch (_) {
        await _triggerSessionExpiredOnce();
        rethrow;
      }

      // Read updated access token.
      accessToken = await getAccessToken();

      if (isAccessTokenValid(accessToken)) {
        return accessToken!;
      }

      throw NetworkClientSideException(
        message: "Invalid access token",
        statusCode: 401,
        originalError: null,
      );
    }
  }

  Future<void> _triggerSessionExpiredOnce() async {
    if (_isSessionExpiredTriggerInProgress) {
      final completer = Completer<void>();
      _sessionExpiredObservers.add(completer);
      return completer.future;
    }

    _isSessionExpiredTriggerInProgress = true;

    try {
      await UserSessionManager.instance.fireAndWait(
        UserSessionEventType.sessionExpired,
      );

      for (final c in _sessionExpiredObservers) {
        if (!c.isCompleted) c.complete();
      }
      _sessionExpiredObservers.clear();
    } catch (ex, trace) {
      for (final c in _sessionExpiredObservers) {
        if (!c.isCompleted) c.completeError(ex, trace);
      }
      _sessionExpiredObservers.clear();
      rethrow;
    } finally {
      _isSessionExpiredTriggerInProgress = false;
    }
  }


  Future<void> _performRefreshWithQueue() async {
    if (_isRefreshInProgress) {
      final completer = Completer<void>();
      _refreshObservers.add(completer);
      return completer.future;
    }

    _isRefreshInProgress = true;

    try {
      await refreshAccessToken();

      for (final completer in _refreshObservers) {
        if (!completer.isCompleted) completer.complete();
      }
      _refreshObservers.clear();
    } catch (ex, trace) {
      debugPrintStack(stackTrace: trace);

      for (final completer in _refreshObservers) {
        if (!completer.isCompleted) completer.completeError(ex, trace);
      }
      _refreshObservers.clear();

      rethrow;
    } finally {
      _isRefreshInProgress = false;
    }
  }

  Future<String?> getAccessToken() async {
    return _sessionRepository.getAccessToken();
  }

  Future<void> refreshAccessToken() async {
    await _sessionRepository.refreshToken();
  }

  bool isAccessTokenValid(String? accessToken) {
    final isAccessTokenAboutToExpire = JwtUtils.isTokenAboutToExpire(
      accessToken,
    );

    final isValidToken =
        accessToken != null &&
        accessToken.isNotEmpty &&
        !isAccessTokenAboutToExpire;

    debugPrint(
      "Network::isAccessTokenValid: $isValidToken AccessToken: $accessToken",
    );

    return isValidToken;
  }
}
