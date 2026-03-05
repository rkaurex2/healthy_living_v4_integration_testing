import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_event.freezed.dart';

@freezed
sealed class ForgotPasswordEvent with _$ForgotPasswordEvent {
  // Input changes

  const factory ForgotPasswordEvent.emailChanged(String value) = EmailChanged;

  const factory ForgotPasswordEvent.onTextChange({
    required String email,
  }) = OnTextChange;

  const factory ForgotPasswordEvent.resetLinkButtonEvent({
    required String email,
  }) = ResetLinkButton;
}
