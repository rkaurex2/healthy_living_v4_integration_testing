import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_event.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_home/src/domain/models/home_your_list_request.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual Mocks
// ---------------------------------------------------------------------------
class MockHomeRepository extends Mock implements HomeRepository {
  @override
  Future<NetworkResponse<List<UserListModel?>>> getYourLists({
    HomeYourListRequest? homeYourListRequest,
  }) =>
      super.noSuchMethod(
        Invocation.method(
            #getYourLists, [], {#homeYourListRequest: homeYourListRequest}),
        returnValue: Future<NetworkResponse<List<UserListModel?>>>.value(
          const NetworkResponse<List<UserListModel?>>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<List<UserListModel?>>>.value(
          const NetworkResponse<List<UserListModel?>>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<List<UserListModel?>>>;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
UserListModel _sampleUserList({int id = 1, String name = 'Test List'}) =>
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

NetworkResponse<List<UserListModel?>> _successResponse({
  List<UserListModel?>? items,
}) =>
    NetworkResponse<List<UserListModel?>>(
      data: items ?? [_sampleUserList()],
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<List<UserListModel?>> _emptySuccessResponse() =>
    const NetworkResponse<List<UserListModel?>>(
      data: [],
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<List<UserListModel?>> _failureResponse() =>
    const NetworkResponse<List<UserListModel?>>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
void main() {
  late MockHomeRepository mockHomeRepository;

  setUpAll(() {
    provideDummy<HomeYourListRequest>(
      const HomeYourListRequest(),
    );
    provideDummy<NetworkResponse<List<UserListModel?>>>(
      const NetworkResponse<List<UserListModel?>>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
  });

  setUp(() {
    mockHomeRepository = MockHomeRepository();
  });

  YourListBloc buildBloc() =>
      YourListBloc(homeRepository: mockHomeRepository);

  group('YourListBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is YourListLoadInProgress', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<YourListLoadInProgress>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // YourListFetched - success
    // -----------------------------------------------------------------------
    group('YourListFetched - success', () {
      blocTest<YourListBloc, YourListState>(
        'emits [LoadInProgress, LoadSuccess] when fetch succeeds with data',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) =>
            bloc.add(const YourListEvent.yourListFetched()),
        expect: () => [
          isA<YourListLoadInProgress>(),
          isA<YourListLoadSuccess>(),
        ],
      );

      blocTest<YourListBloc, YourListState>(
        'emits success state containing the returned user list model list',
        build: buildBloc,
        setUp: () {
          final lists = [
            _sampleUserList(id: 1, name: 'List A'),
            _sampleUserList(id: 2, name: 'List B'),
          ];
          when(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).thenAnswer((_) async => _successResponse(items: lists));
        },
        act: (bloc) =>
            bloc.add(const YourListEvent.yourListFetched()),
        expect: () => [
          isA<YourListLoadInProgress>(),
          isA<YourListLoadSuccess>().having(
            (s) => s.userListModelList.length,
            'userListModelList length',
            2,
          ),
        ],
      );

      blocTest<YourListBloc, YourListState>(
        'emits [LoadInProgress, LoadSuccess] with empty list when response data is empty',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).thenAnswer((_) async => _emptySuccessResponse());
        },
        act: (bloc) =>
            bloc.add(const YourListEvent.yourListFetched()),
        expect: () => [
          isA<YourListLoadInProgress>(),
          isA<YourListLoadSuccess>().having(
            (s) => s.userListModelList,
            'userListModelList',
            isEmpty,
          ),
        ],
      );

      blocTest<YourListBloc, YourListState>(
        'calls homeRepository.getYourLists once',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) =>
            bloc.add(const YourListEvent.yourListFetched()),
        verify: (_) {
          verify(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // YourListFetched - failure (non-200 status)
    // -----------------------------------------------------------------------
    group('YourListFetched - failure', () {
      blocTest<YourListBloc, YourListState>(
        'emits [LoadInProgress, LoadFailure] when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) =>
            bloc.add(const YourListEvent.yourListFetched()),
        expect: () => [
          isA<YourListLoadInProgress>(),
          isA<YourListLoadFailure>(),
        ],
      );

      blocTest<YourListBloc, YourListState>(
        'emits failure with UnknownNetworkException when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) =>
            bloc.add(const YourListEvent.yourListFetched()),
        expect: () => [
          isA<YourListLoadInProgress>(),
          isA<YourListLoadFailure>().having(
            (s) => s.exception,
            'exception',
            isA<UnknownNetworkException>(),
          ),
        ],
      );

      blocTest<YourListBloc, YourListState>(
        'emits [LoadInProgress, LoadFailure] when response data is null with 200 status',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).thenAnswer(
            (_) async => const NetworkResponse<List<UserListModel?>>(
              data: null,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) =>
            bloc.add(const YourListEvent.yourListFetched()),
        expect: () => [
          isA<YourListLoadInProgress>(),
          isA<YourListLoadFailure>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // YourListFetched - exception
    // -----------------------------------------------------------------------
    group('YourListFetched - exception', () {
      blocTest<YourListBloc, YourListState>(
        'emits [LoadInProgress, LoadFailure] when repository throws an exception',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getYourLists(
            homeYourListRequest: anyNamed('homeYourListRequest'),
          )).thenThrow(Exception('Network error'));
        },
        act: (bloc) =>
            bloc.add(const YourListEvent.yourListFetched()),
        expect: () => [
          isA<YourListLoadInProgress>(),
          isA<YourListLoadFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );
    });
  });
}
