import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_auth/src/domain/models/forgot_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_response_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_state.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual mocks
// ---------------------------------------------------------------------------
class MockAuthRepository extends Mock implements AuthRepository {
  @override
  Future<NetworkResponse<ForgotPasswordResponseModel?>> requestResetPassword({
    ForgotPasswordRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#requestResetPassword, [], {#request: request}),
        returnValue:
            Future<NetworkResponse<ForgotPasswordResponseModel?>>.value(
          const NetworkResponse<ForgotPasswordResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<ForgotPasswordResponseModel?>>.value(
          const NetworkResponse<ForgotPasswordResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<ForgotPasswordResponseModel?>>;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
const _testEmail = 'user@example.com';

NetworkResponse<ForgotPasswordResponseModel?> _successResponse() =>
    const NetworkResponse<ForgotPasswordResponseModel?>(
      data: ForgotPasswordResponseModel(message: 'Link sent.'),
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<ForgotPasswordResponseModel?> _failureResponse() =>
    const NetworkResponse<ForgotPasswordResponseModel?>(
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

  setUp(() {
    mockAuthRepository = MockAuthRepository();
  });

  CheckEmailBloc buildBloc() =>
      CheckEmailBloc(authRepository: mockAuthRepository);

  group('CheckEmailBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is CheckEmailInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<CheckEmailInitial>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // ResetLinkButtonTapped — success
    // -----------------------------------------------------------------------
    blocTest<CheckEmailBloc, CheckEmailState>(
      'emits [loading, success] when repository returns a successful response',
      build: () {
        when(mockAuthRepository.requestResetPassword(
          request: anyNamed('request'),
        )).thenAnswer((_) async => _successResponse());
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const CheckEmailEvent.resetLinkButtonEvent(email: _testEmail),
      ),
      expect: () => [
        isA<CheckEmailLoading>(),
        isA<CheckEmailSuccess>()
            .having((s) => s.email, 'email', _testEmail)
            .having(
              (s) => s.successData?.message,
              'successData.message',
              'Link sent.',
            ),
      ],
      verify: (_) {
        verify(mockAuthRepository.requestResetPassword(
          request: anyNamed('request'),
        )).called(1);
      },
    );

    // -----------------------------------------------------------------------
    // ResetLinkButtonTapped — failure (non-success response)
    // -----------------------------------------------------------------------
    blocTest<CheckEmailBloc, CheckEmailState>(
      'emits [loading, failure] when repository returns a non-success response',
      build: () {
        when(mockAuthRepository.requestResetPassword(
          request: anyNamed('request'),
        )).thenAnswer((_) async => _failureResponse());
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const CheckEmailEvent.resetLinkButtonEvent(email: _testEmail),
      ),
      expect: () => [
        isA<CheckEmailLoading>(),
        isA<CheckEmailFailure>().having(
          (s) => s.exception,
          'exception',
          isA<UnknownNetworkException>(),
        ),
      ],
    );

    // -----------------------------------------------------------------------
    // ResetLinkButtonTapped — failure (200 but data is null)
    // -----------------------------------------------------------------------
    blocTest<CheckEmailBloc, CheckEmailState>(
      'emits [loading, failure] when response is 200 but data is null',
      build: () {
        when(mockAuthRepository.requestResetPassword(
          request: anyNamed('request'),
        )).thenAnswer(
          (_) async => const NetworkResponse<ForgotPasswordResponseModel?>(
            data: null,
            statusCode: 200,
            responseHeaders: {},
          ),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const CheckEmailEvent.resetLinkButtonEvent(email: _testEmail),
      ),
      expect: () => [
        isA<CheckEmailLoading>(),
        isA<CheckEmailFailure>(),
      ],
    );

    // -----------------------------------------------------------------------
    // ResetLinkButtonTapped — exception thrown
    // -----------------------------------------------------------------------
    blocTest<CheckEmailBloc, CheckEmailState>(
      'emits [loading, failure] when repository throws an exception',
      build: () {
        when(mockAuthRepository.requestResetPassword(
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
        const CheckEmailEvent.resetLinkButtonEvent(email: _testEmail),
      ),
      expect: () => [
        isA<CheckEmailLoading>(),
        isA<CheckEmailFailure>().having(
          (s) => s.exception,
          'exception',
          isA<NetworkServerSideException>(),
        ),
      ],
    );

    // -----------------------------------------------------------------------
    // ResetLinkButtonTapped — verifies correct email passed to repository
    // -----------------------------------------------------------------------
    blocTest<CheckEmailBloc, CheckEmailState>(
      'calls repository with the correct email from event',
      build: () {
        when(mockAuthRepository.requestResetPassword(
          request: anyNamed('request'),
        )).thenAnswer((_) async => _successResponse());
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const CheckEmailEvent.resetLinkButtonEvent(email: _testEmail),
      ),
      verify: (_) {
        verify(mockAuthRepository.requestResetPassword(
          request: ForgotPasswordRequestModel(email: _testEmail),
        )).called(1);
      },
    );
  });
}
