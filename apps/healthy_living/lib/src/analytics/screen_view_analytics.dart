abstract interface class ScreenViewAnalytics {
  Future<void> logScreenView({
    required String routesPath,
  });

  Future<void> logSearchStart({
    required String source,
  });

  Future<void> logScanStart({
    required String source,
  });
}
