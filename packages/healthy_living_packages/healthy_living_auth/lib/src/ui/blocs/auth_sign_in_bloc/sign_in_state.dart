import 'package:design_system/design_system.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
part 'sign_in_state.freezed.dart';

@freezed
sealed class SignInState with _$SignInState {
  const factory SignInState({
    @Default(AuthScreenStatus.initial) AuthScreenStatus status,
    Exception? signInException,
    String? email,
    String? password,
    bool? isSignInButtonDisabled,
    @Default(DSTextInputState.defaultState)
    DSTextInputState emailTextInputState,
    @Default(DSTextInputState.defaultState)
    DSTextInputState passwordTextInputState,
  }) = _AuthSignInState;
}
