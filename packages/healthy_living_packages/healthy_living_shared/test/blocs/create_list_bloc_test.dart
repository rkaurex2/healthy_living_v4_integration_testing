import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/user_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_repository.dart';
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_state.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual mocks
// ---------------------------------------------------------------------------

class MockMyListRepository extends Mock implements MyListRepository {
  @override
  Future<NetworkResponse<UserListModel?>> createMyItemList({
    CreateListRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#createMyItemList, [], {#request: request}),
        returnValue: Future<NetworkResponse<UserListModel?>>.value(
          const NetworkResponse<UserListModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub: Future<NetworkResponse<UserListModel?>>.value(
          const NetworkResponse<UserListModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<UserListModel?>>;

  @override
  Future<NetworkResponse<UserListModel?>> addProductToList({
    AddToListRequestModel? addToListRequestModel,
    String? listId,
  }) =>
      super.noSuchMethod(
        Invocation.method(#addProductToList, [],
            {#addToListRequestModel: addToListRequestModel, #listId: listId}),
        returnValue: Future<NetworkResponse<UserListModel?>>.value(
          const NetworkResponse<UserListModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub: Future<NetworkResponse<UserListModel?>>.value(
          const NetworkResponse<UserListModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<UserListModel?>>;
}

class MockCreateListAnalytics extends Mock implements CreateListAnalytics {
  @override
  Future<void> logListCreated({
    String? listId,
    String? listName,
    int? itemCount,
  }) =>
      super.noSuchMethod(
        Invocation.method(#logListCreated, [],
            {#listId: listId, #listName: listName, #itemCount: itemCount}),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>;
}

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

CreateListBloc _buildBloc({
  required MockMyListRepository repo,
  required MockCreateListAnalytics analytics,
}) =>
    CreateListBloc(
      myListRepository: repo,
      createListAnalytics: analytics,
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockMyListRepository repo;
  late MockCreateListAnalytics analytics;

  setUpAll(() {
    provideDummy<NetworkResponse<UserListModel?>>(
      const NetworkResponse<UserListModel?>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
    provideDummy<CreateListRequestModel>(
      const CreateListRequestModel(name: ''),
    );
    provideDummy<AddToListRequestModel>(
      AddToListRequestModel(
        userList: const UserListRequestModel(
          name: '',
          itemsAttributes: [],
        ),
      ),
    );
  });

  setUp(() {
    repo = MockMyListRepository();
    analytics = MockCreateListAnalytics();
  });

  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('CreateListBloc - initial state', () {
    test('starts with CreateListInitialState', () {
      final bloc = _buildBloc(repo: repo, analytics: analytics);
      expect(bloc.state, isA<CreateListInitialState>());
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // OnNameListTextChanged
  // -------------------------------------------------------------------------
  group('OnNameListTextChanged', () {
    blocTest<CreateListBloc, CreateListState>(
      'emits ValidateCreateButton(true) when name is non-empty',
      build: () => _buildBloc(repo: repo, analytics: analytics),
      act: (bloc) => bloc.add(
        const CreateListEvent.onNameListTextChanged(listName: 'My List'),
      ),
      expect: () => [
        isA<ValidateCreateButton>()
            .having((s) => s.isCreateButtonEnable, 'isCreateButtonEnable', true),
      ],
    );

    blocTest<CreateListBloc, CreateListState>(
      'emits ValidateCreateButton(false) when name is empty',
      build: () => _buildBloc(repo: repo, analytics: analytics),
      act: (bloc) => bloc.add(
        const CreateListEvent.onNameListTextChanged(listName: ''),
      ),
      expect: () => [
        isA<ValidateCreateButton>().having(
          (s) => s.isCreateButtonEnable,
          'isCreateButtonEnable',
          false,
        ),
      ],
    );

    blocTest<CreateListBloc, CreateListState>(
      'emits ValidateCreateButton(false) when name is only whitespace',
      build: () => _buildBloc(repo: repo, analytics: analytics),
      act: (bloc) => bloc.add(
        const CreateListEvent.onNameListTextChanged(listName: '   '),
      ),
      expect: () => [
        isA<ValidateCreateButton>().having(
          (s) => s.isCreateButtonEnable,
          'isCreateButtonEnable',
          false,
        ),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // OnCreateListButtonPressed - success
  // -------------------------------------------------------------------------
  group('OnCreateListButtonPressed - success', () {
    blocTest<CreateListBloc, CreateListState>(
      'emits [loading, success] when repository returns success',
      build: () {
        when(repo.createMyItemList(request: anyNamed('request'))).thenAnswer(
          (_) async => NetworkResponse<UserListModel?>(
            data: _makeList(id: 42, name: 'Test List'),
            statusCode: 200,
            responseHeaders: const {},
          ),
        );
        when(analytics.logListCreated(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          itemCount: anyNamed('itemCount'),
        )).thenAnswer((_) async {});

        return _buildBloc(repo: repo, analytics: analytics);
      },
      act: (bloc) => bloc.add(
        const CreateListEvent.onCreateListButtonPressed(
          listName: 'Test List',
        ),
      ),
      expect: () => [
        isA<IsLoadingCreateListButton>()
            .having((s) => s.isLoading, 'isLoading', true),
        isA<OnSuccessCreateList>()
            .having((s) => s.listId, 'listId', '42')
            .having((s) => s.listName, 'listName', 'Test List'),
      ],
      verify: (_) {
        verify(analytics.logListCreated(
          listId: anyNamed('listId'),
          listName: anyNamed('listName'),
          itemCount: anyNamed('itemCount'),
        )).called(1);
      },
    );
  });

  // -------------------------------------------------------------------------
  // OnCreateListButtonPressed - failure (non-success response)
  // -------------------------------------------------------------------------
  group('OnCreateListButtonPressed - failure', () {
    blocTest<CreateListBloc, CreateListState>(
      'emits [loading, failure] when repository returns non-success',
      build: () {
        when(repo.createMyItemList(request: anyNamed('request'))).thenAnswer(
          (_) async => const NetworkResponse<UserListModel?>(
            data: null,
            statusCode: 500,
            responseHeaders: {},
          ),
        );
        return _buildBloc(repo: repo, analytics: analytics);
      },
      act: (bloc) => bloc.add(
        const CreateListEvent.onCreateListButtonPressed(
          listName: 'My List',
        ),
      ),
      expect: () => [
        isA<IsLoadingCreateListButton>(),
        isA<OnFailureCreateList>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // OnCreateListButtonPressed - NetworkException
  // -------------------------------------------------------------------------
  group('OnCreateListButtonPressed - exception', () {
    blocTest<CreateListBloc, CreateListState>(
      'emits [loading, failure] when repository throws NetworkException',
      build: () {
        when(repo.createMyItemList(request: anyNamed('request'))).thenThrow(
          UnknownNetworkException(
            message: 'timeout',
            statusCode: 0,
            originalError: '',
          ),
        );
        return _buildBloc(repo: repo, analytics: analytics);
      },
      act: (bloc) => bloc.add(
        const CreateListEvent.onCreateListButtonPressed(
          listName: 'My List',
        ),
      ),
      expect: () => [
        isA<IsLoadingCreateListButton>(),
        isA<OnFailureCreateList>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // OnExistCreateListSheet
  // -------------------------------------------------------------------------
  group('OnExistCreateListSheet', () {
    blocTest<CreateListBloc, CreateListState>(
      'emits OnExistCreateListSheetState with isSuccess true',
      build: () => _buildBloc(repo: repo, analytics: analytics),
      act: (bloc) => bloc.add(
        const CreateListEvent.onExistCreateListSheet(isSuccess: true),
      ),
      expect: () => [
        isA<OnExistCreateListSheetState>()
            .having((s) => s.isSuccess, 'isSuccess', true),
      ],
    );

    blocTest<CreateListBloc, CreateListState>(
      'emits OnExistCreateListSheetState with isSuccess false',
      build: () => _buildBloc(repo: repo, analytics: analytics),
      act: (bloc) => bloc.add(
        const CreateListEvent.onExistCreateListSheet(isSuccess: false),
      ),
      expect: () => [
        isA<OnExistCreateListSheetState>()
            .having((s) => s.isSuccess, 'isSuccess', false),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ProductAddToList - success
  // -------------------------------------------------------------------------
  group('ProductAddToList - success', () {
    blocTest<CreateListBloc, CreateListState>(
      'emits AddToListSuccess when repository returns success',
      build: () {
        when(repo.addProductToList(
          addToListRequestModel: anyNamed('addToListRequestModel'),
          listId: anyNamed('listId'),
        )).thenAnswer(
          (_) async => NetworkResponse<UserListModel?>(
            data: _makeList(id: 1, name: 'List'),
            statusCode: 200,
            responseHeaders: const {},
          ),
        );
        return _buildBloc(repo: repo, analytics: analytics);
      },
      act: (bloc) => bloc.add(
        const CreateListEvent.productAddToList(
          userListItemsAttributesModel: [
            UserListItemsAttributesModel(
              productType: 'cosmetic',
              productId: 123,
            ),
          ],
          listId: '1',
          listName: 'My List',
        ),
      ),
      expect: () => [
        isA<AddToListSuccess>()
            .having((s) => s.listId, 'listId', '1'),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ProductAddToList - failure
  // -------------------------------------------------------------------------
  group('ProductAddToList - failure', () {
    blocTest<CreateListBloc, CreateListState>(
      'emits AddToListFailure when repository returns non-success',
      build: () {
        when(repo.addProductToList(
          addToListRequestModel: anyNamed('addToListRequestModel'),
          listId: anyNamed('listId'),
        )).thenAnswer(
          (_) async => const NetworkResponse<UserListModel?>(
            data: null,
            statusCode: 500,
            responseHeaders: {},
          ),
        );
        return _buildBloc(repo: repo, analytics: analytics);
      },
      act: (bloc) => bloc.add(
        const CreateListEvent.productAddToList(
          userListItemsAttributesModel: [
            UserListItemsAttributesModel(
              productType: 'cosmetic',
              productId: 123,
            ),
          ],
          listId: '1',
          listName: 'My List',
        ),
      ),
      expect: () => [isA<AddToListFailure>()],
    );
  });

  // -------------------------------------------------------------------------
  // ProductAddToList - exception
  // -------------------------------------------------------------------------
  group('ProductAddToList - exception', () {
    blocTest<CreateListBloc, CreateListState>(
      'emits AddToListFailure when repository throws',
      build: () {
        when(repo.addProductToList(
          addToListRequestModel: anyNamed('addToListRequestModel'),
          listId: anyNamed('listId'),
        )).thenThrow(Exception('Network error'));
        return _buildBloc(repo: repo, analytics: analytics);
      },
      act: (bloc) => bloc.add(
        const CreateListEvent.productAddToList(
          userListItemsAttributesModel: [
            UserListItemsAttributesModel(
              productType: 'cosmetic',
              productId: 123,
            ),
          ],
          listId: '1',
          listName: 'My List',
        ),
      ),
      expect: () => [isA<AddToListFailure>()],
    );
  });
}
