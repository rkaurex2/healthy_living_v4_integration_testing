import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/repository/default_my_list_detail_repository.dart';
import 'package:healthy_living_shared/src/domain/data_source/my_list_detail_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/user_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_detail_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([MyListDetailDataSource])
import 'my_list_detail_repository_test.mocks.dart';

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
  late MockMyListDetailDataSource mockDataSource;
  late MyListDetailRepository repository;

  // Create mocks once so the singleton DefaultMyListDetailRepository always
  // references the same mock instance.  Use `reset` in setUp to clear stubs.
  final sharedMock = MockMyListDetailDataSource();

  setUpAll(() {
    // Instantiate the singleton with the shared mock.
    DefaultMyListDetailRepository(myListDetailDataSource: sharedMock);
  });

  setUp(() {
    reset(sharedMock);
    mockDataSource = sharedMock;
    repository = DefaultMyListDetailRepository(
      myListDetailDataSource: mockDataSource,
    );
  });

  // -------------------------------------------------------------------------
  // productListFromListId
  // -------------------------------------------------------------------------
  group('productListFromListId', () {
    test('returns 200 on success with mapped domain model', () async {
      when(mockDataSource.productListFromListId(
        listId: anyNamed('listId'),
        page: anyNamed('page'),
        pageSize: anyNamed('pageSize'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDetailDTO?>(
          data: UserListDetailDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.productListFromListId(
        listId: 'list-1',
        page: 1,
        pageSize: 20,
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct parameters', () async {
      when(mockDataSource.productListFromListId(
        listId: anyNamed('listId'),
        page: anyNamed('page'),
        pageSize: anyNamed('pageSize'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDetailDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.productListFromListId(
        listId: 'abc-123',
        page: 2,
        pageSize: 10,
      );

      verify(mockDataSource.productListFromListId(
        listId: 'abc-123',
        page: 2,
        pageSize: 10,
      )).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // userListFromListId
  // -------------------------------------------------------------------------
  group('userListFromListId', () {
    test('returns 200 on success', () async {
      when(mockDataSource.userListFromListId(
        listId: anyNamed('listId'),
        page: anyNamed('page'),
        pageSize: anyNamed('pageSize'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDetailDTO?>(
          data: UserListDetailDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.userListFromListId(
        listId: 'list-2',
        page: 1,
        pageSize: 20,
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.userListFromListId(
        listId: anyNamed('listId'),
        page: anyNamed('page'),
        pageSize: anyNamed('pageSize'),
      )).thenThrow(Exception('timeout'));

      expect(
        () => repository.userListFromListId(
          listId: 'list-2',
          page: 1,
          pageSize: 20,
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // deleteList
  // -------------------------------------------------------------------------
  group('deleteList', () {
    test('returns 200 on successful deletion', () async {
      when(mockDataSource.deleteList(listId: anyNamed('listId'))).thenAnswer(
        (_) async => const NetworkResponse<dynamic>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.deleteList(listId: 'list-del');

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct listId', () async {
      when(mockDataSource.deleteList(listId: anyNamed('listId'))).thenAnswer(
        (_) async => const NetworkResponse<dynamic>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.deleteList(listId: 'target-list');

      verify(mockDataSource.deleteList(listId: 'target-list')).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // deleteProductsList
  // -------------------------------------------------------------------------
  group('deleteProductsList', () {
    test('returns 200 on success', () async {
      when(mockDataSource.deleteProductsList(
        listId: anyNamed('listId'),
        addToListRequestModel: anyNamed('addToListRequestModel'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDetailDTO?>(
          data: UserListDetailDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.deleteProductsList(
        listId: 'list-1',
        addToListRequestModel: const AddToListRequestModel(userList: _dummyUserList),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });
  });

  // -------------------------------------------------------------------------
  // renameList
  // -------------------------------------------------------------------------
  group('renameList', () {
    test('returns 200 on success', () async {
      when(mockDataSource.renameList(
        listId: anyNamed('listId'),
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<UserListDetailDTO?>(
          data: UserListDetailDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.renameList(
        listId: 'list-1',
        request: const CreateListRequestModel(name: 'Renamed List'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
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
        addToListRequestModel: const AddToListRequestModel(userList: _dummyUserList),
        listId: 'list-1',
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.addProductToList(
        addToListRequestModel: anyNamed('addToListRequestModel'),
        listId: anyNamed('listId'),
      )).thenThrow(Exception('error'));

      expect(
        () => repository.addProductToList(
          addToListRequestModel: const AddToListRequestModel(userList: _dummyUserList),
          listId: 'list-1',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
