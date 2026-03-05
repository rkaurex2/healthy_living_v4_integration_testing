import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_home/src/ui/bloc/home_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/home_event.dart';
import 'package:healthy_living_home/src/ui/bloc/home_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/entitlements/entitlements_verify_response_model.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';
import 'package:storage/storage.dart' show KeyValueStorage;

// ---------------------------------------------------------------------------
// Manual Mocks
// ---------------------------------------------------------------------------
class MockHomeRepository extends Mock implements HomeRepository {
  @override
  Future<NetworkResponse<UserListModel?>> createYourList({
    CreateListRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#createYourList, [], {#request: request}),
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

class MockSessionRepository extends Mock implements SessionRepository {
  @override
  Future<bool?> getIsAuthenticated() =>
      super.noSuchMethod(
        Invocation.method(#getIsAuthenticated, []),
        returnValue: Future<bool?>.value(null),
        returnValueForMissingStub: Future<bool?>.value(null),
      ) as Future<bool?>;

  @override
  Future<bool?> getIsPremiumUser() =>
      super.noSuchMethod(
        Invocation.method(#getIsPremiumUser, []),
        returnValue: Future<bool?>.value(null),
        returnValueForMissingStub: Future<bool?>.value(null),
      ) as Future<bool?>;

  @override
  Future<void> saveIsPremiumUser(bool? isPremiumUser) =>
      super.noSuchMethod(
        Invocation.method(#saveIsPremiumUser, [isPremiumUser]),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>;
}

class MockKeyValueStorage extends Mock implements KeyValueStorage {
  @override
  Future<String?> getString(String? key) =>
      super.noSuchMethod(
        Invocation.method(#getString, [key]),
        returnValue: Future<String?>.value(null),
        returnValueForMissingStub: Future<String?>.value(null),
      ) as Future<String?>;
}

class MockUserDataRepository extends Mock implements UserDataRepository {
  @override
  Future<NetworkResponse<EntitlementsVerifyResponseModel>> verifyEntitlements() =>
      super.noSuchMethod(
        Invocation.method(#verifyEntitlements, []),
        returnValue: Future<NetworkResponse<EntitlementsVerifyResponseModel>>.value(
          const NetworkResponse<EntitlementsVerifyResponseModel>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<EntitlementsVerifyResponseModel>>.value(
          const NetworkResponse<EntitlementsVerifyResponseModel>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<EntitlementsVerifyResponseModel>>;
}

class MockCreateListAnalytics extends Mock implements CreateListAnalytics {
  @override
  Future<void> logListCreated({
    String? listId,
    String? listName,
    int? itemCount,
  }) =>
      super.noSuchMethod(
        Invocation.method(#logListCreated, [], {
          #listId: listId,
          #listName: listName,
          #itemCount: itemCount,
        }),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
UserListModel _sampleUserList({
  int id = 42,
  String name = 'My New List',
}) =>
    UserListModel(
      id: id,
      createdAt: '2024-01-01',
      updatedAt: '2024-01-01',
      name: name,
      itemsCount: 0,
      totalEntries: 0,
      url: 'https://example.com/list/$id',
      items: const [],
      skippedItems: null,
    );

NetworkResponse<UserListModel?> _createListSuccessResponse({
  int id = 42,
  String name = 'My New List',
}) =>
    NetworkResponse<UserListModel?>(
      data: _sampleUserList(id: id, name: name),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<UserListModel?> _createListFailureResponse() =>
    const NetworkResponse<UserListModel?>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
void main() {
  late MockHomeRepository mockHomeRepository;
  late MockSessionRepository mockSessionRepository;
  late MockKeyValueStorage mockKeyValueStorage;
  late MockUserDataRepository mockUserDataRepository;
  late MockCreateListAnalytics mockCreateListAnalytics;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    mockSessionRepository = MockSessionRepository();
    mockKeyValueStorage = MockKeyValueStorage();
    mockUserDataRepository = MockUserDataRepository();
    mockCreateListAnalytics = MockCreateListAnalytics();
  });

  HomeBloc buildBloc() => HomeBloc(
        sessionRepository: mockSessionRepository,
        homeRepository: mockHomeRepository,
        keyValueStorage: mockKeyValueStorage,
        userDataRepository: mockUserDataRepository,
        createListAnalytics: mockCreateListAnalytics,
      );

  /// Sets up default stubs for the homeInitialized event path when the user
  /// is NOT authenticated.
  void stubUnauthenticatedInit() {
    when(mockSessionRepository.getIsAuthenticated())
        .thenAnswer((_) async => false);
    when(mockSessionRepository.getIsPremiumUser())
        .thenAnswer((_) async => false);
    when(mockKeyValueStorage.getString(HealthyLivingSharedKeyValueConstant.user))
        .thenAnswer((_) async => null);
  }

  /// Sets up default stubs for the homeInitialized event path when the user
  /// IS authenticated and NOT premium.
  void stubAuthenticatedNonPremiumInit() {
    when(mockSessionRepository.getIsAuthenticated())
        .thenAnswer((_) async => true);
    when(mockSessionRepository.getIsPremiumUser())
        .thenAnswer((_) async => false);
    when(mockKeyValueStorage.getString(HealthyLivingSharedKeyValueConstant.user))
        .thenAnswer((_) async => null);
    when(mockUserDataRepository.verifyEntitlements()).thenAnswer(
      (_) async => const NetworkResponse<EntitlementsVerifyResponseModel>(
        data: EntitlementsVerifyResponseModel(userData: null),
        statusCode: 200,
        responseHeaders: {},
      ),
    );
    when(mockSessionRepository.saveIsPremiumUser(false))
        .thenAnswer((_) async {});
  }

  group('HomeBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is HomeStarted with default flags', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<HomeStarted>());
      final state = bloc.state as HomeStarted;
      expect(state.shouldRefreshPremiumFlag, false);
      expect(state.isSubscriptionExpired, false);
      bloc.close();
    });

    test('isAuthenticated defaults to false', () {
      final bloc = buildBloc();
      expect(bloc.isAuthenticated, false);
      bloc.close();
    });

    test('userDataModel defaults to null', () {
      final bloc = buildBloc();
      expect(bloc.userDataModel, isNull);
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // HomeInitialized - unauthenticated
    // -----------------------------------------------------------------------
    group('HomeInitialized - unauthenticated', () {
      blocTest<HomeBloc, HomeState>(
        'emits [HomeStarted] with no refresh needed when user is not authenticated',
        build: buildBloc,
        setUp: stubUnauthenticatedInit,
        act: (bloc) => bloc.add(const HomeEvent.homeInitialized()),
        expect: () => [
          isA<HomeStarted>().having(
            (s) => s.shouldRefreshPremiumFlag,
            'shouldRefreshPremiumFlag',
            false,
          ).having(
            (s) => s.isSubscriptionExpired,
            'isSubscriptionExpired',
            false,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'does not call verifyEntitlements when user is not authenticated',
        build: buildBloc,
        setUp: stubUnauthenticatedInit,
        act: (bloc) => bloc.add(const HomeEvent.homeInitialized()),
        verify: (_) {
          verifyNever(mockUserDataRepository.verifyEntitlements());
        },
      );

      blocTest<HomeBloc, HomeState>(
        'sets isAuthenticated to false on bloc when not authenticated',
        build: buildBloc,
        setUp: stubUnauthenticatedInit,
        act: (bloc) => bloc.add(const HomeEvent.homeInitialized()),
        verify: (bloc) {
          expect(bloc.isAuthenticated, false);
        },
      );
    });

    // -----------------------------------------------------------------------
    // HomeInitialized - authenticated, not premium
    // -----------------------------------------------------------------------
    group('HomeInitialized - authenticated', () {
      blocTest<HomeBloc, HomeState>(
        'emits [HomeStarted] when user is authenticated and entitlements verified',
        build: buildBloc,
        setUp: stubAuthenticatedNonPremiumInit,
        act: (bloc) => bloc.add(const HomeEvent.homeInitialized()),
        expect: () => [
          isA<HomeStarted>(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'calls verifyEntitlements when user is authenticated',
        build: buildBloc,
        setUp: stubAuthenticatedNonPremiumInit,
        act: (bloc) => bloc.add(const HomeEvent.homeInitialized()),
        verify: (_) {
          verify(mockUserDataRepository.verifyEntitlements()).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'sets isAuthenticated to true on bloc when authenticated',
        build: buildBloc,
        setUp: stubAuthenticatedNonPremiumInit,
        act: (bloc) => bloc.add(const HomeEvent.homeInitialized()),
        verify: (bloc) {
          expect(bloc.isAuthenticated, true);
        },
      );
    });

    // -----------------------------------------------------------------------
    // HomeInitialized - entitlements exception
    // -----------------------------------------------------------------------
    group('HomeInitialized - entitlements exception', () {
      blocTest<HomeBloc, HomeState>(
        'still emits HomeStarted when verifyEntitlements throws',
        build: buildBloc,
        setUp: () {
          when(mockSessionRepository.getIsAuthenticated())
              .thenAnswer((_) async => true);
          when(mockSessionRepository.getIsPremiumUser())
              .thenAnswer((_) async => false);
          when(mockKeyValueStorage.getString(HealthyLivingSharedKeyValueConstant.user))
              .thenAnswer((_) async => null);
          when(mockUserDataRepository.verifyEntitlements())
              .thenThrow(Exception('Entitlement API error'));
        },
        act: (bloc) => bloc.add(const HomeEvent.homeInitialized()),
        expect: () => [
          isA<HomeStarted>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnNameListTextChanged - validation
    // -----------------------------------------------------------------------
    group('OnNameListTextChanged', () {
      blocTest<HomeBloc, HomeState>(
        'emits [ValidateCreateButton(true)] when listName is non-empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const HomeEvent.onNameListTextChanged(listName: 'My List'),
        ),
        expect: () => [
          isA<ValidateCreateButton>().having(
            (s) => s.isCreateButtonEnable,
            'isCreateButtonEnable',
            true,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [ValidateCreateButton(false)] when listName is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const HomeEvent.onNameListTextChanged(listName: ''),
        ),
        expect: () => [
          isA<ValidateCreateButton>().having(
            (s) => s.isCreateButtonEnable,
            'isCreateButtonEnable',
            false,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [ValidateCreateButton(false)] when listName is only whitespace',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const HomeEvent.onNameListTextChanged(listName: '   '),
        ),
        expect: () => [
          isA<ValidateCreateButton>().having(
            (s) => s.isCreateButtonEnable,
            'isCreateButtonEnable',
            false,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [ValidateCreateButton(true)] when listName has leading/trailing spaces but valid content',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const HomeEvent.onNameListTextChanged(listName: '  My List  '),
        ),
        expect: () => [
          isA<ValidateCreateButton>().having(
            (s) => s.isCreateButtonEnable,
            'isCreateButtonEnable',
            true,
          ),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // CreateYourList - success
    // -----------------------------------------------------------------------
    group('CreateYourList - success', () {
      blocTest<HomeBloc, HomeState>(
        'emits [CreateListInProgress, CreateListSuccess] when list creation succeeds',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenAnswer(
            (_) async => _createListSuccessResponse(),
          );
          when(mockCreateListAnalytics.logListCreated(
            listId: '42',
            listName: 'My New List',
            itemCount: 0,
          )).thenAnswer((_) async {});
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        expect: () => [
          isA<CreateListInProgress>(),
          isA<CreateListSuccess>(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits CreateListSuccess with correct listId',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenAnswer(
            (_) async => _createListSuccessResponse(id: 99),
          );
          when(mockCreateListAnalytics.logListCreated(
            listId: '99',
            listName: 'My New List',
            itemCount: 0,
          )).thenAnswer((_) async {});
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        expect: () => [
          isA<CreateListInProgress>(),
          isA<CreateListSuccess>().having(
            (s) => s.listId,
            'listId',
            '99',
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'calls homeRepository.createYourList once',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenAnswer(
            (_) async => _createListSuccessResponse(),
          );
          when(mockCreateListAnalytics.logListCreated(
            listId: '42',
            listName: 'My New List',
            itemCount: 0,
          )).thenAnswer((_) async {});
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        verify: (_) {
          verify(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'calls createListAnalytics.logListCreated on success',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenAnswer(
            (_) async =>
                _createListSuccessResponse(id: 42, name: 'My New List'),
          );
          when(mockCreateListAnalytics.logListCreated(
            listId: '42',
            listName: 'My New List',
            itemCount: 0,
          )).thenAnswer((_) async {});
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        verify: (_) {
          verify(mockCreateListAnalytics.logListCreated(
            listId: '42',
            listName: 'My New List',
            itemCount: 0,
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // CreateYourList - failure (non-200 status)
    // -----------------------------------------------------------------------
    group('CreateYourList - failure', () {
      blocTest<HomeBloc, HomeState>(
        'emits [CreateListInProgress, CreateListInFailure] when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenAnswer(
            (_) async => _createListFailureResponse(),
          );
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        expect: () => [
          isA<CreateListInProgress>(),
          isA<CreateListInFailure>(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits failure with UnknownNetworkException when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenAnswer(
            (_) async => _createListFailureResponse(),
          );
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        expect: () => [
          isA<CreateListInProgress>(),
          isA<CreateListInFailure>().having(
            (s) => s.exception,
            'exception',
            isA<UnknownNetworkException>(),
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [CreateListInProgress, CreateListInFailure] when response data is null with 200 status',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenAnswer(
            (_) async => const NetworkResponse<UserListModel?>(
              data: null,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        expect: () => [
          isA<CreateListInProgress>(),
          isA<CreateListInFailure>(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'does not call createListAnalytics.logListCreated on failure',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenAnswer(
            (_) async => _createListFailureResponse(),
          );
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        verify: (_) {
          verifyZeroInteractions(mockCreateListAnalytics);
        },
      );
    });

    // -----------------------------------------------------------------------
    // CreateYourList - exception
    // -----------------------------------------------------------------------
    group('CreateYourList - exception', () {
      blocTest<HomeBloc, HomeState>(
        'emits [CreateListInProgress, CreateListInFailure] when repository throws an exception',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.createYourList(
            request: const CreateListRequestModel(name: 'My New List'),
          )).thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(
          const HomeEvent.createYourList(name: 'My New List'),
        ),
        expect: () => [
          isA<CreateListInProgress>(),
          isA<CreateListInFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );
    });
  });
}
