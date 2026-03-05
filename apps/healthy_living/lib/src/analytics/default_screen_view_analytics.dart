import 'package:healthy_living/src/analytics/screen_view_analytics.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ScreenViewAnalytics)
class DefaultScreenViewAnalytics implements ScreenViewAnalytics {
  final AnalyticsService _analytics;
  String? _lastLoggedScreen;

  DefaultScreenViewAnalytics(this._analytics);

  @override
  Future<void> logScreenView({required String routesPath}) async {
    final screenName = HealthyLivingSharedUtils.resolveScreenName(routesPath);

    if (_lastLoggedScreen != screenName) {
      _lastLoggedScreen = screenName;

      await _analytics.logScreenView(
        screenName: screenName,
        screenClass: screenName,
      );
    }
  }

  @override
  Future<void> logSearchStart({required String source}) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.searchStart,
      parameters: {AnalyticsParameters.source: source},
    );
  }

  @override
  Future<void> logScanStart({required String source}) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.scanStart,
      parameters: {AnalyticsParameters.source: source},
    );
  }
}
