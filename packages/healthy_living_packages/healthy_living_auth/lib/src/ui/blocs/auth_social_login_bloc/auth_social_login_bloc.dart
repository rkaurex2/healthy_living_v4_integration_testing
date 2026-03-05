import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/healthy_living_auth.dart';
import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception_code.dart';
import 'package:healthy_living_auth/src/data/models/social_sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_mode.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:storage/storage.dart';

@Injectable()
class AuthSocialLoginBloc
    extends Bloc<AuthSocialLoginEvent, AuthSocialLoginState> {
  final AuthRepository _authRepository;
  final KeyValueStorage _keyValueStorage;
  final SessionRepository _sessionRepository;
  final NetworkConnection _networkConnection;
  final AnalyticsService _analytics;
  final AuthAnalytics _authAnalytics;
  final PurchaseUserService _purchaseUserService;

  AuthSocialLoginBloc({
    required AuthRepository authRepository,
    required KeyValueStorage keyValueStorage,
    required SessionRepository sessionRepository,
    required NetworkConnection networkConnection,
    required AnalyticsService analytics,
    required AuthAnalytics authAnalytics,
    required PurchaseUserService purchaseUserService,
  }) : _authRepository = authRepository,
       _keyValueStorage = keyValueStorage,
       _sessionRepository = sessionRepository,
       _networkConnection = networkConnection,
       _analytics = analytics,
       _authAnalytics = authAnalytics,
       _purchaseUserService = purchaseUserService,
       super(AuthSocialLoginState()) {
    on<AuthScreenInitialized>(_onAuthScreenInitialized);
    on<AuthModeToggled>(_onAuthModeToggled);
    on<AppleSignInPressed>(_onAppleSignInPressed);
    on<GoogleSignInPressed>(_onGoogleSignInPressed);
    on<SocialTokenReceived>(_onSocialTokenReceived);
  }

  bool get isSignInMode => getCurrentAuthMode() == AuthMode.signIn;

  void _onAuthScreenInitialized(
    AuthScreenInitialized event,
    Emitter<AuthSocialLoginState> emit,
  ) {
    emit(AuthSocialLoginState(mode: event.authMode));
  }

  void _onAuthModeToggled(
    AuthModeToggled event,
    Emitter<AuthSocialLoginState> emit,
  ) {
    final currentMode = getCurrentAuthMode();

    final newMode =
        currentMode == AuthMode.signIn ? AuthMode.signUp : AuthMode.signIn;

    emit(AuthSocialLoginState(mode: newMode));
  }

  void _onAppleSignInPressed(
    AppleSignInPressed event,
    Emitter<AuthSocialLoginState> emit,
  ) async {
    try {
      if (_networkConnection.isConnected == false) {
        emit(
          AuthSocialLoginState(
            mode: state.mode,
            authProvider: event.authProvider,
            platformSignInException: NetworkConnectionException(
              isTimeout: false,
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
        return;
      }

      final response = await _authRepository.signInWithApple();
      if (response.isSuccess) {
        emit(
          AuthSocialLoginState(
            mode: state.mode,
            socialAuthToken: response.token!,
            authProvider: event.authProvider,
          ),
        );
      } else {
        emit(
          AuthSocialLoginState(
            mode: state.mode,
            authProvider: event.authProvider,
            platformSignInException: SignInWithAppleAuthorizationException(
              code: AuthorizationErrorCode.unknown,
              message: "", // Message is handled on UI
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(
        AuthSocialLoginState(
          mode: state.mode,
          authProvider: event.authProvider,
          platformSignInException: exception,
        ),
      );
    }
  }

  void _onGoogleSignInPressed(
    GoogleSignInPressed event,
    Emitter<AuthSocialLoginState> emit,
  ) async {
    try {
      if (_networkConnection.isConnected == false) {
        emit(
          AuthSocialLoginState(
            mode: state.mode,
            authProvider: event.authProvider,
            platformSignInException: NetworkConnectionException(
              isTimeout: false,
              message: "", // Message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
        return;
      }

      final response = await _authRepository.signInWithGoogle();
      if (response.idToken.isValidValue) {
        emit(
          AuthSocialLoginState(
            mode: state.mode,
            socialAuthToken: response.idToken!,
            authProvider: event.authProvider,
          ),
        );
      } else {
        emit(
          AuthSocialLoginState(
            mode: state.mode,
            status: AuthScreenStatus.failure,
            googleSocialSignInException: GoogleSocialSignInException(
              code: GoogleSocialSignInExceptionCode.tokenMissing,
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(
        AuthSocialLoginState(
          mode: state.mode,
          status: AuthScreenStatus.failure,
          googleSocialSignInException: exception,
        ),
      );
    }
  }

  void _onSocialTokenReceived(
    SocialTokenReceived event,
    Emitter<AuthSocialLoginState> emit,
  ) async {
    try {
      emit(state.copyWith(status: AuthScreenStatus.loading));

      /// GA4 event (SignUp)
      await _authAnalytics.logSignUp(method: event.provider);

      final socialSignInResponse = await _authRepository.socialSignIn(
        request: SocialSignInRequestModel(
          token: event.token,
          provider: event.provider,
        ),
      );

      final accessToken =
          socialSignInResponse.responseHeaders["access-token"]?[0];
      final refreshToken =
          socialSignInResponse.responseHeaders["refresh-token"]?[0];
      if (socialSignInResponse.isSuccess &&
          socialSignInResponse.data != null &&
          accessToken.isValidValue &&
          refreshToken.isValidValue) {
        //Save access-token, refresh-token and expire at in secure storage
        await _sessionRepository.saveAccessToken(accessToken!);
        await _sessionRepository.saveRefreshToken(refreshToken!);

        //Save user object in key-value storage
        final userData = socialSignInResponse.data!.userData;
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
        await _keyValueStorage.setString(
          HealthyLivingSharedKeyValueConstant.authProvider,
          event.provider,
        );
        await _sessionRepository.saveIsAuthenticated(true);

        emit(
          AuthSocialLoginState(
            mode: state.mode,
            status: AuthScreenStatus.success,
            isInitialLogin: userData?.initialLogin,
            email: userData?.email,
          ),
        );
      } else {
        emit(
          AuthSocialLoginState(
            mode: state.mode,
            status: AuthScreenStatus.failure,
            socialSignInException: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(
        AuthSocialLoginState(
          mode: state.mode,
          status: AuthScreenStatus.failure,
          socialSignInException: exception,
        ),
      );
    }
  }

  AuthMode getCurrentAuthMode() {
    return state.mode;
  }
}
