abstract interface class HomeAnalytics {
  Future<void> logSearchStart({
    required String source,
  });

  Future<void> logScanStart({
    required String source,
  });
}
