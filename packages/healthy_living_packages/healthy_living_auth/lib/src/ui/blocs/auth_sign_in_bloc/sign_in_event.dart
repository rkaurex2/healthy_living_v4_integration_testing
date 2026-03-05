import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_event.freezed.dart';

@freezed
sealed class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInButtonPressed({
    required String email,
    required String password,
  }) = SignInButtonPressed;
  const factory SignInEvent.onTextChange({
    required String email,
    required String password,
  }) = OnTextChange;
  const factory SignInEvent.emailFocusChanged(String value) =
      OnEmailFocusChanged;

  const factory SignInEvent.passwordFocusChanged(String value) =
      OnPasswordFocusChanged;
}
