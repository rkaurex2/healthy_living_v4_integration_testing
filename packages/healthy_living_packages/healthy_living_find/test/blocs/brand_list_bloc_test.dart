import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/domain/models/search_brand_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_state.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

void main() {
  late MockUniversalSearchRepository mockRepository;
  late MockSearchAnalytics mockAnalytics;

  setUp(() {
    mockRepository = MockUniversalSearchRepository();
    mockAnalytics = MockSearchAnalytics();
  });

  BrandListBloc buildBloc() {
    return BrandListBloc(
      findRepository: mockRepository,
      searchAnalytics: mockAnalytics,
    );
  }

  group('BrandListBloc', () {
    final tSearchQuery = 'test brand';

    final tBrand1 = SearchBrandModel(id: 1, name: 'Brand A');
    final tBrand2 = SearchBrandModel(id: 2, name: 'Brand B');
    final tBrandList = [tBrand1, tBrand2];

    final tPaginationItemModel = SearchPaginationItemModel(
      currentPage: 1,
      totalPages: 2,
      totalEntries: 4,
    );

    final tPaginationItemModelLastPage = SearchPaginationItemModel(
      currentPage: 1,
      totalPages: 1,
      totalEntries: 2,
    );

    final tPaginationModel = SearchPaginationModel(
      brands: tPaginationItemModel,
      totalEntries: 4,
    );

    final tPaginationModelLastPage = SearchPaginationModel(
      brands: tPaginationItemModelLastPage,
      totalEntries: 2,
    );

    final tSearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
      brands: tBrandList,
    );

    final tEmptySearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
      brands: [],
    );

    final tSearchResponseModel = SearchResponseModel(
      results: tSearchResultsModel,
      pagination: tPaginationModel,
    );

    final tSearchResponseModelLastPage = SearchResponseModel(
      results: tSearchResultsModel,
      pagination: tPaginationModelLastPage,
    );

    final tEmptySearchResponseModel = SearchResponseModel(
      results: tEmptySearchResultsModel,
      pagination: SearchPaginationModel(
        brands: SearchPaginationItemModel(totalEntries: 0),
      ),
    );

    test('initial state is BrandsInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, const BrandListState.brandsInitial());
      bloc.close();
    });

    group('BrandListInitialised', () {
      blocTest<BrandListBloc, BrandListState>(
        'emits [brandsLoadFromCacheSuccess] when initialBrandList is not empty and pagination is not null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrandListEvent.brandListInitialised(
            initialBrandList: tBrandList,
            pagination: tPaginationItemModel,
          ),
        ),
        expect: () => [
          BrandListState.brandsLoadFromCacheSuccess(
            brands: tBrandList,
            pagination: tPaginationItemModel,
          ),
        ],
      );

      blocTest<BrandListBloc, BrandListState>(
        'emits [brandsInitial] when initialBrandList is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrandListEvent.brandListInitialised(
            initialBrandList: [],
            pagination: null,
          ),
        ),
        expect: () => [
          const BrandListState.brandsInitial(),
        ],
      );

      blocTest<BrandListBloc, BrandListState>(
        'emits [brandsInitial] when pagination is null even if list is not empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrandListEvent.brandListInitialised(
            initialBrandList: tBrandList,
            pagination: null,
          ),
        ),
        expect: () => [
          const BrandListState.brandsInitial(),
        ],
      );
    });

    group('BrandsSearched', () {
      blocTest<BrandListBloc, BrandListState>(
        'emits [brandsLoadInProgress, brandsLoadSuccess] when search is successful',
        build: buildBloc,
        setUp: () {
          when(mockAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockAnalytics.logViewSearchResults(
            searchTerm: anyNamed('searchTerm'),
            resultCount: anyNamed('resultCount'),
            items: anyNamed('items'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenAnswer(
            (_) async => NetworkResponse<SearchResponseModel?>(
              data: tSearchResponseModel,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) => bloc.add(
          BrandListEvent.brandsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const BrandListState.brandsLoadInProgress(),
          isA<BrandsLoadSuccess>(),
        ],
      );

      blocTest<BrandListBloc, BrandListState>(
        'emits [brandsLoadInProgress, brandsLoadSuccess] with empty brands when response has no brands',
        build: buildBloc,
        setUp: () {
          when(mockAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenAnswer(
            (_) async => NetworkResponse<SearchResponseModel?>(
              data: tEmptySearchResponseModel,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) => bloc.add(
          BrandListEvent.brandsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const BrandListState.brandsLoadInProgress(),
          isA<BrandsLoadSuccess>(),
        ],
      );

      blocTest<BrandListBloc, BrandListState>(
        'sets hasReachedMaxItems to true when brandList length equals totalEntries',
        build: buildBloc,
        setUp: () {
          when(mockAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockAnalytics.logViewSearchResults(
            searchTerm: anyNamed('searchTerm'),
            resultCount: anyNamed('resultCount'),
            items: anyNamed('items'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenAnswer(
            (_) async => NetworkResponse<SearchResponseModel?>(
              data: tSearchResponseModelLastPage,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) => bloc.add(
          BrandListEvent.brandsSearched(searchQuery: tSearchQuery),
        ),
        verify: (bloc) {
          expect(bloc.hasReachedMaxItems, true);
        },
      );

      blocTest<BrandListBloc, BrandListState>(
        'emits [brandsLoadInProgress, brandsLoadFailure] when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenAnswer(
            (_) async => NetworkResponse<SearchResponseModel?>(
              data: null,
              statusCode: 500,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) => bloc.add(
          BrandListEvent.brandsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const BrandListState.brandsLoadInProgress(),
          isA<BrandsLoadFailure>(),
        ],
      );

      blocTest<BrandListBloc, BrandListState>(
        'emits [brandsLoadInProgress, brandsLoadFailure] when repository throws exception',
        build: buildBloc,
        setUp: () {
          when(mockAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenThrow(Exception('Network error'));
        },
        act: (bloc) => bloc.add(
          BrandListEvent.brandsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const BrandListState.brandsLoadInProgress(),
          isA<BrandsLoadFailure>(),
        ],
      );

      blocTest<BrandListBloc, BrandListState>(
        'calls searchAnalytics.logSearch when page is 1 and searchQuery is valid',
        build: buildBloc,
        setUp: () {
          when(mockAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockAnalytics.logViewSearchResults(
            searchTerm: anyNamed('searchTerm'),
            resultCount: anyNamed('resultCount'),
            items: anyNamed('items'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenAnswer(
            (_) async => NetworkResponse<SearchResponseModel?>(
              data: tSearchResponseModel,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) => bloc.add(
          BrandListEvent.brandsSearched(searchQuery: tSearchQuery),
        ),
        verify: (_) {
          verify(mockAnalytics.logSearch(
            searchTerm: tSearchQuery,
            source: anyNamed('source'),
          )).called(1);
        },
      );

      blocTest<BrandListBloc, BrandListState>(
        'accumulates brands across multiple search calls (pagination)',
        build: buildBloc,
        setUp: () {
          when(mockAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockAnalytics.logViewSearchResults(
            searchTerm: anyNamed('searchTerm'),
            resultCount: anyNamed('resultCount'),
            items: anyNamed('items'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenAnswer(
            (_) async => NetworkResponse<SearchResponseModel?>(
              data: tSearchResponseModel,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) async {
          bloc.add(BrandListEvent.brandsSearched(searchQuery: tSearchQuery));
          await Future.delayed(const Duration(milliseconds: 100));
          bloc.add(BrandListEvent.brandsSearched(searchQuery: tSearchQuery));
        },
        verify: (bloc) {
          expect(bloc.brandList.length, greaterThan(tBrandList.length));
        },
      );
    });
  });
}
