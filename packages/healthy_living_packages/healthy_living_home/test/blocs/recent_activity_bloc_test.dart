import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_event.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual Mocks
// ---------------------------------------------------------------------------
class MockHomeRepository extends Mock implements HomeRepository {
  @override
  Future<NetworkResponse<List<GeneralProductListItemUIModel>>>
      getRecentViewList() =>
          super.noSuchMethod(
            Invocation.method(#getRecentViewList, []),
            returnValue: Future<
                NetworkResponse<List<GeneralProductListItemUIModel>>>.value(
              const NetworkResponse<List<GeneralProductListItemUIModel>>(
                data: null,
                statusCode: 0,
                responseHeaders: {},
              ),
            ),
            returnValueForMissingStub: Future<
                NetworkResponse<List<GeneralProductListItemUIModel>>>.value(
              const NetworkResponse<List<GeneralProductListItemUIModel>>(
                data: null,
                statusCode: 0,
                responseHeaders: {},
              ),
            ),
          ) as Future<NetworkResponse<List<GeneralProductListItemUIModel>>>;
}

class MockSessionRepository extends Mock implements SessionRepository {
  @override
  Future<bool> saveLogs({
    String? message,
    bool? saveToFile,
  }) =>
      super.noSuchMethod(
        Invocation.method(
            #saveLogs, [], {#message: message, #saveToFile: saveToFile}),
        returnValue: Future<bool>.value(false),
        returnValueForMissingStub: Future<bool>.value(false),
      ) as Future<bool>;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
GeneralProductListItemUIModel _sampleProduct({int id = 1}) =>
    GeneralProductListItemUIModel(
      productId: id,
      imageUrl: 'https://example.com/image.png',
      brandName: 'Test Brand',
      productName: 'Test Product $id',
      productType: 'food',
      isEWGVerified: true,
      score: '1',
      categoryType: 'food',
    );

NetworkResponse<List<GeneralProductListItemUIModel>> _successResponse({
  List<GeneralProductListItemUIModel>? items,
}) =>
    NetworkResponse<List<GeneralProductListItemUIModel>>(
      data: items ?? [_sampleProduct()],
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<List<GeneralProductListItemUIModel>> _emptySuccessResponse() =>
    const NetworkResponse<List<GeneralProductListItemUIModel>>(
      data: [],
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<List<GeneralProductListItemUIModel>> _failureResponse() =>
    const NetworkResponse<List<GeneralProductListItemUIModel>>(
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

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    mockSessionRepository = MockSessionRepository();

    // Default stub for saveLogs (always called in the BLoC)
    when(mockSessionRepository.saveLogs(
      message: anyNamed('message'),
      saveToFile: anyNamed('saveToFile'),
    )).thenAnswer((_) async => true);
  });

  RecentActivityBloc buildBloc() => RecentActivityBloc(
        homeRepository: mockHomeRepository,
        sessionRepository: mockSessionRepository,
      );

  group('RecentActivityBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is RecentActivityLoadInProgress', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<RecentActivityLoadInProgress>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // RecentActivityProductsFetched - success
    // -----------------------------------------------------------------------
    group('RecentActivityProductsFetched - success', () {
      blocTest<RecentActivityBloc, RecentActivityState>(
        'emits [LoadInProgress, LoadSuccess] when fetch succeeds with data',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        expect: () => [
          isA<RecentActivityLoadInProgress>(),
          isA<RecentActivityLoadSuccess>(),
        ],
      );

      blocTest<RecentActivityBloc, RecentActivityState>(
        'emits success state containing the returned product list',
        build: buildBloc,
        setUp: () {
          final products = [_sampleProduct(id: 1), _sampleProduct(id: 2)];
          when(mockHomeRepository.getRecentViewList())
              .thenAnswer((_) async => _successResponse(items: products));
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        expect: () => [
          isA<RecentActivityLoadInProgress>(),
          isA<RecentActivityLoadSuccess>().having(
            (s) => s.recentActivityProductList.length,
            'recentActivityProductList length',
            2,
          ),
        ],
      );

      blocTest<RecentActivityBloc, RecentActivityState>(
        'emits [LoadInProgress, LoadSuccess] with empty list when response data is empty',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenAnswer((_) async => _emptySuccessResponse());
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        expect: () => [
          isA<RecentActivityLoadInProgress>(),
          isA<RecentActivityLoadSuccess>().having(
            (s) => s.recentActivityProductList,
            'recentActivityProductList',
            isEmpty,
          ),
        ],
      );

      blocTest<RecentActivityBloc, RecentActivityState>(
        'calls homeRepository.getRecentViewList once',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        verify: (_) {
          verify(mockHomeRepository.getRecentViewList()).called(1);
        },
      );

      blocTest<RecentActivityBloc, RecentActivityState>(
        'calls sessionRepository.saveLogs with success message on success',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        verify: (_) {
          verify(mockSessionRepository.saveLogs(
            message: 'getRecentViewList status:  success',
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // RecentActivityProductsFetched - failure (non-200 status)
    // -----------------------------------------------------------------------
    group('RecentActivityProductsFetched - failure', () {
      blocTest<RecentActivityBloc, RecentActivityState>(
        'emits [LoadInProgress, LoadFailure] when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        expect: () => [
          isA<RecentActivityLoadInProgress>(),
          isA<RecentActivityLoadFailure>(),
        ],
      );

      blocTest<RecentActivityBloc, RecentActivityState>(
        'emits failure with UnknownNetworkException when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        expect: () => [
          isA<RecentActivityLoadInProgress>(),
          isA<RecentActivityLoadFailure>().having(
            (s) => s.exception,
            'exception',
            isA<UnknownNetworkException>(),
          ),
        ],
      );

      blocTest<RecentActivityBloc, RecentActivityState>(
        'calls sessionRepository.saveLogs with failed message on failure',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        verify: (_) {
          verify(mockSessionRepository.saveLogs(
            message: 'getRecentViewList status:  failed',
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // RecentActivityProductsFetched - exception
    // -----------------------------------------------------------------------
    group('RecentActivityProductsFetched - exception', () {
      blocTest<RecentActivityBloc, RecentActivityState>(
        'emits [LoadInProgress, LoadFailure] when repository throws an exception',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        expect: () => [
          isA<RecentActivityLoadInProgress>(),
          isA<RecentActivityLoadFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );

      blocTest<RecentActivityBloc, RecentActivityState>(
        'calls sessionRepository.saveLogs with throw message on exception',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getRecentViewList())
              .thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(
          const RecentActivityEvent.recentActivityProductsFetched(),
        ),
        verify: (_) {
          verify(mockSessionRepository.saveLogs(
            message: 'getRecentViewList exception:  throw',
          )).called(1);
        },
      );
    });
  });
}
