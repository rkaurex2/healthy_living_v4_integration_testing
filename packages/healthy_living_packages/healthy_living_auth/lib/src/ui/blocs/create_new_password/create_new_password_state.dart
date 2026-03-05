import 'package:design_system/design_system.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/models/password_error_type.dart';

part 'create_new_password_state.freezed.dart';

@freezed
sealed class CreateNewPasswordState with _$CreateNewPasswordState {
  const factory CreateNewPasswordState({
    required String currentPassword,
    required String password,
    required String confirmPassword,
    required bool isFormButtonDisabled,
    @Default(AuthScreenStatus.initial) AuthScreenStatus status,
    Exception? createPasswordException,

    @Default(DSTextInputState.defaultState)
    DSTextInputState newPasswordTextInputState,
    @Default(DSTextInputState.defaultState)
    DSTextInputState confirmPasswordInputState,
    @Default(DSTextInputState.defaultState)
    DSTextInputState currentPasswordInputState,

    @Default(PasswordErrorType.none) PasswordErrorType newPasswordErrorType,
    @Default(PasswordErrorType.none) PasswordErrorType currentPasswordErrorType,
    @Default(PasswordErrorType.none) confirmPasswordErrorType,
  }) = _CreateNewPasswordState;
}
