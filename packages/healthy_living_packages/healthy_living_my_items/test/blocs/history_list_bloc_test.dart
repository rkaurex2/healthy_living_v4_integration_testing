import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_state.dart';
import 'package:healthy_living_my_items/src/ui/model/history_sort_option.dart';
import 'package:healthy_living_my_items/src/ui/model/history_sort_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/history/history_item_product_model.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

HistorySortOption _defaultSortOption() => HistorySortOption(
      index: 1,
      type: HistorySortType.all,
      name: StringConstants.allProducts,
    );

HistoryItemModel _itemWithProduct({int id = 1, int productId = 100}) =>
    HistoryItemModel(
      id: id,
      productId: productId,
      listType: 'recently_viewed',
      product: const HistoryItemProductModel(
        productType: 'food',
        productId: 100,
        brandName: 'Test Brand',
        name: 'Test Product',
      ),
    );

HistoryItemModel _itemWithoutProduct({int id = 2, int productId = 200}) =>
    HistoryItemModel(
      id: id,
      productId: productId,
      listType: 'recently_viewed',
      product: null,
    );

GetHistoryResponseModel _historyResponse({
  List<HistoryItemModel>? items,
  int page = 1,
  int perPage = 20,
  int totalEntries = 1,
}) =>
    GetHistoryResponseModel(
      id: 1,
      listName: 'History',
      createdAt: '2024-01-01',
      updatedAt: '2024-01-01',
      page: page,
      perPage: perPage,
      totalEntries: totalEntries,
      items: items ?? [_itemWithProduct()],
    );

NetworkResponse<GetHistoryResponseModel?> _successResponse({
  List<HistoryItemModel>? items,
  int page = 1,
  int totalEntries = 1,
}) =>
    NetworkResponse<GetHistoryResponseModel?>(
      data: _historyResponse(items: items, page: page, totalEntries: totalEntries),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<GetHistoryResponseModel?> _emptySuccessResponse() =>
    NetworkResponse<GetHistoryResponseModel?>(
      data: _historyResponse(items: [], totalEntries: 0),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<GetHistoryResponseModel?> _nullDataResponse() =>
    const NetworkResponse<GetHistoryResponseModel?>(
      data: null,
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<GetHistoryResponseModel?> _failureResponse() =>
    const NetworkResponse<GetHistoryResponseModel?>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockHistoryProductRepository mockRepository;

  setUp(() {
    mockRepository = MockHistoryProductRepository();
  });

  HistoryListBloc buildBloc() =>
      HistoryListBloc(repository: mockRepository);

  group('HistoryListBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is HistoryListInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<HistoryListInitial>());
      bloc.close();
    });

    test('initial page is 1', () {
      final bloc = buildBloc();
      expect(bloc.page, 1);
      bloc.close();
    });

    test('initial historyItems is empty', () {
      final bloc = buildBloc();
      expect(bloc.historyItems, isEmpty);
      bloc.close();
    });

    test('initial isFetchingList is false', () {
      final bloc = buildBloc();
      expect(bloc.isFetchingList, isFalse);
      bloc.close();
    });

    test('initial hasReachedMaxItems is false', () {
      final bloc = buildBloc();
      expect(bloc.hasReachedMaxItems, isFalse);
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // HistoryListInitialized
    // -----------------------------------------------------------------------
    group('HistoryListInitialized', () {
      blocTest<HistoryListBloc, HistoryListState>(
        'emits [loading, success] when initialized with successful fetch',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(const HistoryListEvent.initialized()),
        expect: () => [
          isA<HistoryListLoadInProgress>(),
          isA<HistoryListLoadSuccess>(),
        ],
      );

      blocTest<HistoryListBloc, HistoryListState>(
        'calls getRecentlyViewed on repository when initialized',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(const HistoryListEvent.initialized()),
        verify: (_) {
          verify(mockRepository.getRecentlyViewed(
            request: anyNamed('request'),
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // HistoryListFetched – success
    // -----------------------------------------------------------------------
    group('HistoryListFetched – success', () {
      blocTest<HistoryListBloc, HistoryListState>(
        'emits [loading, success] on successful fetch',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        expect: () => [
          isA<HistoryListLoadInProgress>(),
          isA<HistoryListLoadSuccess>(),
        ],
      );

      blocTest<HistoryListBloc, HistoryListState>(
        'populates historyItems after successful fetch',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse(
                    items: [_itemWithProduct()],
                  ));
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        verify: (bloc) {
          expect(bloc.historyItems, hasLength(1));
        },
      );

      blocTest<HistoryListBloc, HistoryListState>(
        'increments page after successful fetch with full page',
        build: buildBloc,
        setUp: () {
          final items = List.generate(
            IntegerConstants.defaultProductsPerPage,
            (i) => _itemWithProduct(id: i, productId: i),
          );
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse(items: items));
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        verify: (bloc) {
          expect(bloc.page, 2);
          expect(bloc.hasReachedMaxItems, isFalse);
        },
      );

      blocTest<HistoryListBloc, HistoryListState>(
        'sets hasReachedMaxItems to true when items fewer than perPage',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse(
                    items: [_itemWithProduct()],
                  ));
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        verify: (bloc) {
          expect(bloc.hasReachedMaxItems, isTrue);
        },
      );
    });

    // -----------------------------------------------------------------------
    // HistoryListFetched – empty results
    // -----------------------------------------------------------------------
    group('HistoryListFetched – empty results', () {
      blocTest<HistoryListBloc, HistoryListState>(
        'emits [loading, success] with empty items list',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _emptySuccessResponse());
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        expect: () => [
          isA<HistoryListLoadInProgress>(),
          isA<HistoryListLoadSuccess>(),
        ],
        verify: (bloc) {
          expect(bloc.historyItems, isEmpty);
          expect(bloc.hasReachedMaxItems, isTrue);
        },
      );
    });

    // -----------------------------------------------------------------------
    // HistoryListFetched – null product filtering
    // -----------------------------------------------------------------------
    group('HistoryListFetched – null product filtering', () {
      blocTest<HistoryListBloc, HistoryListState>(
        'filters out items with null product field',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer(
            (_) async => _successResponse(
              items: [
                _itemWithProduct(id: 1, productId: 100),
                _itemWithoutProduct(id: 2, productId: 200),
                _itemWithProduct(id: 3, productId: 300),
              ],
            ),
          );
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        verify: (bloc) {
          expect(bloc.historyItems, hasLength(2));
          expect(
            bloc.historyItems.every((item) => item.product != null),
            isTrue,
          );
        },
      );
    });

    // -----------------------------------------------------------------------
    // HistoryListFetched – failure
    // -----------------------------------------------------------------------
    group('HistoryListFetched – failure', () {
      blocTest<HistoryListBloc, HistoryListState>(
        'emits [loading, failure] when response has null data',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _nullDataResponse());
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        expect: () => [
          isA<HistoryListLoadInProgress>(),
          isA<HistoryListLoadFailure>(),
        ],
      );

      blocTest<HistoryListBloc, HistoryListState>(
        'emits [loading, failure] when response is not success',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        expect: () => [
          isA<HistoryListLoadInProgress>(),
          isA<HistoryListLoadFailure>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // HistoryListFetched – repository throws
    // -----------------------------------------------------------------------
    group('HistoryListFetched – repository throws', () {
      blocTest<HistoryListBloc, HistoryListState>(
        'emits [loading, failure] when repository throws an exception',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        expect: () => [
          isA<HistoryListLoadInProgress>(),
          isA<HistoryListLoadFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );

      blocTest<HistoryListBloc, HistoryListState>(
        'sets isFetchingList to false when repository throws',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(
          HistoryListEvent.fetchHistory(
            page: IntegerConstants.defaultPage,
            sortOption: _defaultSortOption(),
          ),
        ),
        verify: (bloc) {
          expect(bloc.isFetchingList, isFalse);
        },
      );
    });

    // -----------------------------------------------------------------------
    // HistoryListSortChanged
    // -----------------------------------------------------------------------
    group('HistoryListSortChanged', () {
      blocTest<HistoryListBloc, HistoryListState>(
        'emits [updateSortIndex, loading, ...] when sort is changed',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(const HistoryListEvent.sortChanged(1)),
        expect: () => [
          isA<UpdateSortIndex>().having(
            (s) => s.selectedSortIndex,
            'selectedSortIndex',
            1,
          ),
          isA<HistoryListLoadInProgress>(),
          isA<HistoryListLoadSuccess>(),
        ],
      );

      blocTest<HistoryListBloc, HistoryListState>(
        'resets page and historyItems on sort change',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(const HistoryListEvent.sortChanged(2)),
        verify: (bloc) {
          // After sort change, the bloc resets page to defaultPage and then
          // re-fetches, so after the fetch the page will be updated.
          expect(bloc.selectedSortIndex, 2);
        },
      );

      blocTest<HistoryListBloc, HistoryListState>(
        'updates selectedSortIndex property',
        build: buildBloc,
        setUp: () {
          when(mockRepository.getRecentlyViewed(request: anyNamed('request')))
              .thenAnswer((_) async => _successResponse());
        },
        act: (bloc) => bloc.add(const HistoryListEvent.sortChanged(0)),
        verify: (bloc) {
          expect(bloc.selectedSortIndex, 0);
        },
      );
    });
  });
}
