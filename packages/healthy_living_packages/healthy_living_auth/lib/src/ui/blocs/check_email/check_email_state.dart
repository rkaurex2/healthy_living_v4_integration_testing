import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_response_model.dart';

part 'check_email_state.freezed.dart';

@freezed
sealed class CheckEmailState with _$CheckEmailState {
  const factory CheckEmailState.initial() = CheckEmailInitial;

  const factory CheckEmailState.loading() = CheckEmailLoading;

  const factory CheckEmailState.success({
    required ForgotPasswordResponseModel? successData,
    required String email,
  }) = CheckEmailSuccess;

  const factory CheckEmailState.failure(Exception? exception) =
      CheckEmailFailure;
}
