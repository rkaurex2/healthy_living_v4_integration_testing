import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_auth/src/ui/models/auth_mode.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart' show AuthProvider;

part 'auth_social_login_event.freezed.dart';

@freezed
sealed class AuthSocialLoginEvent with _$AuthSocialLoginEvent {
  const factory AuthSocialLoginEvent.authScreenInitialized({
    required AuthMode authMode,
  }) = AuthScreenInitialized;
  const factory AuthSocialLoginEvent.authModeToggled() = AuthModeToggled;
  const factory AuthSocialLoginEvent.appleSignInPressed({
    required AuthProvider authProvider,
  }) = AppleSignInPressed;
  const factory AuthSocialLoginEvent.googleSignInPressed({
    required AuthProvider authProvider,
  }) = GoogleSignInPressed;
  const factory AuthSocialLoginEvent.socialTokenReceived({
    required String token,
    required String provider,
  }) = SocialTokenReceived;
}
