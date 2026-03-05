abstract class AuthAnalytics {
  Future<void> logLogin({
    required String method,
  });

  Future<void> logSignUp({
    required String method,
  });

  Future<void> logLoginSkip({
    required String source,
  });
}