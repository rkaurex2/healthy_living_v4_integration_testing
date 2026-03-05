import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/domain/models/search_category_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_state.dart';
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

  CategoryListBloc buildBloc() {
    return CategoryListBloc(
      findRepository: mockRepository,
      searchAnalytics: mockAnalytics,
    );
  }

  group('CategoryListBloc', () {
    final tSearchQuery = 'test category';

    final tCategory1 = SearchCategoryItemModel(id: 1, name: 'Category A');
    final tCategory2 = SearchCategoryItemModel(id: 2, name: 'Category B');
    final tCategoryList = [tCategory1, tCategory2];

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
      categories: tPaginationItemModel,
      totalEntries: 4,
    );

    final tPaginationModelLastPage = SearchPaginationModel(
      categories: tPaginationItemModelLastPage,
      totalEntries: 2,
    );

    final tSearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
      categories: tCategoryList,
    );

    final tEmptySearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
      categories: [],
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
        categories: SearchPaginationItemModel(totalEntries: 0),
      ),
    );

    test('initial state is CategoriesInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, const CategoryListState.categoriesInitial());
      bloc.close();
    });

    group('CategoryListInitialised', () {
      blocTest<CategoryListBloc, CategoryListState>(
        'emits [categoriesLoadFromCacheSuccess] when initialCategoryList is not empty and pagination is not null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          CategoryListEvent.categoryListInitialised(
            initialCategoryList: tCategoryList,
            pagination: tPaginationItemModel,
          ),
        ),
        expect: () => [
          CategoryListState.categoriesLoadFromCacheSuccess(
            categories: tCategoryList,
            pagination: tPaginationItemModel,
          ),
        ],
      );

      blocTest<CategoryListBloc, CategoryListState>(
        'emits [categoriesInitial] when initialCategoryList is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          CategoryListEvent.categoryListInitialised(
            initialCategoryList: [],
            pagination: null,
          ),
        ),
        expect: () => [
          const CategoryListState.categoriesInitial(),
        ],
      );

      blocTest<CategoryListBloc, CategoryListState>(
        'emits [categoriesInitial] when pagination is null even if list is not empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          CategoryListEvent.categoryListInitialised(
            initialCategoryList: tCategoryList,
            pagination: null,
          ),
        ),
        expect: () => [
          const CategoryListState.categoriesInitial(),
        ],
      );
    });

    group('CategoriesSearched', () {
      blocTest<CategoryListBloc, CategoryListState>(
        'emits [categoriesLoadInProgress, categoriesLoadSuccess] when search is successful',
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
          CategoryListEvent.categoriesSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const CategoryListState.categoriesLoadInProgress(),
          isA<CategoriesLoadSuccess>(),
        ],
      );

      blocTest<CategoryListBloc, CategoryListState>(
        'emits [categoriesLoadInProgress, categoriesLoadSuccess] with empty categories when response has no categories',
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
          CategoryListEvent.categoriesSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const CategoryListState.categoriesLoadInProgress(),
          isA<CategoriesLoadSuccess>(),
        ],
      );

      blocTest<CategoryListBloc, CategoryListState>(
        'sets hasReachedMaxItems to true when categoryList length equals totalEntries',
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
          CategoryListEvent.categoriesSearched(searchQuery: tSearchQuery),
        ),
        verify: (bloc) {
          expect(bloc.hasReachedMaxItems, true);
        },
      );

      blocTest<CategoryListBloc, CategoryListState>(
        'emits [categoriesLoadInProgress, categoriesLoadFailure] when response is not successful',
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
          CategoryListEvent.categoriesSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const CategoryListState.categoriesLoadInProgress(),
          isA<CategoriesLoadFailure>(),
        ],
      );

      blocTest<CategoryListBloc, CategoryListState>(
        'emits [categoriesLoadInProgress, categoriesLoadFailure] when repository throws exception',
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
          CategoryListEvent.categoriesSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const CategoryListState.categoriesLoadInProgress(),
          isA<CategoriesLoadFailure>(),
        ],
      );

      blocTest<CategoryListBloc, CategoryListState>(
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
          CategoryListEvent.categoriesSearched(searchQuery: tSearchQuery),
        ),
        verify: (_) {
          verify(mockAnalytics.logSearch(
            searchTerm: tSearchQuery,
            source: anyNamed('source'),
          )).called(1);
        },
      );

      blocTest<CategoryListBloc, CategoryListState>(
        'accumulates categories across multiple search calls (pagination)',
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
          bloc.add(CategoryListEvent.categoriesSearched(searchQuery: tSearchQuery));
          await Future.delayed(const Duration(milliseconds: 100));
          bloc.add(CategoryListEvent.categoriesSearched(searchQuery: tSearchQuery));
        },
        verify: (bloc) {
          expect(bloc.categoryList.length, greaterThan(tCategoryList.length));
        },
      );
    });
  });
}
