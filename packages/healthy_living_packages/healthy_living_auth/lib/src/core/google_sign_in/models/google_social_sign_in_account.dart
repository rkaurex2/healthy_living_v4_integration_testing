import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_authentication.dart';

class GoogleSocialSignInAccount {
  const GoogleSocialSignInAccount({
    required this.email,
    required this.id,
    required this.authentication,
    this.displayName,
    this.photoUrl,
  });

  final String? displayName;
  final String email;
  final String id;
  final String? photoUrl;
  final GoogleSocialSignInAuthentication authentication;
}