import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_new_password_event.freezed.dart';

@freezed
sealed class CreateNewPasswordEvent with _$CreateNewPasswordEvent {
  // Input changes
  const factory CreateNewPasswordEvent.signupInitialized() = CreateNewPasswordInitialized;

  const factory CreateNewPasswordEvent.currentPasswordFocusChanged(String value) = CurrentPasswordFocusChanged;

  const factory CreateNewPasswordEvent.newPasswordFocusChanged(String value) = NewPasswordFocusChanged;

  const factory CreateNewPasswordEvent.confirmPasswordFocusChanged(String value) = ConfirmPasswordFocusChanged;


  const factory CreateNewPasswordEvent.saveNewPasswordButton({
    required String password,
    required String confirmPassword,
    required String code,
  }) = SaveNewPasswordButtonTapped;

  const factory CreateNewPasswordEvent.onTextChange({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) = OnTextChange;


  const factory CreateNewPasswordEvent.changeNewPasswordButton({
    required String password,
    required String confirmPassword,
    required String currentPassword,
  }) = ChangeNewPasswordButtonTapped;

}
