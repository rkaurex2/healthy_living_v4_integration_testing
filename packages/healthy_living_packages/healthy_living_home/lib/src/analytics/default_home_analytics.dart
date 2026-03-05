import 'package:healthy_living_home/src/analytics/home_analytics.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeAnalytics)
class DefaultHomeAnalytics implements HomeAnalytics {
  final AnalyticsService _analytics;

  DefaultHomeAnalytics(this._analytics);

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
