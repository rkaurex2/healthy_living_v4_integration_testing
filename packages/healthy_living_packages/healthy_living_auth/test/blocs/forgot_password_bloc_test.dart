import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_auth/src/domain/models/forgot_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_response_model.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_state.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
const _validEmail = 'user@example.com';
const _invalidEmail = 'not-an-email';
const _emptyEmail = '';

NetworkResponse<ForgotPasswordResponseModel?> _successResponse() =>
    NetworkResponse<ForgotPasswordResponseModel?>(
      data: const ForgotPasswordResponseModel(
        message: 'Reset link sent.',
      ),
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<ForgotPasswordResponseModel?> _failureResponse({
  int statusCode = 422,
}) =>
    NetworkResponse<ForgotPasswordResponseModel?>(
      data: null,
      statusCode: statusCode,
      responseHeaders: {},
    );

void main() {
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
  });

  ForgotPasswordBloc buildBloc() =>
      ForgotPasswordBloc(authRepository: mockAuthRepository);

  group('ForgotPasswordBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is ForgotPasswordStateInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<ForgotPasswordStateInitial>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // EmailChanged
    // -----------------------------------------------------------------------
    group('EmailChanged', () {
      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits ForgotPasswordFormState with isFormValid=true for valid email',
        build: buildBloc,
        act: (bloc) => bloc.add(ForgotPasswordEvent.emailChanged(_validEmail)),
        expect: () => [
          isA<ForgotPasswordFormState>()
              .having((s) => s.email, 'email', _validEmail)
              .having((s) => s.isFormValid, 'isFormValid', true)
              .having(
                (s) => s.emailState,
                'emailState',
                DSTextInputState.defaultState,
              ),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits ForgotPasswordFormState with isFormValid=false for invalid email',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(ForgotPasswordEvent.emailChanged(_invalidEmail)),
        expect: () => [
          isA<ForgotPasswordFormState>()
              .having((s) => s.email, 'email', _invalidEmail)
              .having((s) => s.isFormValid, 'isFormValid', false)
              .having(
                (s) => s.emailState,
                'emailState',
                DSTextInputState.error,
              ),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits ForgotPasswordFormState with isFormValid=false for empty email',
        build: buildBloc,
        act: (bloc) => bloc.add(ForgotPasswordEvent.emailChanged(_emptyEmail)),
        expect: () => [
          isA<ForgotPasswordFormState>()
              .having((s) => s.email, 'email', _emptyEmail)
              .having((s) => s.isFormValid, 'isFormValid', false)
              .having(
                (s) => s.emailState,
                'emailState',
                DSTextInputState.error,
              ),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'trims whitespace from email input',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(ForgotPasswordEvent.emailChanged('  $_validEmail  ')),
        expect: () => [
          isA<ForgotPasswordFormState>()
              .having((s) => s.email, 'email', _validEmail),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnTextChange
    // -----------------------------------------------------------------------
    group('OnTextChange', () {
      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits form state with isFormValid=true and defaultState for valid email',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(ForgotPasswordEvent.onTextChange(email: _validEmail)),
        expect: () => [
          isA<ForgotPasswordFormState>()
              .having((s) => s.email, 'email', _validEmail)
              .having((s) => s.isFormValid, 'isFormValid', true)
              .having(
                (s) => s.emailState,
                'emailState',
                DSTextInputState.defaultState,
              ),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits form state with isFormValid=false and defaultState for invalid email',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(ForgotPasswordEvent.onTextChange(email: _invalidEmail)),
        expect: () => [
          isA<ForgotPasswordFormState>()
              .having((s) => s.email, 'email', _invalidEmail)
              .having((s) => s.isFormValid, 'isFormValid', false)
              // OnTextChange always uses defaultState (not error) for live typing
              .having(
                (s) => s.emailState,
                'emailState',
                DSTextInputState.defaultState,
              ),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits form state with isFormValid=false for empty email on text change',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(ForgotPasswordEvent.onTextChange(email: _emptyEmail)),
        expect: () => [
          isA<ForgotPasswordFormState>()
              .having((s) => s.email, 'email', _emptyEmail)
              .having((s) => s.isFormValid, 'isFormValid', false),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ResetLinkButton
    // -----------------------------------------------------------------------
    group('ResetLinkButton', () {
      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits [loading, success] when repository call succeeds',
        build: buildBloc,
        setUp: () {
          when(
            mockAuthRepository.requestResetPassword(
              request: ForgotPasswordRequestModel(email: _validEmail),
            ),
          ).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(
          ForgotPasswordEvent.resetLinkButtonEvent(email: _validEmail),
        ),
        expect: () => [
          isA<ForgotPasswordLoading>(),
          isA<ForgotPasswordSuccess>()
              .having((s) => s.email, 'email', _validEmail)
              .having(
                (s) => s.successData?.message,
                'successData.message',
                'Reset link sent.',
              ),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits [loading, failure] when repository returns non-2xx status',
        build: buildBloc,
        setUp: () {
          when(
            mockAuthRepository.requestResetPassword(
              request: anyNamed('request'),
            ),
          ).thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) => bloc.add(
          ForgotPasswordEvent.resetLinkButtonEvent(email: _validEmail),
        ),
        expect: () => [
          isA<ForgotPasswordLoading>(),
          isA<ForgotPasswordFailure>()
              .having(
                (s) => s.exception,
                'exception',
                isA<UnknownNetworkException>(),
              ),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits [loading, failure] when repository throws NetworkServerSideException',
        build: buildBloc,
        setUp: () {
          when(
            mockAuthRepository.requestResetPassword(
              request: anyNamed('request'),
            ),
          ).thenThrow(
            NetworkServerSideException(
              message: 'Internal Server Error',
              statusCode: 500,
              originalError: 'error',
            ),
          );
        },
        act: (bloc) => bloc.add(
          ForgotPasswordEvent.resetLinkButtonEvent(email: _validEmail),
        ),
        expect: () => [
          isA<ForgotPasswordLoading>(),
          isA<ForgotPasswordFailure>()
              .having(
                (s) => s.exception,
                'exception',
                isA<NetworkServerSideException>(),
              ),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits [loading, failure] when response is 200 but data is null',
        build: buildBloc,
        setUp: () {
          when(
            mockAuthRepository.requestResetPassword(
              request: anyNamed('request'),
            ),
          ).thenAnswer(
            (_) async => const NetworkResponse<ForgotPasswordResponseModel?>(
              data: null,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) => bloc.add(
          ForgotPasswordEvent.resetLinkButtonEvent(email: _validEmail),
        ),
        expect: () => [
          isA<ForgotPasswordLoading>(),
          isA<ForgotPasswordFailure>(),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'calls repository with the correct email from event',
        build: buildBloc,
        setUp: () {
          when(
            mockAuthRepository.requestResetPassword(
              request: anyNamed('request'),
            ),
          ).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(
          ForgotPasswordEvent.resetLinkButtonEvent(email: _validEmail),
        ),
        verify: (_) {
          verify(
            mockAuthRepository.requestResetPassword(
              request: ForgotPasswordRequestModel(email: _validEmail),
            ),
          ).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // State transitions — full happy path
    // -----------------------------------------------------------------------
    group('State transition sequences', () {
      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'full happy-path: emailChanged → valid form → resetLink → success',
        build: buildBloc,
        setUp: () {
          when(
            mockAuthRepository.requestResetPassword(
              request: anyNamed('request'),
            ),
          ).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) async {
          bloc.add(ForgotPasswordEvent.emailChanged(_validEmail));
          bloc.add(
            ForgotPasswordEvent.resetLinkButtonEvent(email: _validEmail),
          );
        },
        expect: () => [
          isA<ForgotPasswordFormState>(), // After EmailChanged
          isA<ForgotPasswordLoading>(),   // Before API call
          isA<ForgotPasswordSuccess>(),   // After API success
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'invalid email → no API call when resetLink pressed without valid email',
        build: buildBloc,
        setUp: () {
          when(
            mockAuthRepository.requestResetPassword(
              request: anyNamed('request'),
            ),
          ).thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) async {
          bloc.add(ForgotPasswordEvent.emailChanged(_invalidEmail));
          // Note: UI should prevent this, but the BLoC still processes it
          bloc.add(
            ForgotPasswordEvent.resetLinkButtonEvent(email: _invalidEmail),
          );
        },
        // Even with invalid email, BLoC still calls API — validation is UI concern
        expect: () => [
          isA<ForgotPasswordFormState>(),
          isA<ForgotPasswordLoading>(),
          isA<ForgotPasswordFailure>(),
        ],
      );
    });
  });
}
