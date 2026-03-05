import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_event.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_home/src/domain/models/just_verified_request_model.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual Mocks
// ---------------------------------------------------------------------------
class MockHomeRepository extends Mock implements HomeRepository {
  @override
  Future<NetworkResponse<List<GeneralProductListItemUIModel>?>>
      getJustVerified({
    JustVerifiedRequestModel? justVerifiedRequestModel,
  }) =>
          super.noSuchMethod(
            Invocation.method(#getJustVerified, [],
                {#justVerifiedRequestModel: justVerifiedRequestModel}),
            returnValue: Future<
                NetworkResponse<List<GeneralProductListItemUIModel>?>>.value(
              const NetworkResponse<List<GeneralProductListItemUIModel>?>(
                data: null,
                statusCode: 0,
                responseHeaders: {},
              ),
            ),
            returnValueForMissingStub: Future<
                NetworkResponse<List<GeneralProductListItemUIModel>?>>.value(
              const NetworkResponse<List<GeneralProductListItemUIModel>?>(
                data: null,
                statusCode: 0,
                responseHeaders: {},
              ),
            ),
          ) as Future<NetworkResponse<List<GeneralProductListItemUIModel>?>>;
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

NetworkResponse<List<GeneralProductListItemUIModel>?> _successResponse({
  List<GeneralProductListItemUIModel>? items,
}) =>
    NetworkResponse<List<GeneralProductListItemUIModel>?>(
      data: items ?? [_sampleProduct()],
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<List<GeneralProductListItemUIModel>?> _emptySuccessResponse() =>
    const NetworkResponse<List<GeneralProductListItemUIModel>?>(
      data: [],
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<List<GeneralProductListItemUIModel>?> _failureResponse() =>
    const NetworkResponse<List<GeneralProductListItemUIModel>?>(
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
    provideDummy<JustVerifiedRequestModel>(
      const JustVerifiedRequestModel(),
    );
    provideDummy<NetworkResponse<List<GeneralProductListItemUIModel>?>>(
      const NetworkResponse<List<GeneralProductListItemUIModel>?>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
  });

  setUp(() {
    mockHomeRepository = MockHomeRepository();
  });

  JustVerifiedBloc buildBloc() =>
      JustVerifiedBloc(homeRepository: mockHomeRepository);

  group('JustVerifiedBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is JustVerifiedListLoadInProgress', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<JustVerifiedListLoadInProgress>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // JustVerifiedProductsFetched - success
    // -----------------------------------------------------------------------
    group('JustVerifiedProductsFetched - success', () {
      blocTest<JustVerifiedBloc, JustVerifiedState>(
        'emits [LoadInProgress, LoadSuccess] when fetch succeeds with data',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) =>
            bloc.add(const JustVerifiedEvent.justVerifiedProductsFetched()),
        expect: () => [
          isA<JustVerifiedListLoadInProgress>(),
          isA<JustVerifiedListLoadSuccess>(),
        ],
      );

      blocTest<JustVerifiedBloc, JustVerifiedState>(
        'emits success state containing the returned product list',
        build: buildBloc,
        setUp: () {
          final products = [_sampleProduct(id: 1), _sampleProduct(id: 2)];
          when(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).thenAnswer((_) async => _successResponse(items: products));
        },
        act: (bloc) =>
            bloc.add(const JustVerifiedEvent.justVerifiedProductsFetched()),
        expect: () => [
          isA<JustVerifiedListLoadInProgress>(),
          isA<JustVerifiedListLoadSuccess>().having(
            (s) => s.justVerifiedList.length,
            'justVerifiedList length',
            2,
          ),
        ],
      );

      blocTest<JustVerifiedBloc, JustVerifiedState>(
        'emits [LoadInProgress, LoadSuccess] with empty list when response data is empty',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).thenAnswer((_) async => _emptySuccessResponse());
        },
        act: (bloc) =>
            bloc.add(const JustVerifiedEvent.justVerifiedProductsFetched()),
        expect: () => [
          isA<JustVerifiedListLoadInProgress>(),
          isA<JustVerifiedListLoadSuccess>().having(
            (s) => s.justVerifiedList,
            'justVerifiedList',
            isEmpty,
          ),
        ],
      );

      blocTest<JustVerifiedBloc, JustVerifiedState>(
        'calls homeRepository.getJustVerified once',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) =>
            bloc.add(const JustVerifiedEvent.justVerifiedProductsFetched()),
        verify: (_) {
          verify(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // JustVerifiedProductsFetched - failure (non-200 status)
    // -----------------------------------------------------------------------
    group('JustVerifiedProductsFetched - failure', () {
      blocTest<JustVerifiedBloc, JustVerifiedState>(
        'emits [LoadInProgress, LoadFailure] when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) =>
            bloc.add(const JustVerifiedEvent.justVerifiedProductsFetched()),
        expect: () => [
          isA<JustVerifiedListLoadInProgress>(),
          isA<JustVerifiedListLoadFailure>(),
        ],
      );

      blocTest<JustVerifiedBloc, JustVerifiedState>(
        'emits failure with UnknownNetworkException when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) =>
            bloc.add(const JustVerifiedEvent.justVerifiedProductsFetched()),
        expect: () => [
          isA<JustVerifiedListLoadInProgress>(),
          isA<JustVerifiedListLoadFailure>().having(
            (s) => s.exception,
            'exception',
            isA<UnknownNetworkException>(),
          ),
        ],
      );

      blocTest<JustVerifiedBloc, JustVerifiedState>(
        'emits [LoadInProgress, LoadFailure] when response data is null with 200 status',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).thenAnswer(
            (_) async =>
                const NetworkResponse<List<GeneralProductListItemUIModel>?>(
              data: null,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) =>
            bloc.add(const JustVerifiedEvent.justVerifiedProductsFetched()),
        expect: () => [
          isA<JustVerifiedListLoadInProgress>(),
          isA<JustVerifiedListLoadFailure>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // JustVerifiedProductsFetched - exception
    // -----------------------------------------------------------------------
    group('JustVerifiedProductsFetched - exception', () {
      blocTest<JustVerifiedBloc, JustVerifiedState>(
        'emits [LoadInProgress, LoadFailure] when repository throws an exception',
        build: buildBloc,
        setUp: () {
          when(mockHomeRepository.getJustVerified(
            justVerifiedRequestModel:
                anyNamed('justVerifiedRequestModel'),
          )).thenThrow(Exception('Network error'));
        },
        act: (bloc) =>
            bloc.add(const JustVerifiedEvent.justVerifiedProductsFetched()),
        expect: () => [
          isA<JustVerifiedListLoadInProgress>(),
          isA<JustVerifiedListLoadFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );
    });
  });
}
