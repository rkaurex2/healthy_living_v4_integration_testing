import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:flutter/material.dart';

const nearExpirationTokenDurationOffset = Duration(minutes: 5);

abstract final class JwtUtils {
  static const String issuedAtKey = "iat";
  static const String expiredAtKey = "exp";
  static const String emailKey = "email";

  static int? getIssuedAtTimestamp(String? jwtToken) {
    if (jwtToken == null || jwtToken.isEmpty) {
      return null;
    }

    try {
      Map<String, dynamic> properties = JwtDecoder.decode(jwtToken);
      return properties[issuedAtKey];
    } catch (ex, trace) {
      debugPrintStack(stackTrace: trace, label: ex.toString());
      return null;
    }
  }

  static int? getExpiredAtTimestamp(String? jwtToken) {
    if (jwtToken == null || jwtToken.isEmpty) {
      return null;
    }

    try {
      Map<String, dynamic> properties = JwtDecoder.decode(jwtToken);
      return properties[expiredAtKey];
    } catch (ex, trace) {
      debugPrintStack(stackTrace: trace, label: ex.toString());
      return null;
    }
  }

  static String? getEmailId(String? jwtToken) {
    if (jwtToken == null || jwtToken.isEmpty) {
      return null;
    }

    try {
      Map<String, dynamic> properties = JwtDecoder.decode(jwtToken);
      return properties[emailKey];
    } catch (ex, trace) {
      debugPrintStack(stackTrace: trace, label: ex.toString());
      return null;
    }
  }

  static bool isTokenExpired(String? jwtToken) {
    if (jwtToken == null || jwtToken.isEmpty) {
      return true;
    }

    try {
      return JwtDecoder.isExpired(jwtToken);
    } catch (ex, trace) {
      debugPrintStack(stackTrace: trace, label: ex.toString());
      return true;
    }
  }

  static bool isTokenAboutToExpire(String? jwtToken) {
    if (jwtToken == null || jwtToken.isEmpty) {
      return true;
    }

    try {
      final expirationDate = JwtDecoder.getExpirationDate(jwtToken);
      final nearExpirationDate = expirationDate.subtract(
        nearExpirationTokenDurationOffset,
      );

      return DateTime.now().isAfter(nearExpirationDate);
    } catch (ex, trace) {
      debugPrintStack(stackTrace: trace, label: ex.toString());
      return true;
    }
  }

  static Duration getTokenExpiryRemainingDuration(
    String? jwtToken,
    bool aboutToExpireDuration,
  ) {
    if (jwtToken == null || jwtToken.isEmpty) {
      return const Duration(seconds: 0);
    }

    Duration duration;

    try {
      final expirationDate = JwtDecoder.getExpirationDate(jwtToken);

      if (aboutToExpireDuration) {
        final aboutToExpireDate = expirationDate.subtract(
          nearExpirationTokenDurationOffset,
        );
        duration = Duration(
          milliseconds:
              (aboutToExpireDate.millisecondsSinceEpoch -
                  DateTime.now().millisecondsSinceEpoch),
        );
      } else {
        duration = Duration(
          milliseconds:
              (expirationDate.millisecondsSinceEpoch -
                  DateTime.now().millisecondsSinceEpoch),
        );
      }
    } catch (ex, trace) {
      debugPrintStack(stackTrace: trace, label: ex.toString());
      duration = const Duration(seconds: 0);
    }

    return duration;
  }
}
