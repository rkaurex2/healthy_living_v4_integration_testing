
import 'package:healthy_living_auth/src/data/models/sign_in_social_error.dart';

class SignInSocialException implements Exception {
  final SignInSocialError error;

  SignInSocialException(this.error);
}
