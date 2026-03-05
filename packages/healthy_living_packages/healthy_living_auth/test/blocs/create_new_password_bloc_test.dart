import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_auth/src/domain/models/change_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/reset_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/models/password_error_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';
import 'package:storage/storage.dart';

// ---------------------------------------------------------------------------
// Manual mocks
// ---------------------------------------------------------------------------
class MockAuthRepository extends Mock implements AuthRepository {
  @override
  Future<NetworkResponse<UserDataModel?>> resetPassword({
    ResetPasswordRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#resetPassword, [], {#request: request}),
        returnValue: Future<NetworkResponse<UserDataModel?>>.value(
          const NetworkResponse<UserDataModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<UserDataModel?>>.value(
          const NetworkResponse<UserDataModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<UserDataModel?>>;

  @override
  Future<NetworkResponse<GeneralResponseModel?>> changePassword({
    ChangePasswordRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#changePassword, [], {#request: request}),
        returnValue:
            Future<NetworkResponse<GeneralResponseModel?>>.value(
          const NetworkResponse<GeneralResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<GeneralResponseModel?>>.value(
          const NetworkResponse<GeneralResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<GeneralResponseModel?>>;
}

class MockSessionRepository extends Mock implements SessionRepository {
  @override
  Future<void> saveAccessToken(String? token) =>
      super.noSuchMethod(
        Invocation.method(#saveAccessToken, [token]),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>;

  @override
  Future<void> saveRefreshToken(String? token) =>
      super.noSuchMethod(
        Invocation.method(#saveRefreshToken, [token]),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>;
}

class MockUserDataRepository extends Mock implements UserDataRepository {}

class MockKeyValueStorage extends Mock implements KeyValueStorage {}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
const _validPassword = 'password123';
const _shortPassword = 'abc';
const _emptyString = '';
const _resetCode = 'RESET_CODE_123';
const _currentPassword = 'oldPassword1';

NetworkResponse<UserDataModel?> _resetPasswordSuccessResponse() =>
    const NetworkResponse<UserDataModel?>(
      data: null, // data is checked for non-null
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<GeneralResponseModel?> _changePasswordSuccessResponse() =>
    NetworkResponse<GeneralResponseModel?>(
      data: const GeneralResponseModel(success: true, message: 'Changed'),
      statusCode: 200,
      responseHeaders: {
        'access-token': ['new-access-token'],
        'refresh-token': ['new-refresh-token'],
      },
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['unit'])
void main() {
  late MockAuthRepository mockAuthRepository;
  late MockSessionRepository mockSessionRepository;
  late MockUserDataRepository mockUserDataRepository;
  late MockKeyValueStorage mockKeyValueStorage;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockSessionRepository = MockSessionRepository();
    mockUserDataRepository = MockUserDataRepository();
    mockKeyValueStorage = MockKeyValueStorage();
  });

  CreateNewPasswordBloc buildBloc() => CreateNewPasswordBloc(
        authRepository: mockAuthRepository,
        sessionRepository: mockSessionRepository,
        userDataRepository: mockUserDataRepository,
        keyValueStorage: mockKeyValueStorage,
      );

  group('CreateNewPasswordBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state has empty fields and disabled button', () {
      final bloc = buildBloc();
      expect(
        bloc.state,
        isA<CreateNewPasswordState>()
            .having((s) => s.currentPassword, 'currentPassword', '')
            .having((s) => s.password, 'password', '')
            .having((s) => s.confirmPassword, 'confirmPassword', '')
            .having(
              (s) => s.isFormButtonDisabled,
              'isFormButtonDisabled',
              true,
            )
            .having((s) => s.status, 'status', AuthScreenStatus.initial),
      );
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // OnTextChange — form validation (reset mode)
    // -----------------------------------------------------------------------
    group('OnTextChange (reset password mode)', () {
      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'enables form button when newPassword and confirmPassword are filled',
        build: buildBloc,
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.onTextChange(
            currentPassword: _emptyString,
            newPassword: _validPassword,
            confirmPassword: _validPassword,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>()
              .having(
                (s) => s.isFormButtonDisabled,
                'isFormButtonDisabled',
                false,
              )
              .having((s) => s.password, 'password', _validPassword)
              .having(
                (s) => s.confirmPassword,
                'confirmPassword',
                _validPassword,
              ),
        ],
      );

      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'disables form button when newPassword is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.onTextChange(
            currentPassword: _emptyString,
            newPassword: _emptyString,
            confirmPassword: _validPassword,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );

      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'disables form button when confirmPassword is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.onTextChange(
            currentPassword: _emptyString,
            newPassword: _validPassword,
            confirmPassword: _emptyString,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnTextChange — form validation (change password mode)
    // -----------------------------------------------------------------------
    group('OnTextChange (change password mode)', () {
      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'enables button when all three fields are filled in change mode',
        build: () {
          final bloc = buildBloc();
          bloc.setChangePasswordMode(true);
          return bloc;
        },
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.onTextChange(
            currentPassword: _currentPassword,
            newPassword: _validPassword,
            confirmPassword: _validPassword,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            false,
          ),
        ],
      );

      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'disables button when currentPassword is empty in change mode',
        build: () {
          final bloc = buildBloc();
          bloc.setChangePasswordMode(true);
          return bloc;
        },
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.onTextChange(
            currentPassword: _emptyString,
            newPassword: _validPassword,
            confirmPassword: _validPassword,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>().having(
            (s) => s.isFormButtonDisabled,
            'isFormButtonDisabled',
            true,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // NewPasswordFocusChanged
    // -----------------------------------------------------------------------
    group('NewPasswordFocusChanged', () {
      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'resets newPasswordTextInputState to defaultState on focus change',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const CreateNewPasswordEvent.newPasswordFocusChanged(_validPassword),
        ),
        expect: () => [
          isA<CreateNewPasswordState>()
              .having(
                (s) => s.newPasswordTextInputState,
                'newPasswordTextInputState',
                DSTextInputState.defaultState,
              )
              .having(
                (s) => s.newPasswordErrorType,
                'newPasswordErrorType',
                PasswordErrorType.none,
              ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ConfirmPasswordFocusChanged
    // -----------------------------------------------------------------------
    group('ConfirmPasswordFocusChanged', () {
      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'resets confirmPasswordInputState to defaultState on focus change',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const CreateNewPasswordEvent.confirmPasswordFocusChanged(
            _validPassword,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>()
              .having(
                (s) => s.confirmPasswordInputState,
                'confirmPasswordInputState',
                DSTextInputState.defaultState,
              )
              .having(
                (s) => s.confirmPasswordErrorType,
                'confirmPasswordErrorType',
                PasswordErrorType.none,
              ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // CurrentPasswordFocusChanged
    // -----------------------------------------------------------------------
    group('CurrentPasswordFocusChanged', () {
      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'resets currentPasswordInputState to defaultState on focus change',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const CreateNewPasswordEvent.currentPasswordFocusChanged(
            _currentPassword,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>()
              .having(
                (s) => s.currentPasswordInputState,
                'currentPasswordInputState',
                DSTextInputState.defaultState,
              )
              .having(
                (s) => s.currentPasswordErrorType,
                'currentPasswordErrorType',
                PasswordErrorType.none,
              ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // SaveNewPasswordButtonTapped — validation failure (short password)
    // -----------------------------------------------------------------------
    group('SaveNewPasswordButtonTapped', () {
      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'does not call API when password is too short (validation fails)',
        build: buildBloc,
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.saveNewPasswordButton(
            password: _shortPassword,
            confirmPassword: _shortPassword,
            code: _resetCode,
          ),
        ),
        verify: (_) {
          verifyNever(mockAuthRepository.resetPassword(
            request: anyNamed('request'),
          ));
        },
      );

      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'does not call API when passwords do not match',
        build: buildBloc,
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.saveNewPasswordButton(
            password: _validPassword,
            confirmPassword: 'differentPassword',
            code: _resetCode,
          ),
        ),
        verify: (_) {
          verifyNever(mockAuthRepository.resetPassword(
            request: anyNamed('request'),
          ));
        },
      );

      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'emits [updateForm, loading, failure] when resetPassword returns '
        'non-success response',
        build: () {
          when(mockAuthRepository.resetPassword(
            request: anyNamed('request'),
          )).thenAnswer(
            (_) async => const NetworkResponse<UserDataModel?>(
              data: null,
              statusCode: 422,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.saveNewPasswordButton(
            password: _validPassword,
            confirmPassword: _validPassword,
            code: _resetCode,
          ),
        ),
        expect: () => [
          // _updateForm emit
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.initial,
          ),
          // loading emit
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          // failure emit
          isA<CreateNewPasswordState>()
              .having(
                (s) => s.status,
                'status',
                AuthScreenStatus.failure,
              )
              .having(
                (s) => s.createPasswordException,
                'createPasswordException',
                isA<UnknownNetworkException>(),
              ),
        ],
      );

      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'emits [updateForm, loading, failure] when resetPassword throws',
        build: () {
          when(mockAuthRepository.resetPassword(
            request: anyNamed('request'),
          )).thenThrow(
            NetworkServerSideException(
              message: 'error',
              statusCode: 500,
              originalError: 'error',
            ),
          );
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.saveNewPasswordButton(
            password: _validPassword,
            confirmPassword: _validPassword,
            code: _resetCode,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.initial,
          ),
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<CreateNewPasswordState>()
              .having(
                (s) => s.status,
                'status',
                AuthScreenStatus.failure,
              )
              .having(
                (s) => s.createPasswordException,
                'createPasswordException',
                isA<NetworkException>(),
              ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ChangeNewPasswordButtonTapped
    // -----------------------------------------------------------------------
    group('ChangeNewPasswordButtonTapped', () {
      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'emits [updateForm, loading, success] when changePassword succeeds',
        build: () {
          when(mockAuthRepository.changePassword(
            request: anyNamed('request'),
          )).thenAnswer((_) async => _changePasswordSuccessResponse());
          when(mockSessionRepository.saveAccessToken(any))
              .thenAnswer((_) async {});
          when(mockSessionRepository.saveRefreshToken(any))
              .thenAnswer((_) async {});
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.changeNewPasswordButton(
            password: _validPassword,
            confirmPassword: _validPassword,
            currentPassword: _currentPassword,
          ),
        ),
        expect: () => [
          // _updateForm emit
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.initial,
          ),
          // loading
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          // success
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.changedPasswordSuccess,
          ),
        ],
        verify: (_) {
          verify(mockAuthRepository.changePassword(
            request: anyNamed('request'),
          )).called(1);
          verify(mockSessionRepository.saveAccessToken(any)).called(1);
          verify(mockSessionRepository.saveRefreshToken(any)).called(1);
        },
      );

      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'emits [updateForm, loading, failure] when changePassword fails',
        build: () {
          when(mockAuthRepository.changePassword(
            request: anyNamed('request'),
          )).thenAnswer(
            (_) async => const NetworkResponse<GeneralResponseModel?>(
              data: null,
              statusCode: 422,
              responseHeaders: {},
            ),
          );
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.changeNewPasswordButton(
            password: _validPassword,
            confirmPassword: _validPassword,
            currentPassword: _currentPassword,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.initial,
          ),
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<CreateNewPasswordState>()
              .having(
                (s) => s.status,
                'status',
                AuthScreenStatus.failure,
              )
              .having(
                (s) => s.createPasswordException,
                'createPasswordException',
                isA<UnknownNetworkException>(),
              ),
        ],
      );

      blocTest<CreateNewPasswordBloc, CreateNewPasswordState>(
        'emits [updateForm, loading, failure] when changePassword throws',
        build: () {
          when(mockAuthRepository.changePassword(
            request: anyNamed('request'),
          )).thenThrow(
            NetworkServerSideException(
              message: 'error',
              statusCode: 500,
              originalError: 'error',
            ),
          );
          return buildBloc();
        },
        act: (bloc) => bloc.add(
          CreateNewPasswordEvent.changeNewPasswordButton(
            password: _validPassword,
            confirmPassword: _validPassword,
            currentPassword: _currentPassword,
          ),
        ),
        expect: () => [
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.initial,
          ),
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.loading,
          ),
          isA<CreateNewPasswordState>().having(
            (s) => s.status,
            'status',
            AuthScreenStatus.failure,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // setChangePasswordMode
    // -----------------------------------------------------------------------
    group('setChangePasswordMode', () {
      test('setChangePasswordMode(true) affects change password validation', () {
        final bloc = buildBloc();
        bloc.setChangePasswordMode(true);
        // Cannot directly inspect _isChangePasswordMode, but behavior changes
        // are tested in the OnTextChange change password mode group above
        bloc.close();
      });

      test('setChangePasswordMode(false) restores reset password behavior', () {
        final bloc = buildBloc();
        bloc.setChangePasswordMode(true);
        bloc.setChangePasswordMode(false);
        bloc.close();
      });
    });
  });
}
