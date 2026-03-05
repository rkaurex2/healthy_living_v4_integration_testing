
import 'package:healthy_living_auth/src/data/models/sign_in_social_error.dart';

class SignInSocialResult {
  final String? token;
  final SignInSocialError? error;

  const SignInSocialResult._({this.token, this.error});

  factory SignInSocialResult.success(String token) {
    return SignInSocialResult._(token: token);
  }

  factory SignInSocialResult.failure(SignInSocialError error) {
    return SignInSocialResult._(error: error);
  }

  bool get isSuccess => token != null;
}
