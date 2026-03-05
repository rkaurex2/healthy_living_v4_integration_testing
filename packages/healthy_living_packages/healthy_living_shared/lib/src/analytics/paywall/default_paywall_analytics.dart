import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PaywallAnalytics)
class DefaultPaywallAnalytics implements PaywallAnalytics {
  final AnalyticsService _analytics;

  DefaultPaywallAnalytics(this._analytics);

  @override
  Future<void> logPaywallView({required String source}) {
    return _analytics.logEvent(
      name: AnalyticsEvents.paywallView,
      parameters: {AnalyticsParameters.source: source},
    );
  }

  @override
  Future<void> logPaywallClose({required String source}) {
    return _analytics.logEvent(
      name: AnalyticsEvents.paywallClose,
      parameters: {AnalyticsParameters.source: source},
    );
  }

  @override
  Future<void> logPaywallSubmit({
    required String subscriptionId,
    required String entitlementId,
    required bool active,
    required String environment,
  }) {
    return _analytics.logEvent(
      name: AnalyticsEvents.paywallSubmit,
      parameters: {
        AnalyticsParameters.subscriptionId: subscriptionId,
        AnalyticsParameters.entitlementId: entitlementId,
        AnalyticsParameters.active: active,
        AnalyticsParameters.environment: environment,
      },
    );
  }
}
