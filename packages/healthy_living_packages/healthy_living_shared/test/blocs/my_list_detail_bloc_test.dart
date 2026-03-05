import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_detail_repository.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_events.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_state.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

UserListModel _makeUserListModel({
  int id = 1,
  String name = 'Test List',
  int totalEntries = 1,
  List<UserListItemsModel>? items,
}) =>
    UserListModel(
      id: id,
      name: name,
      createdAt: '2024-01-01',
      updatedAt: '2024-01-01',
      itemsCount: items?.length ?? 1,
      totalEntries: totalEntries,
      url: '',
      items: items ?? [UserListItemsModel(id: 1, productId: 100)],
      skippedItems: null,
    );

NetworkResponse<UserListModel?> _fetchSuccess({
  UserListModel? model,
}) =>
    NetworkResponse<UserListModel?>(
      data: model ?? _makeUserListModel(),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<UserListModel?> _fetchNullData() =>
    const NetworkResponse<UserListModel?>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

NetworkResponse<dynamic> _deleteSuccess() =>
    const NetworkResponse<dynamic>(
      data: null,
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<dynamic> _deleteFailure() =>
    const NetworkResponse<dynamic>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

NetworkResponse<dynamic> _renameSuccess() =>
    NetworkResponse<dynamic>(
      data: _makeUserListModel(id: 1, name: 'Renamed List'),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<dynamic> _renameFailure() =>
    const NetworkResponse<dynamic>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

NetworkResponse<UserListModel> _deleteProductsSuccess() =>
    NetworkResponse<UserListModel>(
      data: _makeUserListModel(),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<UserListModel> _deleteProductsFailure() =>
    NetworkResponse<UserListModel>(
      data: _makeUserListModel(),
      statusCode: 500,
      responseHeaders: const {},
    );

NetworkResponse<UserListModel?> _addToListSuccess({
  List<int>? skippedItems,
}) =>
    NetworkResponse<UserListModel?>(
      data: UserListModel(
        id: 1,
        name: 'Test List',
        createdAt: '2024-01-01',
        updatedAt: '2024-01-01',
        itemsCount: 1,
        totalEntries: 1,
        url: '',
        items: [],
        skippedItems: skippedItems,
      ),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<UserListModel?> _addToListNullData() =>
    const NetworkResponse<UserListModel?>(
      data: null,
      statusCode: 422,
      responseHeaders: {},
    );

const _testAttributes = [
  UserListItemsAttributesModel(productType: 'food', productId: 100),
];

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockMyListDetailRepository mockRepo;
  late MockCreateListAnalytics mockAnalytics;

  setUp(() {
    mockRepo = MockMyListDetailRepository();
    mockAnalytics = MockCreateListAnalytics();
  });

  MyListDetailBloc buildBloc() => MyListDetailBloc(
        myListDetailRepository: mockRepo,
        createListAnalytics: mockAnalytics,
      );

  group('MyListDetailBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is MyListDetailInitialState', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<MyListDetailInitialState>());
      bloc.close();
    });

    test('initial userListModel is null', () {
      final bloc = buildBloc();
      expect(bloc.userListModel, isNull);
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // FetchProductListFromListId
    // -----------------------------------------------------------------------
    group('FetchProductListFromListId', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [ProductListLoading, ProductListLoaded] on success (page 1)',
        build: buildBloc,
        setUp: () {
          when(mockRepo.userListFromListId(
            listId: anyNamed('listId'),
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
          )).thenAnswer((_) async => _fetchSuccess());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.fetchProductListFromListId(
            listId: '1',
            pageKey: 1,
            pageSize: 20,
            isSelectionActivate: false,
            isSelectAllEnable: false,
            isOpenFromSharedLink: false,
          ),
        ),
        expect: () => [
          isA<ProductListLoading>().having(
            (s) => s.isLoading,
            'isLoading',
            isTrue,
          ),
          isA<ProductListLoaded>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ProductListFailure when response data is null',
        build: buildBloc,
        setUp: () {
          when(mockRepo.userListFromListId(
            listId: anyNamed('listId'),
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
          )).thenAnswer((_) async => _fetchNullData());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.fetchProductListFromListId(
            listId: '1',
            pageKey: 1,
            pageSize: 20,
            isSelectionActivate: false,
            isSelectAllEnable: false,
            isOpenFromSharedLink: false,
          ),
        ),
        expect: () => [
          isA<ProductListLoading>(),
          isA<ProductListFailure>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'uses productListFromListId when isOpenFromSharedLink is true',
        build: buildBloc,
        setUp: () {
          when(mockRepo.productListFromListId(
            listId: anyNamed('listId'),
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
          )).thenAnswer((_) async => _fetchSuccess());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.fetchProductListFromListId(
            listId: '1',
            pageKey: 1,
            pageSize: 20,
            isSelectionActivate: false,
            isSelectAllEnable: false,
            isOpenFromSharedLink: true,
          ),
        ),
        verify: (_) {
          verify(mockRepo.productListFromListId(
            listId: anyNamed('listId'),
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
          )).called(1);
          verifyNever(mockRepo.userListFromListId(
            listId: anyNamed('listId'),
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
          ));
        },
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'sets hasMore based on totalEntries vs items length',
        build: buildBloc,
        setUp: () {
          when(mockRepo.userListFromListId(
            listId: anyNamed('listId'),
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
          )).thenAnswer(
            (_) async => _fetchSuccess(
              model: _makeUserListModel(totalEntries: 50),
            ),
          );
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.fetchProductListFromListId(
            listId: '1',
            pageKey: 1,
            pageSize: 20,
            isSelectionActivate: false,
            isSelectAllEnable: false,
            isOpenFromSharedLink: false,
          ),
        ),
        expect: () => [
          isA<ProductListLoading>(),
          isA<ProductListLoaded>().having(
            (s) => s.hasMore,
            'hasMore',
            isTrue,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // DeleteList
    // -----------------------------------------------------------------------
    group('DeleteList', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [IsLoadingDeleteListButton, OnDeleteListSuccess] on success',
        build: buildBloc,
        setUp: () {
          when(mockRepo.deleteList(listId: anyNamed('listId')))
              .thenAnswer((_) async => _deleteSuccess());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.deleteList(listId: '1'),
        ),
        expect: () => [
          isA<IsLoadingDeleteListButton>().having(
            (s) => s.isLoading,
            'isLoading',
            isTrue,
          ),
          isA<OnDeleteListSuccess>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [IsLoadingDeleteListButton, OnDeleteListFailure] on failure',
        build: buildBloc,
        setUp: () {
          when(mockRepo.deleteList(listId: anyNamed('listId')))
              .thenAnswer((_) async => _deleteFailure());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.deleteList(listId: '1'),
        ),
        expect: () => [
          isA<IsLoadingDeleteListButton>(),
          isA<OnDeleteListFailure>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits OnDeleteListFailure when repository throws NetworkException',
        build: buildBloc,
        setUp: () {
          when(mockRepo.deleteList(listId: anyNamed('listId'))).thenThrow(
            UnknownNetworkException(
              message: 'Error',
              statusCode: 500,
              originalError: null,
            ),
          );
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.deleteList(listId: '1'),
        ),
        expect: () => [
          isA<IsLoadingDeleteListButton>(),
          isA<OnDeleteListFailure>().having(
            (s) => s.exception,
            'exception',
            isA<NetworkException>(),
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // RenameList
    // -----------------------------------------------------------------------
    group('RenameList', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [IsLoadingEditListButton, OnEditListSuccess] on success',
        build: buildBloc,
        setUp: () {
          when(mockRepo.renameList(
            listId: anyNamed('listId'),
            request: anyNamed('request'),
          )).thenAnswer((_) async => _renameSuccess());
          when(mockAnalytics.logListCreated(
            listId: anyNamed('listId'),
            listName: anyNamed('listName'),
            itemCount: anyNamed('itemCount'),
          )).thenAnswer((_) async {});
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.renameList(
            listId: '1',
            listName: 'Renamed List',
          ),
        ),
        expect: () => [
          isA<IsLoadingEditListButton>().having(
            (s) => s.isLoading,
            'isLoading',
            isTrue,
          ),
          isA<OnEditListSuccess>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [IsLoadingEditListButton, OnEditListFailure] on failure',
        build: buildBloc,
        setUp: () {
          when(mockRepo.renameList(
            listId: anyNamed('listId'),
            request: anyNamed('request'),
          )).thenAnswer((_) async => _renameFailure());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.renameList(
            listId: '1',
            listName: 'Bad Name',
          ),
        ),
        expect: () => [
          isA<IsLoadingEditListButton>(),
          isA<OnEditListFailure>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits OnEditListFailure when repository throws NetworkException',
        build: buildBloc,
        setUp: () {
          when(mockRepo.renameList(
            listId: anyNamed('listId'),
            request: anyNamed('request'),
          )).thenThrow(
            UnknownNetworkException(
              message: 'Error',
              statusCode: 422,
              originalError: null,
            ),
          );
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.renameList(
            listId: '1',
            listName: 'Error Name',
          ),
        ),
        expect: () => [
          isA<IsLoadingEditListButton>(),
          isA<OnEditListFailure>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnChangeListName – validation
    // -----------------------------------------------------------------------
    group('OnChangeListName', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ValidateEditListButton(true) for valid name',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.onChangeListName(listName: 'Valid Name'),
        ),
        expect: () => [
          isA<ValidateEditListButton>().having(
            (s) => s.isEditButtonEnable,
            'isEditButtonEnable',
            isTrue,
          ),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ValidateEditListButton(false) for empty name',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.onChangeListName(listName: ''),
        ),
        expect: () => [
          isA<ValidateEditListButton>().having(
            (s) => s.isEditButtonEnable,
            'isEditButtonEnable',
            isFalse,
          ),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ValidateEditListButton(false) for whitespace-only name',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.onChangeListName(listName: '   '),
        ),
        expect: () => [
          isA<ValidateEditListButton>().having(
            (s) => s.isEditButtonEnable,
            'isEditButtonEnable',
            isFalse,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ProductSelectionActivate
    // -----------------------------------------------------------------------
    group('ProductSelectionActivate', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ProductSelectionActivated(true) when activation requested',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productSelectionActivate(
            isSelectionActivate: true,
          ),
        ),
        expect: () => [
          isA<ProductSelectionActivated>().having(
            (s) => s.isSelectionActivate,
            'isSelectionActivate',
            isTrue,
          ),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ProductSelectionActivated(false) when deactivation requested',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productSelectionActivate(
            isSelectionActivate: false,
          ),
        ),
        expect: () => [
          isA<ProductSelectionActivated>().having(
            (s) => s.isSelectionActivate,
            'isSelectionActivate',
            isFalse,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ProductSelect
    // -----------------------------------------------------------------------
    group('ProductSelect', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ProductSelected with add type and correct index',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productSelect(
            productSelectionType: ProductSelectionType.add,
            index: 0,
          ),
        ),
        expect: () => [
          isA<ProductSelected>()
              .having(
                (s) => s.productSelectionType,
                'productSelectionType',
                ProductSelectionType.add,
              )
              .having((s) => s.index, 'index', 0),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ProductSelected with remove type',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productSelect(
            productSelectionType: ProductSelectionType.remove,
            index: 3,
          ),
        ),
        expect: () => [
          isA<ProductSelected>()
              .having(
                (s) => s.productSelectionType,
                'productSelectionType',
                ProductSelectionType.remove,
              )
              .having((s) => s.index, 'index', 3),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ProductListAllSelectUnSelect
    // -----------------------------------------------------------------------
    group('ProductListAllSelectUnSelect', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ProductListAllSelectUnSelected(isSelectAll: true)',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productListAllSelectUnSelect(
            isSelectAll: true,
          ),
        ),
        expect: () => [
          isA<ProductListAllSelectUnSelected>().having(
            (s) => s.isSelectAll,
            'isSelectAll',
            isTrue,
          ),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ProductListAllSelectUnSelected(isSelectAll: false)',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productListAllSelectUnSelect(
            isSelectAll: false,
          ),
        ),
        expect: () => [
          isA<ProductListAllSelectUnSelected>().having(
            (s) => s.isSelectAll,
            'isSelectAll',
            isFalse,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ProductListSelectionClear
    // -----------------------------------------------------------------------
    group('ProductListSelectionClear', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits ProductListSelectionCleared',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productListSelectionClear(),
        ),
        expect: () => [
          isA<ProductListSelectionCleared>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ProductDeleteFromList
    // -----------------------------------------------------------------------
    group('ProductDeleteFromList', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [ProductDeleteInProgress, ProductDeleteSuccess] on success',
        build: buildBloc,
        setUp: () {
          when(mockRepo.deleteProductsList(
            listId: anyNamed('listId'),
            addToListRequestModel: anyNamed('addToListRequestModel'),
          )).thenAnswer((_) async => _deleteProductsSuccess());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productDeleteFromList(
            listId: '1',
            listName: 'Test List',
            userList: _testAttributes,
          ),
        ),
        expect: () => [
          isA<ProductDeleteInProgress>(),
          isA<ProductDeleteSuccess>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [ProductDeleteInProgress, ProductDeleteFailure] on failure',
        build: buildBloc,
        setUp: () {
          when(mockRepo.deleteProductsList(
            listId: anyNamed('listId'),
            addToListRequestModel: anyNamed('addToListRequestModel'),
          )).thenAnswer((_) async => _deleteProductsFailure());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.productDeleteFromList(
            listId: '1',
            listName: 'Test List',
            userList: _testAttributes,
          ),
        ),
        expect: () => [
          isA<ProductDeleteInProgress>(),
          isA<ProductDeleteFailure>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // AddToListFromBrowse
    // -----------------------------------------------------------------------
    group('AddToListFromBrowse', () {
      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [AddToListLoading, AddToListSuccess, ...] on success',
        build: buildBloc,
        setUp: () {
          when(mockRepo.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenAnswer((_) async => _addToListSuccess());
          // Also stub the fetch that happens after success
          when(mockRepo.userListFromListId(
            listId: anyNamed('listId'),
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
          )).thenAnswer((_) async => _fetchSuccess());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.addToListFromBrowse(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'Test List',
          ),
        ),
        expect: () => [
          isA<AddToListLoading>(),
          isA<AddToListSuccess>(),
          // After success, a FetchProductListFromListId is added internally
          isA<ProductListLoading>(),
          isA<ProductListLoaded>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [AddToListLoading, AddToListFailure] when response is null',
        build: buildBloc,
        setUp: () {
          when(mockRepo.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenAnswer((_) async => _addToListNullData());
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.addToListFromBrowse(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'Test List',
          ),
        ),
        expect: () => [
          isA<AddToListLoading>(),
          isA<AddToListFailure>(),
        ],
      );

      blocTest<MyListDetailBloc, MyListDetailState>(
        'emits [AddToListLoading, AddToListFailure] when repository throws',
        build: buildBloc,
        setUp: () {
          when(mockRepo.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(
          const MyListDetailEvent.addToListFromBrowse(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'Test List',
          ),
        ),
        expect: () => [
          isA<AddToListLoading>(),
          isA<AddToListFailure>(),
        ],
      );
    });
  });
}
