import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_my_items/src/data/respository/default_my_items_repository.dart';
import 'package:healthy_living_my_items/src/domain/data_source/my_items_remote_data_source.dart';
import 'package:healthy_living_my_items/src/domain/respository/my_items_repository.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([MyItemsRemoteDataSource])
import 'my_items_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Shared mock – lives at the top level so the singleton always references
// the same instance.  We call reset() in setUp() to clear stubs between tests.
// ---------------------------------------------------------------------------

final MockMyItemsRemoteDataSource mockDataSource =
    MockMyItemsRemoteDataSource();

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MyItemsRepository repository;

  setUpAll(() {
    // Initialise the singleton once; every subsequent factory call returns
    // this same instance that holds our shared mockDataSource.
    repository = DefaultMyItemsRepository(dataSource: mockDataSource);
  });

  setUp(() {
    // Clear all stubs / interaction history so each test starts clean.
    reset(mockDataSource);
  });

  // -------------------------------------------------------------------------
  // createMyItemList
  // -------------------------------------------------------------------------
  group('createMyItemList', () {
    test('returns 200 on success with mapped domain model', () async {
      when(mockDataSource.createMyItemList(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDetailDTO?>(
          data: UserListDetailDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.createMyItemList(
        request: const CreateListRequestModel(name: 'Test List'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct request', () async {
      const request = CreateListRequestModel(name: 'Test List');

      when(mockDataSource.createMyItemList(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDetailDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.createMyItemList(request: request);

      verify(mockDataSource.createMyItemList(request: request)).called(1);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.createMyItemList(
        request: anyNamed('request'),
      )).thenThrow(Exception('error'));

      expect(
        () => repository.createMyItemList(
          request: const CreateListRequestModel(name: 'Test List'),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // getUserList
  // -------------------------------------------------------------------------
  group('getUserList', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getUserList()).thenAnswer(
        (_) async => const NetworkResponse<List<UserListDTO>?>(
          data: [],
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getUserList();

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when data source returns null', () async {
      when(mockDataSource.getUserList()).thenAnswer(
        (_) async => const NetworkResponse<List<UserListDTO>?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getUserList();

      expect(result.data, isNull);
    });

    test('delegates to data source exactly once', () async {
      when(mockDataSource.getUserList()).thenAnswer(
        (_) async => const NetworkResponse<List<UserListDTO>?>(
          data: [],
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.getUserList();

      verify(mockDataSource.getUserList()).called(1);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.getUserList())
          .thenThrow(Exception('network error'));

      expect(
        () => repository.getUserList(),
        throwsA(isA<Exception>()),
      );
    });
  });
}
