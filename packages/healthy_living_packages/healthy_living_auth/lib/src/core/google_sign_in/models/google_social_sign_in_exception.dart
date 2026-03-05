import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception_code.dart';

class GoogleSocialSignInException implements Exception {
  const GoogleSocialSignInException({
    required this.code,
    this.description,
    this.details,
  });

  /// The type of failure.
  final GoogleSocialSignInExceptionCode code;

  /// A human-readable description of the failure.
  final String? description;

  /// Any additional details about the failure.
  final Object? details;
}
