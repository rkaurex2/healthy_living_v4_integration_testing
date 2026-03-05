import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/repository/default_my_list_repository.dart';
import 'package:healthy_living_shared/src/domain/data_source/my_list_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/user_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([MyListRemoteDataSource])
import 'my_list_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Dummy [UserListRequestModel] used when a required `userList` param is needed.
const _dummyUserList = UserListRequestModel(
  name: 'test-list',
  itemsAttributes: [
    UserListItemsAttributesModel(productType: 'food', productId: 1),
  ],
);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockMyListRemoteDataSource mockDataSource;
  late MyListRepository repository;

  // Create mocks once so the singleton DefaultMyListRepository always
  // references the same mock instance.  Use `reset` in setUp to clear stubs.
  final sharedMock = MockMyListRemoteDataSource();

  setUpAll(() {
    // Instantiate the singleton with the shared mock.
    DefaultMyListRepository(dataSource: sharedMock);
  });

  setUp(() {
    reset(sharedMock);
    mockDataSource = sharedMock;
    repository = DefaultMyListRepository(dataSource: mockDataSource);
  });

  // -------------------------------------------------------------------------
  // getUsersLists
  // -------------------------------------------------------------------------
  group('getUsersLists', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getUsersLists()).thenAnswer(
        (_) async => const NetworkResponse<List<UserListDTO?>?>(
          data: [],
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getUsersLists();

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when data source returns null', () async {
      when(mockDataSource.getUsersLists()).thenAnswer(
        (_) async => const NetworkResponse<List<UserListDTO?>?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getUsersLists();

      expect(result.data, isNull);
    });

    test('delegates to data source exactly once', () async {
      when(mockDataSource.getUsersLists()).thenAnswer(
        (_) async => const NetworkResponse<List<UserListDTO?>?>(
          data: [],
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.getUsersLists();

      verify(mockDataSource.getUsersLists()).called(1);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.getUsersLists())
          .thenThrow(Exception('network error'));

      expect(
        () => repository.getUsersLists(),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // addProductToList
  // -------------------------------------------------------------------------
  group('addProductToList', () {
    test('returns 200 on success', () async {
      when(mockDataSource.addProductToList(
        addToListRequestModel: anyNamed('addToListRequestModel'),
        listId: anyNamed('listId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDTO?>(
          data: UserListDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.addProductToList(
        addToListRequestModel: const AddToListRequestModel(
          userList: _dummyUserList,
        ),
        listId: 'list-123',
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct parameters', () async {
      const request = AddToListRequestModel(userList: _dummyUserList);
      const listId = 'my-list-id';

      when(mockDataSource.addProductToList(
        addToListRequestModel: anyNamed('addToListRequestModel'),
        listId: anyNamed('listId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.addProductToList(
        addToListRequestModel: request,
        listId: listId,
      );

      verify(mockDataSource.addProductToList(
        addToListRequestModel: request,
        listId: listId,
      )).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // createMyItemList
  // -------------------------------------------------------------------------
  group('createMyItemList', () {
    test('returns 200 on success', () async {
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
        request: const CreateListRequestModel(name: 'My New List'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.createMyItemList(
        request: anyNamed('request'),
      )).thenThrow(Exception('failed'));

      expect(
        () => repository.createMyItemList(
          request: const CreateListRequestModel(name: 'My New List'),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
