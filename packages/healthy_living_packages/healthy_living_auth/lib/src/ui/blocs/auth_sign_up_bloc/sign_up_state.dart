import 'package:design_system/design_system.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/models/email_error_type.dart';
import 'package:healthy_living_auth/src/ui/models/password_error_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'sign_up_state.freezed.dart';

@freezed
sealed class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String zipCode,
    required String country,
    @Default(AuthScreenStatus.initial) AuthScreenStatus status,
    Exception? signUpException,
    @Default(false) bool subscribeNewsletter,
    bool? isFormButtonDisabled,
    @Default(DSTextInputState.defaultState)
    DSTextInputState emailTextInputState,
    @Default(DSTextInputState.defaultState)
    DSTextInputState passwordTextInputState,
    @Default(DSTextInputState.defaultState)
    DSTextInputState firstNameTextInputState,
    @Default(DSTextInputState.defaultState)
    DSTextInputState lastNameTextInputState,
    @Default(DSTextInputState.defaultState)
    DSTextInputState zipCodeTextInputState,
    UserDataModel? userData,
    @Default(EmailErrorType.none) EmailErrorType emailErrorType,
    @Default(PasswordErrorType.none) PasswordErrorType passwordErrorType,
  }) = _SignUpState;
}
