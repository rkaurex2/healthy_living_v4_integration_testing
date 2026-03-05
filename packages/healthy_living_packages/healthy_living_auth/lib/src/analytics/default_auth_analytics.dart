import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthAnalytics)
class DefaultAuthAnalytics implements AuthAnalytics {
  final AnalyticsService _analytics;

  DefaultAuthAnalytics(this._analytics);

  @override
  Future<void> logLogin({
    required String method,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.login,
      parameters: {
        AnalyticsParameters.method: method,
      },
    );
  }

  @override
  Future<void> logSignUp({
    required String method,
  }) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.signUp,
      parameters: {
        AnalyticsParameters.method: method,
      },
    );
  }

  @override
  Future<void> logLoginSkip({required String source}) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.loginSkip,
      parameters: {
        AnalyticsParameters.source: source,
      },
    );
  }
}

