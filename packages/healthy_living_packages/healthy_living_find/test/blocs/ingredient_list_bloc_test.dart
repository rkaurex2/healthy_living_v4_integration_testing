import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/domain/models/search_ingredient_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_state.dart';
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

  IngredientListBloc buildBloc() {
    return IngredientListBloc(
      findRepository: mockRepository,
      searchAnalytics: mockAnalytics,
    );
  }

  group('IngredientListBloc', () {
    final tSearchQuery = 'test ingredient';

    final tIngredient1 = SearchIngredientModel(id: 1, name: 'Ingredient A');
    final tIngredient2 = SearchIngredientModel(id: 2, name: 'Ingredient B');
    final tIngredientList = [tIngredient1, tIngredient2];

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
      ingredients: tPaginationItemModel,
      totalEntries: 4,
    );

    final tPaginationModelLastPage = SearchPaginationModel(
      ingredients: tPaginationItemModelLastPage,
      totalEntries: 2,
    );

    final tSearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
      ingredients: tIngredientList,
    );

    final tEmptySearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
      ingredients: [],
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
        ingredients: SearchPaginationItemModel(totalEntries: 0),
      ),
    );

    test('initial state is IngredientsInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, const IngredientListState.ingredientsInitial());
      bloc.close();
    });

    group('IngredientListInitialised', () {
      blocTest<IngredientListBloc, IngredientListState>(
        'emits [ingredientsLoadFromCacheSuccess] when initialIngredientList is not empty and pagination is not null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          IngredientListEvent.ingredientListInitialised(
            initialIngredientList: tIngredientList,
            pagination: tPaginationItemModel,
          ),
        ),
        expect: () => [
          IngredientListState.ingredientsLoadFromCacheSuccess(
            ingredients: tIngredientList,
            pagination: tPaginationItemModel,
          ),
        ],
      );

      blocTest<IngredientListBloc, IngredientListState>(
        'emits [ingredientsInitial] when initialIngredientList is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          IngredientListEvent.ingredientListInitialised(
            initialIngredientList: [],
            pagination: null,
          ),
        ),
        expect: () => [
          const IngredientListState.ingredientsInitial(),
        ],
      );

      blocTest<IngredientListBloc, IngredientListState>(
        'emits [ingredientsInitial] when pagination is null even if list is not empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          IngredientListEvent.ingredientListInitialised(
            initialIngredientList: tIngredientList,
            pagination: null,
          ),
        ),
        expect: () => [
          const IngredientListState.ingredientsInitial(),
        ],
      );
    });

    group('IngredientsSearched', () {
      blocTest<IngredientListBloc, IngredientListState>(
        'emits [ingredientsLoadInProgress, ingredientsLoadSuccess] when search is successful',
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
          IngredientListEvent.ingredientsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const IngredientListState.ingredientsLoadInProgress(),
          isA<IngredientsLoadSuccess>(),
        ],
      );

      blocTest<IngredientListBloc, IngredientListState>(
        'emits [ingredientsLoadInProgress, ingredientsLoadSuccess] with empty ingredients when response has no ingredients',
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
          IngredientListEvent.ingredientsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const IngredientListState.ingredientsLoadInProgress(),
          isA<IngredientsLoadSuccess>(),
        ],
      );

      blocTest<IngredientListBloc, IngredientListState>(
        'sets hasReachedMaxItems to true when ingredientList length equals totalEntries',
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
          IngredientListEvent.ingredientsSearched(searchQuery: tSearchQuery),
        ),
        verify: (bloc) {
          expect(bloc.hasReachedMaxItems, true);
        },
      );

      blocTest<IngredientListBloc, IngredientListState>(
        'emits [ingredientsLoadInProgress, ingredientsLoadFailure] when response is not successful',
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
          IngredientListEvent.ingredientsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const IngredientListState.ingredientsLoadInProgress(),
          isA<IngredientsLoadFailure>(),
        ],
      );

      blocTest<IngredientListBloc, IngredientListState>(
        'emits [ingredientsLoadInProgress, ingredientsLoadFailure] when repository throws exception',
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
          IngredientListEvent.ingredientsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const IngredientListState.ingredientsLoadInProgress(),
          isA<IngredientsLoadFailure>(),
        ],
      );

      blocTest<IngredientListBloc, IngredientListState>(
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
          IngredientListEvent.ingredientsSearched(searchQuery: tSearchQuery),
        ),
        verify: (_) {
          verify(mockAnalytics.logSearch(
            searchTerm: tSearchQuery,
            source: anyNamed('source'),
          )).called(1);
        },
      );

      blocTest<IngredientListBloc, IngredientListState>(
        'accumulates ingredients across multiple search calls (pagination)',
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
          bloc.add(IngredientListEvent.ingredientsSearched(searchQuery: tSearchQuery));
          await Future.delayed(const Duration(milliseconds: 100));
          bloc.add(IngredientListEvent.ingredientsSearched(searchQuery: tSearchQuery));
        },
        verify: (bloc) {
          expect(bloc.ingredientList.length, greaterThan(tIngredientList.length));
        },
      );
    });
  });
}
