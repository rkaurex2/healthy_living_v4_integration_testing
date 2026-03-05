import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_auth/src/core/purchase_user_service.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_response_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';
import 'package:storage/storage.dart';

// ---------------------------------------------------------------------------
// Manual mocks
// ---------------------------------------------------------------------------
class MockAuthRepository extends Mock implements AuthRepository {
  @override
  Future<NetworkResponse<SignInResponseModel?>> signInWithEmail({
    SignInRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#signInWithEmail, [], {#request: request}),
        returnValue: Future<NetworkResponse<SignInResponseModel?>>.value(
          const NetworkResponse<SignInResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<SignInResponseModel?>>.value(
          const NetworkResponse<SignInResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<SignInResponseModel?>>;
}

class MockSessionRepository extends Mock implements SessionRepository {}

class MockKeyValueStorage extends Mock implements KeyValueStorage {}

class MockAnalyticsService extends Mock implements AnalyticsService {}

class MockAuthAnalytics extends Mock implements AuthAnalytics {
  @override
  Future<void> logLogin({String? method}) =>
      super.noSuchMethod(
        Invocation.method(#logLogin, [], {#method: method}),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>;
}

class MockPurchaseUserService extends Mock implements PurchaseUserService {}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
const _validEmail = 'user@example.com';
const _validPassword = 'password123';
const _invalidEmail = 'not-an-email';
const _emptyString = '';

NetworkResponse<SignInResponseModel?> _successResponse() =>
    NetworkResponse<SignInResponseModel?>(
      data: const SignInResponseModel(userData: null),
      statusCode: 200,
      responseHeaders: {
        'access-token': ['test-access-token'],
        'refresh-token': ['test-refresh-token'],
      },
    );

NetworkResponse<SignInResponseModel?> _failureResponse() =>
    const NetworkResponse<SignInResponseModel?>(
      data: null,
      statusCode: 422,
      responseHeaders: {},
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['unit'])
void main() {
  late MockAuthRepository mockAuthRepository;
  late MockSessionRepository mockSessionRepository;
  late MockKeyValueStorage mockKeyValueStorage;
  late MockAnalyticsService mockAnalyticsService;
  late MockAuthAnalytics mockAuthAnalytics;
  late MockPurchaseUserService mockPurchaseUserService;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockSessionRepository = MockSessionRepository();
    mockKeyValueStorage = MockKeyValueStorage();
    mockAnalyticsService = MockAnalyticsService();
    mockAuthAnalytics = MockAuthAnalytics();
    mockPurchaseUserService = MockPurchaseUserService();
  });

  SignInBloc buildBloc() => SignInBloc(
        authRepository: mockAuthRepository,
        sessionRepository: mockSessionRepository,
        keyValueStorage: mockKeyValueStorage,
        analytics: mockAnalyticsService,
        authAnalytics: mockAuthAnalytics,
        purchaseUserService: mockPurchaseUserService,
      );

  group('SignInBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state has empty email, password and disabled button', () {
      final bloc = buildBloc();
      expect(
        bloc.state,
        isA<SignInState>()
            .having((s) => s.email, 'email', '')
            .having((s) => s.password, 'password', '')
            .having(
              (s) => s.isSignInButtonDisabled,
              'isSignInButtonDisabled',
              true,
            )
            .having((s) => s.status, 'status', AuthScreenStatus.initial),
      );
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // OnTextChange — valid email and password
    // -----------------------------------------------------------------------
    group('OnTextChange', () {
      blocTest<SignInBloc, SignInState>(
        'emits state with isSignInButtonDisabled=false for valid email+password',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.onTextChange(
            email: _validEmail,
            password: _validPassword,
          ),
        ),
        expect: () => [
          isA<SignInState>()
              .having(
                (s) => s.isSignInButtonDisabled,
                'isSignInButtonDisabled',
                false,
              )
              .having((s) => s.email, 'email', _validEmail)
              .having((s) => s.password, 'password', _validPassword)
              .having(
                (s) => s.emailTextInputState,
                'emailTextInputState',
                DSTextInputState.defaultState,
              )
              .having(
                (s) => s.passwordTextInputState,
                'passwordTextInputState',
                DSTextInputState.defaultState,
              ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits state with isSignInButtonDisabled=true for empty email',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.onTextChange(
            email: _emptyString,
            password: _validPassword,
          ),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.isSignInButtonDisabled,
            'isSignInButtonDisabled',
            true,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits state with isSignInButtonDisabled=true for invalid email format',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.onTextChange(
            email: _invalidEmail,
            password: _validPassword,
          ),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.isSignInButtonDisabled,
            'isSignInButtonDisabled',
            true,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits state with isSignInButtonDisabled=true for empty password',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.onTextChange(
            email: _validEmail,
            password: _emptyString,
          ),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.isSignInButtonDisabled,
            'isSignInButtonDisabled',
            true,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnEmailFocusChanged
    // -----------------------------------------------------------------------
    group('OnEmailFocusChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits error emailTextInputState for invalid email on focus change',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.emailFocusChanged(_invalidEmail),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.emailTextInputState,
            'emailTextInputState',
            DSTextInputState.error,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits defaultState emailTextInputState for valid email on focus change',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.emailFocusChanged(_validEmail),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.emailTextInputState,
            'emailTextInputState',
            DSTextInputState.defaultState,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits error emailTextInputState for empty email on focus change',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.emailFocusChanged(_emptyString),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.emailTextInputState,
            'emailTextInputState',
            DSTextInputState.error,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnPasswordFocusChanged
    // -----------------------------------------------------------------------
    group('OnPasswordFocusChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits defaultState passwordTextInputState for valid password',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.passwordFocusChanged(_validPassword),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.passwordTextInputState,
            'passwordTextInputState',
            DSTextInputState.defaultState,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits error passwordTextInputState for empty password',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignInEvent.passwordFocusChanged(_emptyString),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.passwordTextInputState,
            'passwordTextInputState',
            DSTextInputState.error,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // SignInButtonPressed — success
    // -----------------------------------------------------------------------
    group('SignInButtonPressed', () {
      blocTest<SignInBloc, SignInState>(
        'emits [loading, success] when sign in succeeds',
        build: () {
          when(mockAuthAnalytics.logLogin(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signInWithEmail(
            request: anyNamed('request'),
          )).thenAnswer((_) async => _successResponse());
          when(mockSessionRepository.saveAccessToken(any))
              .thenAnswer((_) async {});
          when(mockSessionRepository.saveRefreshToken(any))
              .thenAnswer((_) async {});
          when(mockSessionRepository.saveIsAuthenticated(any))
              .thenAnswer((_) async {});
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          const SignInEvent.signInButtonPressed(
            email: _validEmail,
            password: _validPassword,
          ),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignInState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.success,
          ),
        ],
        verify: (_) {
          verify(mockAuthRepository.signInWithEmail(
            request: anyNamed('request'),
          )).called(1);
          verify(mockSessionRepository.saveAccessToken(any)).called(1);
          verify(mockSessionRepository.saveRefreshToken(any)).called(1);
          verify(mockSessionRepository.saveIsAuthenticated(true)).called(1);
        },
      );

      // ---------------------------------------------------------------------
      // SignInButtonPressed — failure (non-success response)
      // ---------------------------------------------------------------------
      blocTest<SignInBloc, SignInState>(
        'emits [loading, failure] when sign in returns non-success response',
        build: () {
          when(mockAuthAnalytics.logLogin(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signInWithEmail(
            request: anyNamed('request'),
          )).thenAnswer((_) async => _failureResponse());
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          const SignInEvent.signInButtonPressed(
            email: _validEmail,
            password: _validPassword,
          ),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignInState>()
              .having(
                (s) => s.status,
                'status',
                AuthScreenStatus.failure,
              )
              .having(
                (s) => s.signInException,
                'signInException',
                isA<UnknownNetworkException>(),
              ),
        ],
      );

      // ---------------------------------------------------------------------
      // SignInButtonPressed — exception
      // ---------------------------------------------------------------------
      blocTest<SignInBloc, SignInState>(
        'emits [loading, failure] when sign in throws NetworkException',
        build: () {
          when(mockAuthAnalytics.logLogin(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signInWithEmail(
            request: anyNamed('request'),
          )).thenThrow(
            NetworkServerSideException(
              message: 'Internal Server Error',
              statusCode: 500,
              originalError: 'error',
            ),
          );
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          const SignInEvent.signInButtonPressed(
            email: _validEmail,
            password: _validPassword,
          ),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignInState>()
              .having(
                (s) => s.status,
                'status',
                AuthScreenStatus.failure,
              )
              .having(
                (s) => s.signInException,
                'signInException',
                isA<NetworkServerSideException>(),
              ),
        ],
      );

      // ---------------------------------------------------------------------
      // SignInButtonPressed — success with missing tokens
      // ---------------------------------------------------------------------
      blocTest<SignInBloc, SignInState>(
        'emits [loading, failure] when response is success but tokens missing',
        build: () {
          when(mockAuthAnalytics.logLogin(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signInWithEmail(
            request: anyNamed('request'),
          )).thenAnswer(
            (_) async => const NetworkResponse<SignInResponseModel?>(
              data: SignInResponseModel(userData: null),
              statusCode: 200,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          const SignInEvent.signInButtonPressed(
            email: _validEmail,
            password: _validPassword,
          ),
        ),
        expect: () => [
          isA<SignInState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignInState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.failure,
          ),
        ],
      );
    });
  });
}
