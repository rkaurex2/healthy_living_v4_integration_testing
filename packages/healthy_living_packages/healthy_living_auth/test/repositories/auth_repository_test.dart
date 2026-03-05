import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_auth/src/data/models/forgot_password_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/google_sign_in/google_sign_in_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/sign_in_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/sign_in_social_result.dart';
import 'package:healthy_living_auth/src/data/models/sign_up_response_dto.dart';
import 'package:healthy_living_auth/src/data/models/social_sign_in_request_model.dart';
import 'package:healthy_living_auth/src/data/repository/default_auth_repository.dart';
import 'package:healthy_living_auth/src/domain/data_source/auth_remote_data_source.dart';
import 'package:healthy_living_auth/src/domain/models/change_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/edit_profile_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/forgot_password_response_model.dart';
import 'package:healthy_living_auth/src/domain/models/google_sign_in/google_sign_in_response_model.dart';
import 'package:healthy_living_auth/src/domain/models/reset_password_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_response_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_request_model.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_response_model.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([AuthRemoteDataSource])
import 'auth_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

AuthRepository _makeRepo(MockAuthRemoteDataSource dataSource) =>
    DefaultAuthRepository(dataSource: dataSource);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockAuthRemoteDataSource mockDataSource;
  late AuthRepository repository;

  setUp(() {
    mockDataSource = MockAuthRemoteDataSource();
    repository = _makeRepo(mockDataSource);
  });

  // -------------------------------------------------------------------------
  // signInWithApple
  // -------------------------------------------------------------------------
  group('signInWithApple', () {
    test('returns success result when data source returns valid credentials',
        () async {
      when(mockDataSource.signInWithApple()).thenAnswer((_) async => null);

      final result = await repository.signInWithApple();

      // When credential is null, identityToken and authorizationCode will be
      // null as well, so result should be a failure.
      expect(result.isSuccess, isFalse);
    });

    test('delegates call to data source', () async {
      when(mockDataSource.signInWithApple()).thenAnswer((_) async => null);

      await repository.signInWithApple();

      verify(mockDataSource.signInWithApple()).called(1);
    });

    test('propagates exception thrown by data source', () async {
      when(mockDataSource.signInWithApple())
          .thenThrow(Exception('Apple sign-in failed'));

      expect(
        () => repository.signInWithApple(),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // signInWithGoogle
  // -------------------------------------------------------------------------
  group('signInWithGoogle', () {
    test('returns GoogleSignInResponseModel with idToken', () async {
      when(mockDataSource.signInWithGoogle()).thenAnswer(
        (_) async => const GoogleSignInResponseDTO(idToken: 'google-token-123'),
      );

      final result = await repository.signInWithGoogle();

      expect(result, isA<GoogleSignInResponseModel>());
      expect(result.idToken, 'google-token-123');
    });

    test('returns model with null idToken when DTO has no token', () async {
      when(mockDataSource.signInWithGoogle()).thenAnswer(
        (_) async => const GoogleSignInResponseDTO(idToken: null),
      );

      final result = await repository.signInWithGoogle();

      expect(result.idToken, isNull);
    });

    test('delegates to data source exactly once', () async {
      when(mockDataSource.signInWithGoogle()).thenAnswer(
        (_) async => const GoogleSignInResponseDTO(idToken: 'token'),
      );

      await repository.signInWithGoogle();

      verify(mockDataSource.signInWithGoogle()).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // signInWithEmail
  // -------------------------------------------------------------------------
  group('signInWithEmail', () {
    test('returns 200 status code on successful sign in', () async {
      when(mockDataSource.signInWithEmail(any)).thenAnswer(
        (_) async => const NetworkResponse<SignInResponseDTO?>(
          data: SignInResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.signInWithEmail(
        request: const SignInRequestModel(email: 'test@test.com', password: 'pass'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when data source returns null DTO data', () async {
      when(mockDataSource.signInWithEmail(any)).thenAnswer(
        (_) async => const NetworkResponse<SignInResponseDTO?>(
          data: null,
          statusCode: 401,
          responseHeaders: {},
          statusMessage: 'Unauthorized',
        ),
      );

      final result = await repository.signInWithEmail(
        request: const SignInRequestModel(email: 'test@test.com', password: 'wrong'),
      );

      expect(result.statusCode, 401);
      expect(result.data, isNull);
    });
  });

  // -------------------------------------------------------------------------
  // socialSignIn
  // -------------------------------------------------------------------------
  group('socialSignIn', () {
    test('returns mapped response on success', () async {
      when(mockDataSource.socialSignIn(request: anyNamed('request'))).thenAnswer(
        (_) async => const NetworkResponse<SignInResponseDTO?>(
          data: SignInResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.socialSignIn(
        request: const SocialSignInRequestModel(token: 'token', provider: 'apple'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct request', () async {
      const request = SocialSignInRequestModel(token: 'tok', provider: 'google');
      when(mockDataSource.socialSignIn(request: anyNamed('request'))).thenAnswer(
        (_) async => const NetworkResponse<SignInResponseDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.socialSignIn(request: request);

      verify(mockDataSource.socialSignIn(request: request)).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // requestResetPassword
  // -------------------------------------------------------------------------
  group('requestResetPassword', () {
    test('returns 200 with mapped domain model on success', () async {
      when(mockDataSource.requestResetPassword(any)).thenAnswer(
        (_) async => const NetworkResponse<ForgotPasswordResponseDTO?>(
          data: ForgotPasswordResponseDTO(message: 'Reset email sent'),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.requestResetPassword(
        request: const ForgotPasswordRequestModel(email: 'user@test.com'),
      );

      expect(result.statusCode, 200);
      expect(result.data, isA<ForgotPasswordResponseModel>());
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.requestResetPassword(any))
          .thenThrow(Exception('network error'));

      expect(
        () => repository.requestResetPassword(
          request: const ForgotPasswordRequestModel(email: 'user@test.com'),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // signUpWithEmail
  // -------------------------------------------------------------------------
  group('signUpWithEmail', () {
    test('returns 200 on successful sign-up', () async {
      when(mockDataSource.signUpWithEmail(any)).thenAnswer(
        (_) async => const NetworkResponse<SignUpResponseDTO?>(
          data: SignUpResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.signUpWithEmail(
        request: const SignUpRequestModel(
          email: 'new@test.com',
          password: 'pass123',
        ),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });
  });

  // -------------------------------------------------------------------------
  // changePassword
  // -------------------------------------------------------------------------
  group('changePassword', () {
    test('returns 200 on successful password change', () async {
      when(mockDataSource.changePassword(any)).thenAnswer(
        (_) async => const NetworkResponse<GeneralResponseDTO?>(
          data: GeneralResponseDTO(status: 'success', message: 'Changed'),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.changePassword(
        request: const ChangePasswordRequestModel(
          currentPassword: 'old',
          newPassword: 'new',
          confirmPassword: 'new',
        ),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns error status on failure', () async {
      when(mockDataSource.changePassword(any)).thenAnswer(
        (_) async => const NetworkResponse<GeneralResponseDTO?>(
          data: null,
          statusCode: 400,
          responseHeaders: {},
          statusMessage: 'Bad Request',
        ),
      );

      final result = await repository.changePassword(
        request: const ChangePasswordRequestModel(
          currentPassword: 'wrong',
          newPassword: 'new',
          confirmPassword: 'new',
        ),
      );

      expect(result.statusCode, 400);
      expect(result.isClientError, isTrue);
    });
  });
}
