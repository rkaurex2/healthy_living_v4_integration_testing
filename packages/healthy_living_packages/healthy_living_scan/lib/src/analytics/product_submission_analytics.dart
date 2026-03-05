abstract interface class ProductSubmissionAnalytics {
  Future<void> logSubmitStart();

  Future<void> logSubmitPhoto({
    required String productCategory,
    required String imageRole,
  });

  Future<void> logSubmitAddDetails({
    required String productCategory,
    required String submissionId,
    required String addDetailScreen,
  });

  Future<void> logSubmitSkipDetails({
    required String productCategory,
    required String submissionId,
    required String skipDetailScreen,
  });

  Future<void> logSubmitSkipToScore({
    required String productCategory,
    required String submissionId,
  });

  Future<void> logSubmitSuccess({
    required String submissionId,
    required String productCategory,
  });

  Future<void> logSubmitFail({
    required String submissionId,
    required String productCategory,
  });
}
