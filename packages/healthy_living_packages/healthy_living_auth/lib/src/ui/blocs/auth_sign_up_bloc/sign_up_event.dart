import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

@freezed
sealed class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailFocusChanged(String value) =
      UserEmailFocusChanged;

  const factory SignUpEvent.passwordFocusChanged(String value) =
      PasswordFocusChanged;

  const factory SignUpEvent.firstNameFocusChanged(String value) =
      FirstNameFocusChanged;

  const factory SignUpEvent.lastNameFocusChanged(String value) =
      LastNameFocusChanged;

  const factory SignUpEvent.zipCodeFocusChanged(String value) =
      ZipCodeFocusChanged;

  const factory SignUpEvent.countryChanged(String value) = UserCountryChanged;

  const factory SignUpEvent.subscribeNewsletterToggled() =
      SubscribeNewsletterToggled;

  const factory SignUpEvent.toggleLoginMode() = ToggleLoginMode;

  const factory SignUpEvent.signUpButtonPressed({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String zipCode,
    required String country,
    required bool isNewsletterSubscribed,
  }) = SignUpButtonPressed;

  const factory SignUpEvent.onTextChange({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String zipCode,
  }) = OnTextChange;

  const factory SignUpEvent.signupInitialized() = SignupInitialized;

  const factory SignUpEvent.saveButtonPressed({
    required String firstName,
    required String lastName,
    required String zipCode,
    required String country,
  }) = SaveButtonPressed;

}
