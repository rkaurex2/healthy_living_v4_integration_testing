class AuthScreenParams {
  final bool isLogin;

  const AuthScreenParams({required this.isLogin});

  Map<String, String> toQueryParameters() => {'isLogin': isLogin.toString()};

  static AuthScreenParams fromQueryParameters(Map<String, String> params) {
    return AuthScreenParams(isLogin: params["isLogin"] == "true");
  }
}
