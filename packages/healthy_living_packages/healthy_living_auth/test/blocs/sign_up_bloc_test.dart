import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_auth/src/core/purchase_user_service.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_response_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/models/email_error_type.dart';
import 'package:healthy_living_auth/src/ui/models/password_error_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';
import 'package:storage/storage.dart';

// ---------------------------------------------------------------------------
// Manual mocks
// ---------------------------------------------------------------------------
class MockAuthRepository extends Mock implements AuthRepository {
  @override
  Future<NetworkResponse<SignUpResponseModel?>> signUpWithEmail({
    SignUpRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#signUpWithEmail, [], {#request: request}),
        returnValue: Future<NetworkResponse<SignUpResponseModel?>>.value(
          const NetworkResponse<SignUpResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<SignUpResponseModel?>>.value(
          const NetworkResponse<SignUpResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<SignUpResponseModel?>>;
}

class MockSessionRepository extends Mock implements SessionRepository {}

class MockKeyValueStorage extends Mock implements KeyValueStorage {}

class MockAnalyticsService extends Mock implements AnalyticsService {}

class MockAuthAnalytics extends Mock implements AuthAnalytics {
  @override
  Future<void> logSignUp({String? method}) =>
      super.noSuchMethod(
        Invocation.method(#logSignUp, [], {#method: method}),
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
const _validFirstName = 'John';
const _validLastName = 'Doe';
const _validZipCode = '12345';
const _validCountry = 'US';
const _invalidEmail = 'not-an-email';
const _emptyString = '';

NetworkResponse<SignUpResponseModel?> _successResponse() =>
    NetworkResponse<SignUpResponseModel?>(
      data: const SignUpResponseModel(userData: null),
      statusCode: 200,
      responseHeaders: {
        'access-token': ['test-access-token'],
        'refresh-token': ['test-refresh-token'],
      },
    );

NetworkResponse<SignUpResponseModel?> _failureResponse() =>
    const NetworkResponse<SignUpResponseModel?>(
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

  SignUpBloc buildBloc() => SignUpBloc(
        authRepository: mockAuthRepository,
        sessionRepository: mockSessionRepository,
        keyValueStorage: mockKeyValueStorage,
        analytics: mockAnalyticsService,
        authAnalytics: mockAuthAnalytics,
        purchaseUserService: mockPurchaseUserService,
      );

  group('SignUpBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state has empty fields and disabled button', () {
      final bloc = buildBloc();
      expect(
        bloc.state,
        isA<SignUpState>()
            .having((s) => s.email, 'email', '')
            .having((s) => s.firstName, 'firstName', '')
            .having((s) => s.lastName, 'lastName', '')
            .having((s) => s.password, 'password', '')
            .having((s) => s.zipCode, 'zipCode', '')
            .having((s) => s.subscribeNewsletter, 'subscribeNewsletter', false)
            .having(
              (s) => s.isFormButtonDisabled,
              'isFormButtonDisabled',
              true,
            )
            .having(
              (s) => s.country,
              'country',
              StringConstants.defaultSelectedCountryCode,
            )
            .having((s) => s.status, 'status', AuthScreenStatus.initial),
      );
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // OnTextChange — form validation
    // -----------------------------------------------------------------------
    group('OnTextChange', () {
      blocTest<SignUpBloc, SignUpState>(
        'enables form button when all fields are valid',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.onTextChange(
            email: _validEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
          ),
        ),
        expect: () => [
          isA<SignUpState>()
              .having(
                (s) => s.isFormButtonDisabled,
                'isFormButtonDisabled',
                false,
              )
              .having((s) => s.email, 'email', _validEmail)
              .having((s) => s.password, 'password', _validPassword)
              .having((s) => s.firstName, 'firstName', _validFirstName)
              .having((s) => s.lastName, 'lastName', _validLastName)
              .having((s) => s.zipCode, 'zipCode', _validZipCode)
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

      blocTest<SignUpBloc, SignUpState>(
        'disables form button when email is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.onTextChange(
            email: _emptyString,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'disables form button when email is invalid format',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.onTextChange(
            email: _invalidEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'disables form button when password is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.onTextChange(
            email: _validEmail,
            password: _emptyString,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'disables form button when firstName is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.onTextChange(
            email: _validEmail,
            password: _validPassword,
            firstName: _emptyString,
            lastName: _validLastName,
            zipCode: _validZipCode,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'disables form button when lastName is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.onTextChange(
            email: _validEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _emptyString,
            zipCode: _validZipCode,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'disables form button when zipCode is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.onTextChange(
            email: _validEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _emptyString,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // SubscribeNewsletterToggled
    // -----------------------------------------------------------------------
    group('SubscribeNewsletterToggled', () {
      blocTest<SignUpBloc, SignUpState>(
        'toggles subscribeNewsletter from false to true',
        build: buildBloc,
        act: (bloc) => bloc.add(const SignUpEvent.subscribeNewsletterToggled()),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.subscribeNewsletter,
            'subscribeNewsletter',
            true,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'toggles subscribeNewsletter from true back to false',
        build: buildBloc,
        act: (bloc) {
          bloc.add(const SignUpEvent.subscribeNewsletterToggled());
          bloc.add(const SignUpEvent.subscribeNewsletterToggled());
        },
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.subscribeNewsletter,
            'subscribeNewsletter',
            true,
          ),
          isA<SignUpState>().having(
            (s) => s.subscribeNewsletter,
            'subscribeNewsletter',
            false,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // UserCountryChanged
    // -----------------------------------------------------------------------
    group('UserCountryChanged', () {
      blocTest<SignUpBloc, SignUpState>(
        'updates country value in state',
        build: buildBloc,
        act: (bloc) => bloc.add(const SignUpEvent.countryChanged('CA')),
        expect: () => [
          isA<SignUpState>().having((s) => s.country, 'country', 'CA'),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // Focus changed events — email
    // -----------------------------------------------------------------------
    group('UserEmailFocusChanged', () {
      blocTest<SignUpBloc, SignUpState>(
        'emits error emailTextInputState for invalid email',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.emailFocusChanged(_invalidEmail),
        ),
        expect: () => [
          isA<SignUpState>()
              .having(
                (s) => s.emailTextInputState,
                'emailTextInputState',
                DSTextInputState.error,
              )
              .having(
                (s) => s.emailErrorType,
                'emailErrorType',
                EmailErrorType.invalid,
              ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'emits defaultState emailTextInputState for valid email',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.emailFocusChanged(_validEmail),
        ),
        expect: () => [
          isA<SignUpState>()
              .having(
                (s) => s.emailTextInputState,
                'emailTextInputState',
                DSTextInputState.defaultState,
              )
              .having(
                (s) => s.emailErrorType,
                'emailErrorType',
                EmailErrorType.none,
              ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'emits error emailTextInputState with required error for empty email',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.emailFocusChanged(_emptyString),
        ),
        expect: () => [
          isA<SignUpState>()
              .having(
                (s) => s.emailTextInputState,
                'emailTextInputState',
                DSTextInputState.error,
              )
              .having(
                (s) => s.emailErrorType,
                'emailErrorType',
                EmailErrorType.required,
              ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // Focus changed events — password
    // -----------------------------------------------------------------------
    group('PasswordFocusChanged', () {
      blocTest<SignUpBloc, SignUpState>(
        'emits defaultState passwordTextInputState for valid password',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.passwordFocusChanged(_validPassword),
        ),
        expect: () => [
          isA<SignUpState>()
              .having(
                (s) => s.passwordTextInputState,
                'passwordTextInputState',
                DSTextInputState.defaultState,
              )
              .having(
                (s) => s.passwordErrorType,
                'passwordErrorType',
                PasswordErrorType.none,
              ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'emits error passwordTextInputState for empty password',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.passwordFocusChanged(_emptyString),
        ),
        expect: () => [
          isA<SignUpState>()
              .having(
                (s) => s.passwordTextInputState,
                'passwordTextInputState',
                DSTextInputState.error,
              )
              .having(
                (s) => s.passwordErrorType,
                'passwordErrorType',
                PasswordErrorType.required,
              ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'emits error passwordTextInputState for short password',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.passwordFocusChanged('abc'),
        ),
        expect: () => [
          isA<SignUpState>()
              .having(
                (s) => s.passwordTextInputState,
                'passwordTextInputState',
                DSTextInputState.error,
              )
              .having(
                (s) => s.passwordErrorType,
                'passwordErrorType',
                PasswordErrorType.invalid,
              ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // Focus changed events — firstName, lastName, zipCode
    // -----------------------------------------------------------------------
    group('FirstNameFocusChanged', () {
      blocTest<SignUpBloc, SignUpState>(
        'emits error firstNameTextInputState for empty firstName',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.firstNameFocusChanged(_emptyString),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.firstNameTextInputState,
            'firstNameTextInputState',
            DSTextInputState.error,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'emits defaultState firstNameTextInputState for valid firstName',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.firstNameFocusChanged(_validFirstName),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.firstNameTextInputState,
            'firstNameTextInputState',
            DSTextInputState.defaultState,
          ),
        ],
      );
    });

    group('LastNameFocusChanged', () {
      blocTest<SignUpBloc, SignUpState>(
        'emits error lastNameTextInputState for empty lastName',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.lastNameFocusChanged(_emptyString),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.lastNameTextInputState,
            'lastNameTextInputState',
            DSTextInputState.error,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'emits defaultState lastNameTextInputState for valid lastName',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.lastNameFocusChanged(_validLastName),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.lastNameTextInputState,
            'lastNameTextInputState',
            DSTextInputState.defaultState,
          ),
        ],
      );
    });

    group('ZipCodeFocusChanged', () {
      blocTest<SignUpBloc, SignUpState>(
        'emits error zipCodeTextInputState for empty zipCode',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.zipCodeFocusChanged(_emptyString),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.zipCodeTextInputState,
            'zipCodeTextInputState',
            DSTextInputState.error,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'emits defaultState zipCodeTextInputState for valid zipCode',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const SignUpEvent.zipCodeFocusChanged(_validZipCode),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.zipCodeTextInputState,
            'zipCodeTextInputState',
            DSTextInputState.defaultState,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // SignUpButtonPressed — success
    // -----------------------------------------------------------------------
    group('SignUpButtonPressed', () {
      blocTest<SignUpBloc, SignUpState>(
        'emits [loading, success] when sign up succeeds',
        build: () {
          when(mockAuthAnalytics.logSignUp(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signUpWithEmail(
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
          const SignUpEvent.signUpButtonPressed(
            email: _validEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
            country: _validCountry,
            isNewsletterSubscribed: false,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.success,
          ),
        ],
        verify: (_) {
          verify(mockAuthRepository.signUpWithEmail(
            request: anyNamed('request'),
          )).called(1);
          verify(mockSessionRepository.saveAccessToken(any)).called(1);
          verify(mockSessionRepository.saveRefreshToken(any)).called(1);
          verify(mockSessionRepository.saveIsAuthenticated(true)).called(1);
        },
      );

      // -------------------------------------------------------------------
      // SignUpButtonPressed — failure (non-success response)
      // -------------------------------------------------------------------
      blocTest<SignUpBloc, SignUpState>(
        'emits [loading, failure] when sign up returns non-success response',
        build: () {
          when(mockAuthAnalytics.logSignUp(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signUpWithEmail(
            request: anyNamed('request'),
          )).thenAnswer((_) async => _failureResponse());
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          const SignUpEvent.signUpButtonPressed(
            email: _validEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
            country: _validCountry,
            isNewsletterSubscribed: false,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignUpState>()
              .having(
                (s) => s.status,
                'status',
                AuthScreenStatus.failure,
              )
              .having(
                (s) => s.signUpException,
                'signUpException',
                isA<UnknownNetworkException>(),
              ),
        ],
      );

      // -------------------------------------------------------------------
      // SignUpButtonPressed — exception (generic NetworkException)
      // -------------------------------------------------------------------
      blocTest<SignUpBloc, SignUpState>(
        'emits [loading, failure] when sign up throws NetworkException',
        build: () {
          when(mockAuthAnalytics.logSignUp(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signUpWithEmail(
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
          const SignUpEvent.signUpButtonPressed(
            email: _validEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
            country: _validCountry,
            isNewsletterSubscribed: false,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignUpState>()
              .having(
                (s) => s.status,
                'status',
                AuthScreenStatus.failure,
              )
              .having(
                (s) => s.signUpException,
                'signUpException',
                isA<NetworkServerSideException>(),
              ),
        ],
      );

      // -------------------------------------------------------------------
      // SignUpButtonPressed — email already taken (422)
      // -------------------------------------------------------------------
      blocTest<SignUpBloc, SignUpState>(
        'emits [loading, failure] with alreadyRegistered emailErrorType '
        'when 422 with "already been taken" in error',
        build: () {
          when(mockAuthAnalytics.logSignUp(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signUpWithEmail(
            request: anyNamed('request'),
          )).thenThrow(
            NetworkClientSideException(
              message: 'Unprocessable Entity',
              statusCode: 422,
              originalError: 'error',
              responseBody: {
                'errors': {
                  'email': ['has already been taken'],
                },
              },
            ),
          );
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          const SignUpEvent.signUpButtonPressed(
            email: _validEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
            country: _validCountry,
            isNewsletterSubscribed: false,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignUpState>()
              .having(
                (s) => s.status,
                'status',
                AuthScreenStatus.failure,
              )
              .having(
                (s) => s.emailTextInputState,
                'emailTextInputState',
                DSTextInputState.error,
              )
              .having(
                (s) => s.emailErrorType,
                'emailErrorType',
                EmailErrorType.alreadyRegistered,
              ),
        ],
      );

      // -------------------------------------------------------------------
      // SignUpButtonPressed — success with missing tokens
      // -------------------------------------------------------------------
      blocTest<SignUpBloc, SignUpState>(
        'emits [loading, failure] when response is success but tokens missing',
        build: () {
          when(mockAuthAnalytics.logSignUp(method: anyNamed('method')))
              .thenAnswer((_) async {});
          when(mockAuthRepository.signUpWithEmail(
            request: anyNamed('request'),
          )).thenAnswer(
            (_) async => const NetworkResponse<SignUpResponseModel?>(
              data: SignUpResponseModel(userData: null),
              statusCode: 200,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          const SignUpEvent.signUpButtonPressed(
            email: _validEmail,
            password: _validPassword,
            firstName: _validFirstName,
            lastName: _validLastName,
            zipCode: _validZipCode,
            country: _validCountry,
            isNewsletterSubscribed: false,
          ),
        ),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.failure,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // SignupInitialized
    // -----------------------------------------------------------------------
    group('SignupInitialized', () {
      blocTest<SignUpBloc, SignUpState>(
        'emits localDataLoaded when user data exists in storage',
        build: () {
          when(mockKeyValueStorage.getString(any))
              .thenAnswer((_) async => '{"email":"a@b.com","firstName":"A","lastName":"B","country":"US","zipCode":"00000"}');
          return buildBloc();
        },
        act: (bloc) => bloc.add(const SignUpEvent.signupInitialized()),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.localDataLoaded,
          ),
        ],
      );

      blocTest<SignUpBloc, SignUpState>(
        'emits localDataLoaded when user data is null in storage',
        build: () {
          when(mockKeyValueStorage.getString(any))
              .thenAnswer((_) async => null);
          return buildBloc();
        },
        act: (bloc) => bloc.add(const SignUpEvent.signupInitialized()),
        expect: () => [
          isA<SignUpState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.localDataLoaded,
          ),
        ],
      );
    });
  });
}
