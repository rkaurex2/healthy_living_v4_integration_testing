import 'package:google_sign_in/google_sign_in.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception_code.dart';

extension GoogleSignInExceptionCodeExtension on GoogleSignInExceptionCode {
  GoogleSocialSignInExceptionCode toGoogleSocialSignInExceptionCode() {
    switch (this) {
      case GoogleSignInExceptionCode.unknownError:
        return GoogleSocialSignInExceptionCode.unknownError;
      case GoogleSignInExceptionCode.canceled:
        return GoogleSocialSignInExceptionCode.canceled;
      case GoogleSignInExceptionCode.interrupted:
        return GoogleSocialSignInExceptionCode.interrupted;
      case GoogleSignInExceptionCode.clientConfigurationError:
        return GoogleSocialSignInExceptionCode.clientConfigurationError;
      case GoogleSignInExceptionCode.providerConfigurationError:
        return GoogleSocialSignInExceptionCode.providerConfigurationError;
      case GoogleSignInExceptionCode.uiUnavailable:
        return GoogleSocialSignInExceptionCode.uiUnavailable;
      case GoogleSignInExceptionCode.userMismatch:
        return GoogleSocialSignInExceptionCode.userMismatch;
    }
  }
}
