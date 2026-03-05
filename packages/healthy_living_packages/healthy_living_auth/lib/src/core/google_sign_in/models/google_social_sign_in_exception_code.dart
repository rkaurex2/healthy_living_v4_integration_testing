import 'package:google_sign_in/google_sign_in.dart';

enum GoogleSocialSignInExceptionCode {
  /// A catch-all for implemenatations that need to return a code that does not
  /// have a corresponding known code.
  unknownError,

  /// The operation was canceled by the user.
  canceled,

  /// The operation was interrupted for a reason other than being intentionally
  /// canceled by the user.
  interrupted,

  /// The client is misconfigured.
  ///
  /// The [GoogleSignInException.description] should include details about the
  /// configuration problem.
  clientConfigurationError,

  /// The underlying auth SDK is unavailable or misconfigured.
  providerConfigurationError,

  /// UI needed to be displayed, but could not be.
  ///
  /// For example, this can be returned on Android if a call tries to show UI
  /// when no Activity is available.
  uiUnavailable,

  /// An operation was attempted on a user who is not the current user, on a
  /// platform where the SDK only supports a single user being signed in at a
  /// time.
  userMismatch,

  /// Token is empty or null
  tokenMissing;
}
