import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_my_items/src/ui/bloc/my_items_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

NetworkResponse<UserListModel?> _listSuccess({
  int listId = 42,
  String listName = 'My Pantry',
}) =>
    NetworkResponse<UserListModel?>(
      data: UserListModel(
        id: listId,
        name: listName,
        items: [],
        skippedItems: null,
        createdAt: '2024-01-01',
        updatedAt: '2024-01-01',
        itemsCount: 0,
        totalEntries: 0,
        url: '',
      ),
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<List<UserListModel>?> _userListSuccess() =>
    NetworkResponse<List<UserListModel>?>(
      data: [
        UserListModel(
          id: 1,
          name: 'Shopping',
          items: [],
          skippedItems: null,
          createdAt: '2024-01-01',
          updatedAt: '2024-01-01',
          itemsCount: 0,
          totalEntries: 0,
          url: '',
        ),
        UserListModel(
          id: 2,
          name: 'Avoid',
          items: [],
          skippedItems: null,
          createdAt: '2024-01-01',
          updatedAt: '2024-01-01',
          itemsCount: 0,
          totalEntries: 0,
          url: '',
        ),
      ],
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<UserListModel?> _nullDataResponse() =>
    const NetworkResponse<UserListModel?>(
      data: null,
      statusCode: 422,
      responseHeaders: {},
    );

NetworkResponse<List<UserListModel>?> _userListFailure() =>
    const NetworkResponse<List<UserListModel>?>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

void main() {
  late MockMyItemsRepository mockRepo;
  late MockCreateListAnalytics mockAnalytics;

  setUp(() {
    mockRepo = MockMyItemsRepository();
    mockAnalytics = MockCreateListAnalytics();
    when(mockAnalytics.logListCreated(
      listId: anyNamed('listId'),
      listName: anyNamed('listName'),
      itemCount: anyNamed('itemCount'),
    )).thenAnswer((_) async {});
  });

  MyItemsBloc buildBloc() => MyItemsBloc(
        myItemsRepository: mockRepo,
        createListAnalytics: mockAnalytics,
      );

  group('MyItemsBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is InitialState', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<InitialState>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // OnNameListTextChanged — button validation
    // -----------------------------------------------------------------------
    group('OnNameListTextChanged', () {
      blocTest<MyItemsBloc, MyItemsState>(
        'emits ValidateCreateButton(isCreateButtonEnable: true) for valid name',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyItemsEvent.onNameListTextChanged(listName: 'My List'),
        ),
        expect: () => [
          isA<ValidateCreateButton>().having(
            (s) => s.isCreateButtonEnable,
            'isCreateButtonEnable',
            isTrue,
          ),
        ],
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'emits ValidateCreateButton(false) for empty string',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyItemsEvent.onNameListTextChanged(listName: ''),
        ),
        expect: () => [
          isA<ValidateCreateButton>().having(
            (s) => s.isCreateButtonEnable,
            'isCreateButtonEnable',
            isFalse,
          ),
        ],
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'emits ValidateCreateButton(false) for whitespace-only string',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyItemsEvent.onNameListTextChanged(listName: '   '),
        ),
        expect: () => [
          isA<ValidateCreateButton>().having(
            (s) => s.isCreateButtonEnable,
            'isCreateButtonEnable',
            isFalse,
          ),
        ],
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'emits ValidateCreateButton(true) for name with leading/trailing spaces',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const MyItemsEvent.onNameListTextChanged(listName: '  Grocery  '),
        ),
        expect: () => [
          isA<ValidateCreateButton>().having(
            (s) => s.isCreateButtonEnable,
            'isCreateButtonEnable',
            isTrue,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnCreateListButtonPressed
    // -----------------------------------------------------------------------
    group('OnCreateListButtonPressed', () {
      blocTest<MyItemsBloc, MyItemsState>(
        'emits [IsLoadingCreateListButton, OnCreateListSuccess] on success',
        build: buildBloc,
        setUp: () {
          when(mockRepo.createMyItemList(request: anyNamed('request')))
              .thenAnswer((_) async => _listSuccess());
        },
        act: (bloc) => bloc.add(
          const MyItemsEvent.onCreateListButtonPressed(listName: 'My Pantry'),
        ),
        expect: () => [
          isA<IsLoadingCreateListButton>().having(
            (s) => s.isLoading,
            'isLoading',
            isTrue,
          ),
          isA<OnCreateListSuccess>().having(
            (s) => s.listId,
            'listId',
            '42',
          ),
        ],
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'emits [IsLoadingCreateListButton, OnFailureCreateList] on API failure',
        build: buildBloc,
        setUp: () {
          when(mockRepo.createMyItemList(request: anyNamed('request')))
              .thenAnswer((_) async => _nullDataResponse());
        },
        act: (bloc) => bloc.add(
          const MyItemsEvent.onCreateListButtonPressed(listName: 'Fail List'),
        ),
        expect: () => [
          isA<IsLoadingCreateListButton>(),
          isA<OnFailureCreateList>(),
        ],
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'trims list name before sending to repository',
        build: buildBloc,
        setUp: () {
          when(mockRepo.createMyItemList(request: anyNamed('request')))
              .thenAnswer((_) async => _listSuccess());
        },
        act: (bloc) => bloc.add(
          const MyItemsEvent.onCreateListButtonPressed(
            listName: '  Trimmed Name  ',
          ),
        ),
        verify: (_) {
          final captured = verify(
            mockRepo.createMyItemList(
              request: captureAnyNamed('request'),
            ),
          ).captured.first as CreateListRequestModel;
          expect(captured.name, 'Trimmed Name');
        },
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'logs analytics event on successful creation',
        build: buildBloc,
        setUp: () {
          when(mockRepo.createMyItemList(request: anyNamed('request')))
              .thenAnswer((_) async => _listSuccess());
        },
        act: (bloc) => bloc.add(
          const MyItemsEvent.onCreateListButtonPressed(listName: 'My List'),
        ),
        verify: (_) {
          verify(mockAnalytics.logListCreated(
            listId: anyNamed('listId'),
            listName: anyNamed('listName'),
            itemCount: anyNamed('itemCount'),
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // GetUserList
    // -----------------------------------------------------------------------
    group('GetUserList', () {
      blocTest<MyItemsBloc, MyItemsState>(
        'emits [UserListLoading, OnLoadUserList] on success',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getUserList())
              .thenAnswer((_) async => _userListSuccess());
        },
        act: (bloc) => bloc.add(const MyItemsEvent.getUserList()),
        expect: () => [
          isA<UserListLoading>().having((s) => s.isLoading, 'isLoading', isTrue),
          isA<OnLoadUserList>().having(
            (s) => s.userListModelList.length,
            'list count',
            2,
          ),
        ],
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'emits [UserListLoading, OnFailureUserList] on API failure',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getUserList())
              .thenAnswer((_) async => _userListFailure());
        },
        act: (bloc) => bloc.add(const MyItemsEvent.getUserList()),
        expect: () => [
          isA<UserListLoading>(),
          isA<OnFailureUserList>(),
        ],
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'emits [UserListLoading, OnFailureUserList] when API throws NetworkException',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getUserList()).thenThrow(
            NetworkConnectionException(
              isTimeout: false,
              message: 'No internet',
              statusCode: null,
              originalError: '',
            ),
          );
        },
        act: (bloc) => bloc.add(const MyItemsEvent.getUserList()),
        expect: () => [
          isA<UserListLoading>(),
          isA<OnFailureUserList>(),
        ],
      );

      blocTest<MyItemsBloc, MyItemsState>(
        'calls getUserList exactly once',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getUserList())
              .thenAnswer((_) async => _userListSuccess());
        },
        act: (bloc) => bloc.add(const MyItemsEvent.getUserList()),
        verify: (_) {
          verify(mockRepo.getUserList()).called(1);
        },
      );
    });
  });
}
