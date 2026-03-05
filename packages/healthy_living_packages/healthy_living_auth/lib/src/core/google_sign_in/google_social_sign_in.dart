import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_account.dart';

abstract class GoogleSocialSignIn {
  Future<void> initialize({
    String? clientId,
    String? serverClientId,
    String? nonce,
    String? hostedDomain,
  });
  Future<GoogleSocialSignInAccount> authenticate();
  Future<void> signOut();
}
