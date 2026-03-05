import 'dart:convert';

import 'package:design_system/design_system.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/healthy_living_auth.dart';
import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:storage/storage.dart';

@Injectable()
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository _authRepository;
  final SessionRepository _sessionRepository;
  final KeyValueStorage _keyValueStorage;
  final AnalyticsService _analytics;
  final AuthAnalytics _authAnalytics;
  final PurchaseUserService _purchaseUserService;

  SignInBloc({
    required AuthRepository authRepository,
    required SessionRepository sessionRepository,
    required KeyValueStorage keyValueStorage,
    required AnalyticsService analytics,
    required AuthAnalytics authAnalytics,
    required PurchaseUserService purchaseUserService,
  }) : _authRepository = authRepository,
       _keyValueStorage = keyValueStorage,
       _sessionRepository = sessionRepository,
       _analytics = analytics,
       _authAnalytics = authAnalytics,
       _purchaseUserService = purchaseUserService,
       super(
         SignInState(email: '', password: '', isSignInButtonDisabled: true),
       ) {
    on<OnEmailFocusChanged>(_onEmailFocusChanged);
    on<OnPasswordFocusChanged>(_onPasswordFocusChanged);
    on<SignInButtonPressed>(_onSignInButtonPressed);
    on<OnTextChange>(_onTextChanged);
  }

  void _onEmailFocusChanged(
    OnEmailFocusChanged event,
    Emitter<SignInState> emit,
  ) {
    _updateForm(emit: emit, email: event.value);
  }

  void _onPasswordFocusChanged(
    OnPasswordFocusChanged event,
    Emitter<SignInState> emit,
  ) {
    _updateForm(emit: emit, password: event.value);
  }

  void _updateForm({
    required Emitter<SignInState> emit,
    String? email,
    String? password,
  }) {
    final newEmail = email?.trim() ?? state.email;
    final newPassword = password?.trim() ?? state.password ?? "";

    bool isEmailValid = newEmail.isValidValue && (newEmail ?? "").isValidEmail;
    bool isPasswordValid = newPassword.isValidValue;
    emit(
      state.copyWith(
        status: AuthScreenStatus.initial,
        email: newEmail,
        password: newPassword,
        emailTextInputState:
            isEmailValid
                ? DSTextInputState.defaultState
                : DSTextInputState.error,
        passwordTextInputState:
            isPasswordValid
                ? DSTextInputState.defaultState
                : DSTextInputState.error,
      ),
    );
  }

  Future<void> _onSignInButtonPressed(
    SignInButtonPressed event,
    Emitter<SignInState> emit,
  ) async {
    try {
      emit(state.copyWith(status: AuthScreenStatus.loading));

      /// GA4 event (Login)
      await _authAnalytics.logLogin(
        method: StringConstants.email,
      );

      final signInResponse = await _authRepository.signInWithEmail(
        request: SignInRequestModel(
          email: event.email,
          password: event.password,
        ),
      );
      final accessToken = signInResponse.responseHeaders["access-token"]?[0];
      final refreshToken = signInResponse.responseHeaders["refresh-token"]?[0];
      if (signInResponse.isSuccess &&
          signInResponse.data != null &&
          accessToken.isValidValue &&
          refreshToken.isValidValue) {
        await _sessionRepository.saveAccessToken(accessToken!);
        await _sessionRepository.saveRefreshToken(refreshToken!);

        final userData = signInResponse.data!.userData;
        if (userData != null) {
          /// logs GA4 for user
          await _analytics.setUserId(
            userData.email.isValidValue ? userData.email : userData.firstName,
          );

          final userDataJson = userData.toJson();
          final encodedUserDataJson = jsonEncode(userDataJson);
          await _keyValueStorage.setString(
            HealthyLivingSharedKeyValueConstant.user,
            encodedUserDataJson,
          );
          if (userData.revenueCat?.appUserId.isValidValue == true) {
            final revenueCatAppUserId = userData.revenueCat!.appUserId;
            await Purchases.logIn(revenueCatAppUserId);
            await _purchaseUserService.syncUserDetails(userData);
          }

          if (HealthyLivingSharedUtils.checkForPremiumUser(
            revenueCatData: userData.revenueCat,
            entitlements: userData.entitlements,
          )) {
            await _sessionRepository.saveIsPremiumUser(true);
          }
        }
        await _sessionRepository.saveIsAuthenticated(true);

        emit(state.copyWith(status: AuthScreenStatus.success));
      } else {
        emit(
          state.copyWith(
            status: AuthScreenStatus.failure,
            signInException: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } catch (e) {
      NetworkException networkException = e as NetworkException;
      emit(
        state.copyWith(
          status: AuthScreenStatus.failure,
          signInException: networkException,
        ),
      );
    }
  }

  void _onTextChanged(OnTextChange event, Emitter<SignInState> emit) {
    bool isButtonValid =
        event.password.isValidValue &&
        event.email.isValidValue &&
        event.email.isValidEmail;
    if (isButtonValid) {
      emit(
        state.copyWith(
          status: AuthScreenStatus.initial,
          isSignInButtonDisabled: false,
          emailTextInputState: DSTextInputState.defaultState,
          passwordTextInputState: DSTextInputState.defaultState,
          email: event.email,
          password: event.password,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSignInButtonDisabled: true,
          status: AuthScreenStatus.initial,
        ),
      );
    }
  }
}
