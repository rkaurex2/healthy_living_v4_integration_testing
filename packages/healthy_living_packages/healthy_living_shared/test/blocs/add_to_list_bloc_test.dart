import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_repository.dart';
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_state.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

UserListModel _makeList({required int id, required String name}) =>
    UserListModel(
      id: id,
      name: name,
      createdAt: '2024-01-01',
      updatedAt: '2024-01-01',
      itemsCount: 0,
      totalEntries: 0,
      url: '',
      items: [],
      skippedItems: null,
    );

List<UserListModel> _unsortedLists() => [
      _makeList(id: 1, name: 'Zebra'),
      _makeList(id: 2, name: 'Apple'),
      _makeList(id: 3, name: 'Mango'),
    ];

NetworkResponse<List<UserListModel>?> _userListSuccess({
  List<UserListModel>? lists,
}) =>
    NetworkResponse<List<UserListModel>?>(
      data: lists ?? _unsortedLists(),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<List<UserListModel>?> _emptyUserListSuccess() =>
    const NetworkResponse<List<UserListModel>?>(
      data: [],
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<List<UserListModel>?> _userListFailure() =>
    const NetworkResponse<List<UserListModel>?>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

UserListModel _addToListResponse({
  List<int>? skippedItems,
}) =>
    UserListModel(
      id: 1,
      name: 'My List',
      createdAt: '2024-01-01',
      updatedAt: '2024-01-01',
      itemsCount: 1,
      totalEntries: 1,
      url: '',
      items: [],
      skippedItems: skippedItems,
    );

NetworkResponse<UserListModel?> _addToListSuccess({
  List<int>? skippedItems,
}) =>
    NetworkResponse<UserListModel?>(
      data: _addToListResponse(skippedItems: skippedItems),
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
  late MockMyListRepository mockMyListRepository;

  setUp(() {
    mockMyListRepository = MockMyListRepository();
  });

  AddToListBloc buildBloc() =>
      AddToListBloc(myListRepository: mockMyListRepository);

  group('AddToListBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is AddToListInitialState', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<AddToListInitialState>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // AddToListInitialized
    // -----------------------------------------------------------------------
    group('AddToListInitialized', () {
      blocTest<AddToListBloc, AddToListState>(
        'emits [AddToListInitialState] when initialized',
        build: buildBloc,
        act: (bloc) => bloc.add(const AddToListEvent.initialized()),
        expect: () => [isA<AddToListInitialState>()],
      );
    });

    // -----------------------------------------------------------------------
    // GetSavedList – success
    // -----------------------------------------------------------------------
    group('GetSavedList – success', () {
      blocTest<AddToListBloc, AddToListState>(
        'emits [DetailLoading, GetUserListSuccess] on success',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.getUsersLists())
              .thenAnswer((_) async => _userListSuccess());
        },
        act: (bloc) => bloc.add(const AddToListEvent.getSavedList()),
        expect: () => [
          isA<DetailLoading>(),
          isA<GetUserListSuccess>(),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'sorts lists alphabetically by name (case-insensitive)',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.getUsersLists())
              .thenAnswer((_) async => _userListSuccess());
        },
        act: (bloc) => bloc.add(const AddToListEvent.getSavedList()),
        expect: () => [
          isA<DetailLoading>(),
          isA<GetUserListSuccess>().having(
            (s) => s.userListModel?.map((e) => e?.name).toList(),
            'sorted list names',
            ['Apple', 'Mango', 'Zebra'],
          ),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'emits [DetailLoading, GetUserListSuccess] with empty list when data is empty',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.getUsersLists())
              .thenAnswer((_) async => _emptyUserListSuccess());
        },
        act: (bloc) => bloc.add(const AddToListEvent.getSavedList()),
        expect: () => [
          isA<DetailLoading>(),
          isA<GetUserListSuccess>().having(
            (s) => s.userListModel,
            'userListModel',
            isEmpty,
          ),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'calls getUsersLists exactly once',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.getUsersLists())
              .thenAnswer((_) async => _userListSuccess());
        },
        act: (bloc) => bloc.add(const AddToListEvent.getSavedList()),
        verify: (_) {
          verify(mockMyListRepository.getUsersLists()).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // GetSavedList – failure
    // -----------------------------------------------------------------------
    group('GetSavedList – failure', () {
      blocTest<AddToListBloc, AddToListState>(
        'emits [DetailLoading, LoadSavedListFailure] on API failure',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.getUsersLists())
              .thenAnswer((_) async => _userListFailure());
        },
        act: (bloc) => bloc.add(const AddToListEvent.getSavedList()),
        expect: () => [
          isA<DetailLoading>(),
          isA<LoadSavedListFailure>(),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'emits [DetailLoading, LoadSavedListFailure] when repository throws',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.getUsersLists())
              .thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(const AddToListEvent.getSavedList()),
        expect: () => [
          isA<DetailLoading>(),
          isA<LoadSavedListFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnChangeListItemIndex
    // -----------------------------------------------------------------------
    group('OnChangeListItemIndex', () {
      blocTest<AddToListBloc, AddToListState>(
        'emits UpdateSelectedIndex with correct index',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const AddToListEvent.onChangeListItemIndex(index: 2),
        ),
        expect: () => [
          isA<UpdateSelectedIndex>().having(
            (s) => s.index,
            'index',
            2,
          ),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'emits UpdateSelectedIndex with index 0',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const AddToListEvent.onChangeListItemIndex(index: 0),
        ),
        expect: () => [
          isA<UpdateSelectedIndex>().having(
            (s) => s.index,
            'index',
            0,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnDoneButtonPressed – success
    // -----------------------------------------------------------------------
    group('OnDoneButtonPressed – success', () {
      blocTest<AddToListBloc, AddToListState>(
        'emits [AddToListDoneButtonLoading, AddToListSuccess] on success',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenAnswer((_) async => _addToListSuccess());
        },
        act: (bloc) => bloc.add(
          const AddToListEvent.onDoneButtonPressed(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'My List',
          ),
        ),
        expect: () => [
          isA<AddToListDoneButtonLoading>(),
          isA<AddToListSuccess>(),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'sets isSingleAdded to true when single item is skipped',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenAnswer(
            (_) async => _addToListSuccess(skippedItems: [100]),
          );
        },
        act: (bloc) => bloc.add(
          const AddToListEvent.onDoneButtonPressed(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'My List',
          ),
        ),
        expect: () => [
          isA<AddToListDoneButtonLoading>(),
          isA<AddToListSuccess>().having(
            (s) => s.isSingleAdded,
            'isSingleAdded',
            isTrue,
          ),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'sets isSingleAdded to false when no items are skipped',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenAnswer(
            (_) async => _addToListSuccess(skippedItems: null),
          );
        },
        act: (bloc) => bloc.add(
          const AddToListEvent.onDoneButtonPressed(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'My List',
          ),
        ),
        expect: () => [
          isA<AddToListDoneButtonLoading>(),
          isA<AddToListSuccess>().having(
            (s) => s.isSingleAdded,
            'isSingleAdded',
            isFalse,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnDoneButtonPressed – failure
    // -----------------------------------------------------------------------
    group('OnDoneButtonPressed – failure', () {
      blocTest<AddToListBloc, AddToListState>(
        'emits [AddToListDoneButtonLoading, AddToListFailureState] when response is null',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenAnswer((_) async => _addToListNullData());
        },
        act: (bloc) => bloc.add(
          const AddToListEvent.onDoneButtonPressed(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'My List',
          ),
        ),
        expect: () => [
          isA<AddToListDoneButtonLoading>(),
          isA<AddToListFailureState>(),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'emits [AddToListDoneButtonLoading, AddToListFailureState] when repository throws',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(
          const AddToListEvent.onDoneButtonPressed(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'My List',
          ),
        ),
        expect: () => [
          isA<AddToListDoneButtonLoading>(),
          isA<AddToListFailureState>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );

      blocTest<AddToListBloc, AddToListState>(
        'calls addProductToList exactly once',
        build: buildBloc,
        setUp: () {
          when(mockMyListRepository.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).thenAnswer((_) async => _addToListSuccess());
        },
        act: (bloc) => bloc.add(
          const AddToListEvent.onDoneButtonPressed(
            userListItemsAttributesModel: _testAttributes,
            listId: '1',
            listName: 'My List',
          ),
        ),
        verify: (_) {
          verify(mockMyListRepository.addProductToList(
            addToListRequestModel: anyNamed('addToListRequestModel'),
            listId: anyNamed('listId'),
          )).called(1);
        },
      );
    });
  });
}
