import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_auth/src/ui/models/auth_mode.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show AuthProvider;

part 'auth_social_login_state.freezed.dart';

@freezed
sealed class AuthSocialLoginState with _$AuthSocialLoginState {
  const factory AuthSocialLoginState({
    @Default(AuthMode.signUp) AuthMode mode,
    AuthProvider? authProvider,
    @Default(AuthScreenStatus.initial) AuthScreenStatus status,
    // Known production quirk: Google offline path emits via platformSignInException field.
    // Tests must match actual behavior — do not change the emit logic, only the field name.
    Exception? platformSignInException,
    Exception? googleSocialSignInException,
    Exception? socialSignInException,
    String? socialAuthToken,
    bool? isInitialLogin,
    String? email,
  }) = _AuthSocialLoginState;
}
