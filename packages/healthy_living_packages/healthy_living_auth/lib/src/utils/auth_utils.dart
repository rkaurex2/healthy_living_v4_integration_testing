import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception_code.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show ExceptionMessage, HealthyLivingSharedUtils;
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart'
    show HealthyLivingSharedLocalizations;
import 'package:network/network.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart'
    show AuthorizationErrorCode, SignInWithAppleAuthorizationException;

class AuthUtils {
  const AuthUtils._();

  static ExceptionMessage getAppleSignInErrorMessage({
    required HealthyLivingAuthLocalizations localizations,
    required HealthyLivingSharedLocalizations healthyLivingSharedLocalizations,
    required Exception exception,
  }) {
    String errorTitle =
        healthyLivingSharedLocalizations
            .general_errorMessage_somethingWentWrong;

    if (exception is SignInWithAppleAuthorizationException) {
      switch (exception.code) {
        case AuthorizationErrorCode.canceled:
          errorTitle = localizations.auth_appleSignIn_loginWasCancelled;
          break;
        case AuthorizationErrorCode.failed:
          errorTitle = localizations.auth_appleSignIn_failedMessage;
          break;
        case AuthorizationErrorCode.invalidResponse:
          errorTitle = localizations.auth_appleSignIn_invalidResponseMessage;
          break;
        case AuthorizationErrorCode.notHandled:
          errorTitle = localizations.auth_appleSignIn_notHandledMessage;
          break;
        case AuthorizationErrorCode.notInteractive:
          errorTitle =
              healthyLivingSharedLocalizations
                  .general_errorMessage_somethingWentWrong;
          break;
        case AuthorizationErrorCode.unknown:
        case AuthorizationErrorCode.credentialExport:
        case AuthorizationErrorCode.credentialImport:
        case AuthorizationErrorCode.matchedExcludedCredential:
          errorTitle =
              healthyLivingSharedLocalizations
                  .general_errorMessage_somethingWentWrong;
          break;
      }
    } else if (exception is NetworkException) {
      final exceptionMessage = HealthyLivingSharedUtils.getErrorInfo(
        localizations: healthyLivingSharedLocalizations,
        exception: exception,
      );
      errorTitle = exceptionMessage.title;
    }

    return ExceptionMessage(title: errorTitle, message: "");
  }

  static ExceptionMessage getGoogleSignInErrorMessage({
    required HealthyLivingSharedLocalizations healthyLivingSharedLocalizations,
    required HealthyLivingAuthLocalizations healthyLivingAuthLocalizations,
    required Exception exception,
  }) {
    String errorTitle =
        healthyLivingSharedLocalizations
            .general_errorMessage_somethingWentWrong;

    if (exception is GoogleSocialSignInException) {
      errorTitle = "";
      switch (exception.code) {
        case GoogleSocialSignInExceptionCode.unknownError:
          errorTitle =
              healthyLivingSharedLocalizations
                  .general_errorMessage_somethingWentWrong;
          break;
        case GoogleSocialSignInExceptionCode.canceled:
          errorTitle =
              healthyLivingAuthLocalizations
                  .auth_googleSignIn_loginWasCancelled;
          break;
        case GoogleSocialSignInExceptionCode.interrupted:
          errorTitle =
              healthyLivingAuthLocalizations
                  .auth_googleSignIn_interruptedErrorTitle;
          break;
        case GoogleSocialSignInExceptionCode.clientConfigurationError:
        case GoogleSocialSignInExceptionCode.providerConfigurationError:
        case GoogleSocialSignInExceptionCode.userMismatch:
          errorTitle =
              healthyLivingAuthLocalizations
                  .auth_googleSignIn_signInServicesAreUnavailable;
          break;
        case GoogleSocialSignInExceptionCode.uiUnavailable:
          errorTitle =
              healthyLivingAuthLocalizations
                  .auth_googleSignIn_uiUnavailableErrorTitle;
          break;
        case GoogleSocialSignInExceptionCode.tokenMissing:
          errorTitle =
              healthyLivingAuthLocalizations
                  .auth_googleSignIn_tokenMissingErrorTitle;
          break;
      }
    } else if (exception is NetworkException) {
      final exceptionMessage = HealthyLivingSharedUtils.getErrorInfo(
        localizations: healthyLivingSharedLocalizations,
        exception: exception,
      );
      errorTitle = exceptionMessage.title;
    }

    return ExceptionMessage(title: errorTitle, message: "");
  }
}
