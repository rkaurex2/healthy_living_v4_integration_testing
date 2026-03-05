import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/models/entitlements/entitlements_verify_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/general_response_dto.dart';
import 'package:healthy_living_shared/src/data/repository/default_user_data_repository.dart';
import 'package:healthy_living_shared/src/domain/data_source/user_data_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/entitlements/entitlements_verify_response_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([UserDataLocalDataSource, UserDataRemoteDataSource])
import 'user_data_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockUserDataLocalDataSource mockLocal;
  late MockUserDataRemoteDataSource mockRemote;
  late UserDataRepository repository;

  // Use shared mock instances so the singleton DefaultUserDataRepository
  // always references the same mocks.  `reset()` clears stubs between tests.
  final sharedLocal = MockUserDataLocalDataSource();
  final sharedRemote = MockUserDataRemoteDataSource();

  setUpAll(() {
    // Initialise the singleton with the shared mocks.
    DefaultUserDataRepository(
      localDataSource: sharedLocal,
      remoteDataSource: sharedRemote,
    );
  });

  setUp(() {
    reset(sharedLocal);
    reset(sharedRemote);
    mockLocal = sharedLocal;
    mockRemote = sharedRemote;
    repository = DefaultUserDataRepository(
      localDataSource: mockLocal,
      remoteDataSource: mockRemote,
    );
  });

  // -------------------------------------------------------------------------
  // saveUserData
  // -------------------------------------------------------------------------
  group('saveUserData', () {
    test('delegates to local data source', () async {
      when(mockLocal.saveUserData(any)).thenAnswer((_) async {});

      await repository.saveUserData('user-token-123');

      verify(mockLocal.saveUserData('user-token-123')).called(1);
    });

    test('does not interact with remote data source', () async {
      when(mockLocal.saveUserData(any)).thenAnswer((_) async {});

      await repository.saveUserData('token');

      verifyZeroInteractions(mockRemote);
    });
  });

  // -------------------------------------------------------------------------
  // getUserData
  // -------------------------------------------------------------------------
  group('getUserData', () {
    test('returns stored user data from local data source', () async {
      when(mockLocal.getUserData()).thenAnswer((_) async => 'stored-data');

      final result = await repository.getUserData();

      expect(result, 'stored-data');
    });

    test('returns null when no data is stored', () async {
      when(mockLocal.getUserData()).thenAnswer((_) async => null);

      final result = await repository.getUserData();

      expect(result, isNull);
    });

    test('delegates to local data source exactly once', () async {
      when(mockLocal.getUserData()).thenAnswer((_) async => null);

      await repository.getUserData();

      verify(mockLocal.getUserData()).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // remove
  // -------------------------------------------------------------------------
  group('remove', () {
    test('returns true when local data source removes successfully', () async {
      when(mockLocal.remove(any)).thenAnswer((_) async => true);

      final result = await repository.remove('some-key');

      expect(result, isTrue);
    });

    test('returns false when local data source fails to remove', () async {
      when(mockLocal.remove(any)).thenAnswer((_) async => false);

      final result = await repository.remove('some-key');

      expect(result, isFalse);
    });

    test('delegates with correct key', () async {
      when(mockLocal.remove(any)).thenAnswer((_) async => true);

      await repository.remove('my-key');

      verify(mockLocal.remove('my-key')).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // logoutUser
  // -------------------------------------------------------------------------
  group('logoutUser', () {
    test('returns response from remote data source', () async {
      when(mockRemote.logoutUser()).thenAnswer(
        (_) async => const NetworkResponse<GeneralResponseDTO>(
          data: GeneralResponseDTO(status: 'success', message: 'Logged out'),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.logoutUser();

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to remote data source', () async {
      when(mockRemote.logoutUser()).thenAnswer(
        (_) async => const NetworkResponse<GeneralResponseDTO>(
          data: GeneralResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.logoutUser();

      verify(mockRemote.logoutUser()).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // deleteUser
  // -------------------------------------------------------------------------
  group('deleteUser', () {
    test('returns response from remote data source', () async {
      when(mockRemote.deleteUser()).thenAnswer(
        (_) async => const NetworkResponse<GeneralResponseDTO>(
          data: GeneralResponseDTO(status: 'success', message: 'Deleted'),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.deleteUser();

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from remote data source', () async {
      when(mockRemote.deleteUser()).thenThrow(Exception('delete failed'));

      expect(
        () => repository.deleteUser(),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // verifyEntitlements
  // -------------------------------------------------------------------------
  group('verifyEntitlements', () {
    test('returns 200 with mapped domain model on success', () async {
      when(mockRemote.verifyEntitlements()).thenAnswer(
        (_) async => const NetworkResponse<EntitlementsVerifyResponseDto?>(
          data: EntitlementsVerifyResponseDto(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.verifyEntitlements();

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to remote data source', () async {
      when(mockRemote.verifyEntitlements()).thenAnswer(
        (_) async => const NetworkResponse<EntitlementsVerifyResponseDto?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.verifyEntitlements();

      verify(mockRemote.verifyEntitlements()).called(1);
    });
  });
}
