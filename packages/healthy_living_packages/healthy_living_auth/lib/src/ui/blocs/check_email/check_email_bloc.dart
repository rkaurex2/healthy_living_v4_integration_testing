import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_state.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class CheckEmailBloc
    extends Bloc<CheckEmailEvent, CheckEmailState> {
  final AuthRepository _authRepository;

  CheckEmailBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const CheckEmailState.initial()) {
    on<ResetLinkButtonTapped>(_onResetLinkButtonTapped);
  }

  Future<void> _onResetLinkButtonTapped(
      ResetLinkButtonTapped event,
      Emitter<CheckEmailState> emit,
      ) async {
    try {
      emit(const CheckEmailState.loading());
      final response = await _authRepository.requestResetPassword(
        request: ForgotPasswordRequestModel(email: event.email),
      );

      if (response.isSuccess && response.data != null) {
        emit(CheckEmailState.success(successData: response.data, email: event.email));
      } else {
        emit(
          CheckEmailState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(CheckEmailState.failure(exception));
    }
  }
}
