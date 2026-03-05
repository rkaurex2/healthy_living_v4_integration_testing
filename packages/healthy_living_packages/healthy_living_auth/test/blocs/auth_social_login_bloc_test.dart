import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:healthy_living_auth/src/data/models/sign_in_social_result.dart';
import 'package:healthy_living_auth/src/data/models/sign_in_social_error.dart';
import 'package:healthy_living_auth/src/data/models/social_sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/google_sign_in/google_sign_in_response_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_response_model.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_mode.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception_code.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Fake NetworkConnection that bypasses the singleton pattern.
// NetworkConnection uses a private constructor + static instance guard, so
// we create a minimal fake that satisfies the type without going through the
// factory.
// ---------------------------------------------------------------------------
class FakeNetworkConnection implements NetworkConnection {
  final bool _connected;
  FakeNetworkConnection({required bool connected}) : _connected = connected;

  @override
  bool get isConnected => _connected;

  @override
  Future<void> init() async {}

  @override
  void dispose() {}
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
NetworkResponse<SignInResponseModel?> _socialSignInSuccess({
  String accessToken = 'test-access-token',
  String refreshToken = 'test-refresh-token',
  UserDataModel? userData,
}) {
  return NetworkResponse<SignInResponseModel?>(
    data: SignInResponseModel(userData: userData),
    statusCode: 200,
    responseHeaders: {
      'access-token': [accessToken],
      'refresh-token': [refreshToken],
    },
  );
}

NetworkResponse<SignInResponseModel?> _socialSignInFailure() {
  return const NetworkResponse<SignInResponseModel?>(
    data: null,
    statusCode: 401,
    responseHeaders: {},
  );
}

AuthSocialLoginBloc _buildBloc({
  required MockAuthRepository authRepository,
  required MockKeyValueStorage keyValueStorage,
  required MockSessionRepository sessionRepository,
  required MockAnalyticsService analytics,
  required MockAuthAnalytics authAnalytics,
  required MockPurchaseUserService purchaseUserService,
  bool networkConnected = true,
}) {
  return AuthSocialLoginBloc(
    authRepository: authRepository,
    keyValueStorage: keyValueStorage,
    sessionRepository: sessionRepository,
    networkConnection: FakeNetworkConnection(connected: networkConnected),
    analytics: analytics,
    authAnalytics: authAnalytics,
    purchaseUserService: purchaseUserService,
  );
}

void main() {
  late MockAuthRepository mockAuthRepository;
  late MockKeyValueStorage mockKeyValueStorage;
  late MockSessionRepository mockSessionRepository;
  late MockAnalyticsService mockAnalyticsService;
  late MockAuthAnalytics mockAuthAnalytics;
  late MockPurchaseUserService mockPurchaseUserService;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockKeyValueStorage = MockKeyValueStorage();
    mockSessionRepository = MockSessionRepository();
    mockAnalyticsService = MockAnalyticsService();
    mockAuthAnalytics = MockAuthAnalytics();
    mockPurchaseUserService = MockPurchaseUserService();

    // Default stubs — prevent UnimplementedError in success paths
    when(mockSessionRepository.saveAccessToken(any)).thenAnswer((_) async {});
    when(mockSessionRepository.saveRefreshToken(any)).thenAnswer((_) async {});
    when(mockSessionRepository.saveIsAuthenticated(any))
        .thenAnswer((_) async {});
    when(mockSessionRepository.saveIsPremiumUser(any))
        .thenAnswer((_) async {});
    when(mockKeyValueStorage.setString(any, any))
        .thenAnswer((_) async => true);
    when(mockAnalyticsService.setUserId(any)).thenAnswer((_) async {});
    when(mockAuthAnalytics.logSignUp(method: anyNamed('method')))
        .thenAnswer((_) async {});
    when(mockPurchaseUserService.syncUserDetails(any))
        .thenAnswer((_) async {});
  });

  group('AuthSocialLoginBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state has signUp mode and initial status', () {
      final bloc = _buildBloc(
        authRepository: mockAuthRepository,
        keyValueStorage: mockKeyValueStorage,
        sessionRepository: mockSessionRepository,
        analytics: mockAnalyticsService,
        authAnalytics: mockAuthAnalytics,
        purchaseUserService: mockPurchaseUserService,
      );
      expect(bloc.state.mode, equals(AuthMode.signUp));
      expect(bloc.state.status, equals(AuthScreenStatus.initial));
      expect(bloc.state.socialAuthToken, isNull);
      expect(bloc.state.platformSignInException, isNull);
      expect(bloc.state.googleSocialSignInException, isNull);
      expect(bloc.state.socialSignInException, isNull);
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // AuthScreenInitialized
    // -----------------------------------------------------------------------
    group('AuthScreenInitialized', () {
      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits state with signIn mode when initialized with signIn',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.authScreenInitialized(
            authMode: AuthMode.signIn,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.mode, 'mode', AuthMode.signIn),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits state with signUp mode when initialized with signUp',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.authScreenInitialized(
            authMode: AuthMode.signUp,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.mode, 'mode', AuthMode.signUp),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // AuthModeToggled
    // -----------------------------------------------------------------------
    group('AuthModeToggled', () {
      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'toggles from default signUp to signIn',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        act: (bloc) => bloc.add(const AuthSocialLoginEvent.authModeToggled()),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.mode, 'mode', AuthMode.signIn),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'double toggle returns to signUp',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        act: (bloc) {
          bloc.add(const AuthSocialLoginEvent.authModeToggled());
          bloc.add(const AuthSocialLoginEvent.authModeToggled());
        },
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.mode, 'mode', AuthMode.signIn),
          isA<AuthSocialLoginState>()
              .having((s) => s.mode, 'mode', AuthMode.signUp),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // AppleSignInPressed
    // -----------------------------------------------------------------------
    group('AppleSignInPressed', () {
      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits state with socialAuthToken when Apple sign-in returns success',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(mockAuthRepository.signInWithApple()).thenAnswer(
            (_) async => SignInSocialResult.success('apple-id-token'),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.appleSignInPressed(
            authProvider: AuthProvider.apple,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having(
                (s) => s.socialAuthToken,
                'socialAuthToken',
                'apple-id-token',
              )
              .having(
                (s) => s.authProvider,
                'authProvider',
                AuthProvider.apple,
              )
              .having(
                (s) => s.platformSignInException,
                'platformSignInException',
                isNull,
              ),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits state with platformSignInException when Apple sign-in returns failure',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(mockAuthRepository.signInWithApple()).thenAnswer(
            (_) async =>
                SignInSocialResult.failure(SignInSocialError.authentication),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.appleSignInPressed(
            authProvider: AuthProvider.apple,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having(
                (s) => s.platformSignInException,
                'platformSignInException',
                isA<SignInWithAppleAuthorizationException>(),
              )
              .having(
                (s) => s.socialAuthToken,
                'socialAuthToken',
                isNull,
              ),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits state with platformSignInException when Apple sign-in throws',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(mockAuthRepository.signInWithApple()).thenThrow(
            SignInWithAppleAuthorizationException(
              code: AuthorizationErrorCode.unknown,
              message: 'Authorization failed',
            ),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.appleSignInPressed(
            authProvider: AuthProvider.apple,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having(
                (s) => s.platformSignInException,
                'platformSignInException',
                isA<SignInWithAppleAuthorizationException>(),
              ),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits NetworkConnectionException when network is unavailable',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
          networkConnected: false,
        ),
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.appleSignInPressed(
            authProvider: AuthProvider.apple,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having(
                (s) => s.platformSignInException,
                'platformSignInException',
                isA<NetworkConnectionException>(),
              ),
        ],
        verify: (_) {
          verifyNever(mockAuthRepository.signInWithApple());
        },
      );
    });

    // -----------------------------------------------------------------------
    // GoogleSignInPressed
    // -----------------------------------------------------------------------
    group('GoogleSignInPressed', () {
      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits state with socialAuthToken when Google sign-in returns valid idToken',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(mockAuthRepository.signInWithGoogle()).thenAnswer(
            (_) async =>
                const GoogleSignInResponseModel(idToken: 'google-id-token'),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.googleSignInPressed(
            authProvider: AuthProvider.google,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having(
                (s) => s.socialAuthToken,
                'socialAuthToken',
                'google-id-token',
              )
              .having(
                (s) => s.authProvider,
                'authProvider',
                AuthProvider.google,
              ),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits failure with googleSocialSignInException when idToken is null',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(mockAuthRepository.signInWithGoogle()).thenAnswer(
            (_) async => const GoogleSignInResponseModel(idToken: null),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.googleSignInPressed(
            authProvider: AuthProvider.google,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.failure)
              .having(
                (s) => s.googleSocialSignInException,
                'googleSocialSignInException',
                isA<GoogleSocialSignInException>(),
              ),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits failure when Google sign-in throws GoogleSocialSignInException',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(mockAuthRepository.signInWithGoogle()).thenThrow(
            GoogleSocialSignInException(
              code: GoogleSocialSignInExceptionCode.interrupted,
            ),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.googleSignInPressed(
            authProvider: AuthProvider.google,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.failure)
              .having(
                (s) => s.googleSocialSignInException,
                'googleSocialSignInException',
                isA<GoogleSocialSignInException>(),
              ),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits NetworkConnectionException (on platformSignInException field) when offline',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
          networkConnected: false,
        ),
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.googleSignInPressed(
            authProvider: AuthProvider.google,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having(
                (s) => s.platformSignInException,
                'platformSignInException',
                isA<NetworkConnectionException>(),
              ),
        ],
        verify: (_) {
          verifyNever(mockAuthRepository.signInWithGoogle());
        },
      );
    });

    // -----------------------------------------------------------------------
    // SocialTokenReceived
    // -----------------------------------------------------------------------
    group('SocialTokenReceived', () {
      const testToken = 'social-token-xyz';
      const testProvider = 'apple';

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits [loading, success] with user data when sign-in succeeds',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(
            mockAuthRepository.socialSignIn(
              request: SocialSignInRequestModel(
                token: testToken,
                provider: testProvider,
              ),
            ),
          ).thenAnswer(
            (_) async => _socialSignInSuccess(
              userData: const UserDataModel(
                email: 'test@example.com',
                country: 'US',
                zipCode: '10001',
                subscribeNewsletter: false,
                firstName: 'Test',
                lastName: 'User',
                initialLogin: true,
              ),
            ),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.socialTokenReceived(
            token: testToken,
            provider: testProvider,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.loading),
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.success)
              .having((s) => s.email, 'email', 'test@example.com')
              .having((s) => s.isInitialLogin, 'isInitialLogin', true),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits [loading, failure] when socialSignIn returns 401',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(
            mockAuthRepository.socialSignIn(
              request: anyNamed('request'),
            ),
          ).thenAnswer((_) async => _socialSignInFailure());
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.socialTokenReceived(
            token: testToken,
            provider: testProvider,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.loading),
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.failure)
              .having(
                (s) => s.socialSignInException,
                'socialSignInException',
                isA<UnknownNetworkException>(),
              ),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits [loading, failure] when socialSignIn throws NetworkClientSideException',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(
            mockAuthRepository.socialSignIn(
              request: anyNamed('request'),
            ),
          ).thenThrow(
            NetworkClientSideException(
              message: 'Unauthorized',
              statusCode: 401,
              originalError: 'error',
            ),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.socialTokenReceived(
            token: testToken,
            provider: testProvider,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.loading),
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.failure)
              .having(
                (s) => s.socialSignInException,
                'socialSignInException',
                isA<NetworkClientSideException>(),
              ),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'emits [loading, failure] when response has no auth token headers',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(
            mockAuthRepository.socialSignIn(
              request: anyNamed('request'),
            ),
          ).thenAnswer(
            (_) async => const NetworkResponse<SignInResponseModel?>(
              data: null,
              statusCode: 200,
              responseHeaders: {}, // Missing access-token and refresh-token
            ),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.socialTokenReceived(
            token: testToken,
            provider: testProvider,
          ),
        ),
        expect: () => [
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.loading),
          isA<AuthSocialLoginState>()
              .having((s) => s.status, 'status', AuthScreenStatus.failure),
        ],
      );

      blocTest<AuthSocialLoginBloc, AuthSocialLoginState>(
        'saves access token and refresh token to session repo on success',
        build: () => _buildBloc(
          authRepository: mockAuthRepository,
          keyValueStorage: mockKeyValueStorage,
          sessionRepository: mockSessionRepository,
          analytics: mockAnalyticsService,
          authAnalytics: mockAuthAnalytics,
          purchaseUserService: mockPurchaseUserService,
        ),
        setUp: () {
          when(
            mockAuthRepository.socialSignIn(
              request: anyNamed('request'),
            ),
          ).thenAnswer(
            (_) async => _socialSignInSuccess(
              accessToken: 'my-access',
              refreshToken: 'my-refresh',
            ),
          );
        },
        act: (bloc) => bloc.add(
          const AuthSocialLoginEvent.socialTokenReceived(
            token: testToken,
            provider: testProvider,
          ),
        ),
        verify: (_) {
          verify(mockSessionRepository.saveAccessToken('my-access')).called(1);
          verify(mockSessionRepository.saveRefreshToken('my-refresh')).called(1);
          verify(mockSessionRepository.saveIsAuthenticated(true)).called(1);
        },
      );
    });
  });
}
