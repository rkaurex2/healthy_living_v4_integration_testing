import 'package:design_system/design_system.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final AuthRepository _authRepository;

  ForgotPasswordBloc({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(const ForgotPasswordState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<OnTextChange>(_onTextChanged);
    on<ResetLinkButton>(_onResetLinkButton);
  }

  void _onEmailChanged(EmailChanged event, Emitter<ForgotPasswordState> emit) {
    _updateForm(emit: emit, email: event.value);
  }

  void _updateForm({
    required Emitter<ForgotPasswordState> emit,
    String? email,
  }) {
    final current = state;
    final newEmail =
        email?.trim() ??
        (current is ForgotPasswordFormState ? current.email : '');
    final isFormValid = newEmail.isValidEmail;

    emit(
      ForgotPasswordState.form(
        email: newEmail,
        isFormValid: isFormValid,
        emailState: _getFieldState(
          hasChanged: email != null,
          isValid: newEmail.isValidEmail,
          currentState:
              current is ForgotPasswordFormState
                  ? current.emailState
                  : DSTextInputState.defaultState,
        ),
      ),
    );
  }

  void _onTextChanged(OnTextChange event, Emitter<ForgotPasswordState> emit) {
    bool isButtonValid = event.email.isValidValue && event.email.isValidEmail;
    emit(
      ForgotPasswordState.form(
        email: event.email,
        isFormValid: isButtonValid,
        emailState: DSTextInputState.defaultState,
      ),
    );
  }

  DSTextInputState _getFieldState({
    required bool hasChanged,
    required bool isValid,
    required DSTextInputState? currentState,
  }) {
    if (!hasChanged) return currentState ?? DSTextInputState.defaultState;
    return isValid ? DSTextInputState.defaultState : DSTextInputState.error;
  }

  Future<void> _onResetLinkButton(
    ResetLinkButton event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    try {
      emit(const ForgotPasswordState.loading());
      final response = await _authRepository.requestResetPassword(
        request: ForgotPasswordRequestModel(email: event.email),
      );

      if (response.isSuccess && response.data != null) {
        emit(
          ForgotPasswordState.success(
            successData: response.data,
            email: event.email,
          ),
        );
      } else {
        emit(
          ForgotPasswordState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(ForgotPasswordState.failure(exception));
    }
  }
}
