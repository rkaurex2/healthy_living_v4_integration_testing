abstract interface class PaywallAnalytics {
  Future<void> logPaywallView({required String source});

  Future<void> logPaywallClose({required String source});

  Future<void> logPaywallSubmit({
    required String subscriptionId,
    required String entitlementId,
    required bool active,
    required String environment,
  });
}
