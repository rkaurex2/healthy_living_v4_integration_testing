import 'package:design_system/design_system.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/domain/models/change_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/reset_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/models/password_error_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:storage/storage.dart';

@Injectable()
class CreateNewPasswordBloc
    extends Bloc<CreateNewPasswordEvent, CreateNewPasswordState> {
  final AuthRepository _authRepository;
  final SessionRepository _sessionRepository;

  bool _isChangePasswordMode = false;

  bool _isChangePassword() => _isChangePasswordMode;

  CreateNewPasswordBloc({
    required AuthRepository authRepository,
    required SessionRepository sessionRepository,
    required UserDataRepository userDataRepository,
    required KeyValueStorage keyValueStorage,
  }) : _authRepository = authRepository,
       _sessionRepository = sessionRepository,
       super(
         const CreateNewPasswordState(
           currentPassword: '',
           password: '',
           confirmPassword: '',
           isFormButtonDisabled: true,
         ),
       ) {
    on<OnTextChange>(_onTextChanged);
    on<SaveNewPasswordButtonTapped>(_onSaveNewPasswordButtonTapped);
    on<NewPasswordFocusChanged>(_onNewPasswordFocusChanged);
    on<ConfirmPasswordFocusChanged>(_onConfirmPasswordFocusChanged);
    on<CurrentPasswordFocusChanged>(_onCurrentPasswordFocusChanged);
    on<ChangeNewPasswordButtonTapped>(_onSaveChangePasswordButtonTapped);
  }

  void _onTextChanged(
    OnTextChange event,
    Emitter<CreateNewPasswordState> emit,
  ) {
    final filledForChange =
        event.currentPassword.isValidValue &&
        event.newPassword.isValidValue &&
        event.confirmPassword.isValidValue;

    final filledForReset =
        event.newPassword.isValidValue && event.confirmPassword.isValidValue;

    final isFormValid = _isChangePassword() ? filledForChange : filledForReset;

    emit(
      state.copyWith(
        status: AuthScreenStatus.initial,
        password: event.newPassword.trim(),
        currentPassword: event.currentPassword.trim(),
        confirmPassword: event.confirmPassword.trim(),
        isFormButtonDisabled: !isFormValid,
      ),
    );
  }

  void _updateForm({
    required Emitter<CreateNewPasswordState> emit,
    String? password,
    String? confirmPassword,
    String? currentPassword,
  }) {
    final newPassword = password?.trim() ?? state.password;
    final newConfirmPassword = confirmPassword?.trim() ?? state.confirmPassword;
    final newCurrentPassword = currentPassword?.trim() ?? state.currentPassword;

    DSTextInputState passwordState = state.newPasswordTextInputState;
    PasswordErrorType passwordErrorType = state.newPasswordErrorType;
    DSTextInputState confirmPasswordState = state.confirmPasswordInputState;
    PasswordErrorType confirmPasswordErrorType = state.confirmPasswordErrorType;
    DSTextInputState currentPasswordState = state.currentPasswordInputState;
    PasswordErrorType currentPasswordErrorType = state.currentPasswordErrorType;

    if (password != null) {
      if (!newPassword.isValidValue) {
        passwordState = DSTextInputState.error;
        passwordErrorType = PasswordErrorType.required;
      } else if (newPassword.length < IntegerConstants.minPasswordLength) {
        passwordState = DSTextInputState.error;
        passwordErrorType = PasswordErrorType.invalid;
      } else {
        passwordState = DSTextInputState.defaultState;
        passwordErrorType = PasswordErrorType.none;
      }
      if (newConfirmPassword.isValidValue) {
        if (newConfirmPassword != newPassword) {
          confirmPasswordState = DSTextInputState.error;
          confirmPasswordErrorType = PasswordErrorType.invalid;
        } else {
          confirmPasswordState = DSTextInputState.defaultState;
          confirmPasswordErrorType = PasswordErrorType.none;
        }
      }
    }
    if (confirmPassword != null) {
      if (!newConfirmPassword.isValidValue) {
        confirmPasswordState = DSTextInputState.error;
        confirmPasswordErrorType = PasswordErrorType.required;
      } else if (newConfirmPassword != newPassword) {
        confirmPasswordState = DSTextInputState.error;
        confirmPasswordErrorType = PasswordErrorType.invalid;
      } else {
        confirmPasswordState = DSTextInputState.defaultState;
        confirmPasswordErrorType = PasswordErrorType.none;
      }
    }
    if (currentPassword != null) {
      if (!newCurrentPassword.isValidValue) {
        currentPasswordState = DSTextInputState.error;
        currentPasswordErrorType = PasswordErrorType.required;
      } else {
        currentPasswordState = DSTextInputState.defaultState;
        currentPasswordErrorType = PasswordErrorType.none;
      }
    }

    final filledForChange =
        newCurrentPassword.isValidValue &&
        newPassword.isValidValue &&
        newConfirmPassword.isValidValue;

    final filledForReset =
        newPassword.isValidValue && newConfirmPassword.isValidValue;
    final isFormValid = _isChangePassword() ? filledForChange : filledForReset;
    emit(
      state.copyWith(
        password: newPassword,
        currentPassword: newCurrentPassword,
        confirmPassword: newConfirmPassword,
        newPasswordTextInputState: passwordState,
        newPasswordErrorType: passwordErrorType,
        confirmPasswordInputState: confirmPasswordState,
        confirmPasswordErrorType: confirmPasswordErrorType,
        currentPasswordInputState: currentPasswordState,
        currentPasswordErrorType: currentPasswordErrorType,
        isFormButtonDisabled: !isFormValid,
        status: AuthScreenStatus.initial,
      ),
    );
  }

  bool _isFormValid({
    required String newPassword,
    required String confirmPassword,
    required String currentPassword,
    required bool isChangePassword,
  }) {
    final baseValid =
        newPassword.isValidValue &&
        confirmPassword.isValidValue &&
        newPassword.length >= IntegerConstants.minPasswordLength &&
        confirmPassword == newPassword;

    if (!isChangePassword) return baseValid;

    return baseValid && currentPassword.isValidValue;
  }

  Future<void> _onSaveNewPasswordButtonTapped(
    SaveNewPasswordButtonTapped event,
    Emitter<CreateNewPasswordState> emit,
  ) async {
    _updateForm(
      emit: emit,
      password: event.password,
      confirmPassword: event.confirmPassword,
      currentPassword: "",
    );
    final isValid = _isFormValid(
      newPassword: event.password.trim(),
      confirmPassword: event.confirmPassword.trim(),
      currentPassword: "",
      isChangePassword: false,
    );
    if (!isValid) return;

    try {
      emit(state.copyWith(status: AuthScreenStatus.loading));
      final response = await _authRepository.resetPassword(
        request: ResetPasswordRequestModel(
          newPassword: event.password,
          code: event.code,
        ),
      );

      if (response.isSuccess && response.data != null) {
        await UserSessionManager.instance.fireAndWait(UserSessionEventType.resetPasswordCompleted);
        emit(state.copyWith(status: AuthScreenStatus.changedPasswordSuccess));
      } else {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            createPasswordException: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      NetworkException networkException = exception as NetworkException;
      emit(
        state.copyWith(
          status: AuthScreenStatus.failure,
          createPasswordException: networkException,
        ),
      );
    }
  }

  void setChangePasswordMode(bool isChangePasswordMode) {
    _isChangePasswordMode = isChangePasswordMode;
  }

  void _onNewPasswordFocusChanged(
    NewPasswordFocusChanged event,
    Emitter<CreateNewPasswordState> emit,
  ) {
    emit(
      state.copyWith(
        newPasswordTextInputState: DSTextInputState.defaultState,
        newPasswordErrorType: PasswordErrorType.none,
      ),
    );
  }

  void _onCurrentPasswordFocusChanged(
    CurrentPasswordFocusChanged event,
    Emitter<CreateNewPasswordState> emit,
  ) {
    emit(
      state.copyWith(
        currentPasswordInputState: DSTextInputState.defaultState,
        currentPasswordErrorType: PasswordErrorType.none,
      ),
    );
  }

  void _onConfirmPasswordFocusChanged(
    ConfirmPasswordFocusChanged event,
    Emitter<CreateNewPasswordState> emit,
  ) {
    emit(
      state.copyWith(
        confirmPasswordInputState: DSTextInputState.defaultState,
        confirmPasswordErrorType: PasswordErrorType.none,
      ),
    );
  }

  Future<void> _onSaveChangePasswordButtonTapped(
    ChangeNewPasswordButtonTapped event,
    Emitter<CreateNewPasswordState> emit,
  ) async {
    _updateForm(
      emit: emit,
      password: event.password,
      confirmPassword: event.confirmPassword,
      currentPassword: event.currentPassword,
    );
    final isValid = _isFormValid(
      newPassword: event.password.trim(),
      confirmPassword: event.confirmPassword.trim(),
      currentPassword: event.currentPassword.trim(),
      isChangePassword: false,
    );
    if (!isValid) return;

    try {
      emit(state.copyWith(status: AuthScreenStatus.loading));
      final response = await _authRepository.changePassword(
        request: ChangePasswordRequestModel(
          newPassword: event.password,
          currentPassword: event.currentPassword,
          confirmPassword: event.confirmPassword,
        ),
      );
      final accessToken = response.responseHeaders["access-token"]?[0];
      final refreshToken = response.responseHeaders["refresh-token"]?[0];
      if (response.isSuccess &&
          response.data != null &&
          accessToken.isValidValue &&
          refreshToken.isValidValue) {
        await _sessionRepository.saveAccessToken(accessToken!);
        await _sessionRepository.saveRefreshToken(refreshToken!);
        emit(state.copyWith(status: AuthScreenStatus.changedPasswordSuccess));
      } else {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            createPasswordException: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(
        state.copyWith(
          status: AuthScreenStatus.failure,
          createPasswordException: exception,
        ),
      );
    }
  }
}
