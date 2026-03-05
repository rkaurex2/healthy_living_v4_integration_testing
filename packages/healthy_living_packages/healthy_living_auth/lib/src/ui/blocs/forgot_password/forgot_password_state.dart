import 'package:design_system/design_system.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_response_model.dart';

part 'forgot_password_state.freezed.dart';

@freezed
sealed class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = ForgotPasswordStateInitial;

  const factory ForgotPasswordState.form({
    required String email,
    required bool? isFormValid,
    DSTextInputState? emailState,
  }) = ForgotPasswordFormState;

  const factory ForgotPasswordState.loading() = ForgotPasswordLoading;

  const factory ForgotPasswordState.success({
    required ForgotPasswordResponseModel? successData,
    required String email,
  }) = ForgotPasswordSuccess;

  const factory ForgotPasswordState.failure(Exception? exception) =
      ForgotPasswordFailure;
}
