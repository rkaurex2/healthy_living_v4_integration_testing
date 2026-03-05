import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_event.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_state.dart';
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

  SearchMyListsBloc buildBloc() {
    return SearchMyListsBloc(
      findRepository: mockRepository,
      searchAnalytics: mockAnalytics,
    );
  }

  group('SearchMyListsBloc', () {
    final tSearchQuery = 'test list';

    final tList1 = SearchListsModel(
      id: 1,
      type: 'list',
      name: 'My List A',
      description: 'Description A',
      ownerName: 'Owner A',
      itemsCount: 5,
      highlights: null,
    );
    final tList2 = SearchListsModel(
      id: 2,
      type: 'list',
      name: 'My List B',
      description: 'Description B',
      ownerName: 'Owner B',
      itemsCount: 3,
      highlights: null,
    );
    final tListItems = [tList1, tList2];

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
      lists: tPaginationItemModel,
      totalEntries: 4,
    );

    final tPaginationModelLastPage = SearchPaginationModel(
      lists: tPaginationItemModelLastPage,
      totalEntries: 2,
    );

    final tSearchResultsModel = SearchResultsModel(
      lists: tListItems,
      brandAggs: [],
    );

    final tEmptySearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
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
        lists: SearchPaginationItemModel(totalEntries: 0),
      ),
    );

    test('initial state is MyListsInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, const SearchMyListsState.myListsInitial());
      bloc.close();
    });

    group('SearchMyListsInitialised', () {
      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'emits [myListsLoadFromCacheSuccess] when initialLists is not empty and pagination is not null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          SearchMyListsEvent.searchMyListsInitialised(
            initialLists: tListItems,
            pagination: tPaginationItemModel,
          ),
        ),
        expect: () => [
          SearchMyListsState.myListsLoadFromCacheSuccess(
            lists: tListItems,
            pagination: tPaginationItemModel,
          ),
        ],
      );

      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'emits [myListsInitial] when initialLists is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          SearchMyListsEvent.searchMyListsInitialised(
            initialLists: [],
            pagination: null,
          ),
        ),
        expect: () => [
          const SearchMyListsState.myListsInitial(),
        ],
      );

      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'emits [myListsInitial] when pagination is null even if list is not empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          SearchMyListsEvent.searchMyListsInitialised(
            initialLists: tListItems,
            pagination: null,
          ),
        ),
        expect: () => [
          const SearchMyListsState.myListsInitial(),
        ],
      );
    });

    group('SearchMyListsSearched', () {
      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'emits [myListsLoadInProgress, myListsLoadSuccess] when search is successful',
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
          SearchMyListsEvent.searchMyListsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const SearchMyListsState.myListsLoadInProgress(),
          isA<MyListsLoadSuccess>(),
        ],
      );

      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'emits [myListsLoadInProgress, myListsLoadSuccess] with empty lists when response has no lists',
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
          SearchMyListsEvent.searchMyListsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const SearchMyListsState.myListsLoadInProgress(),
          isA<MyListsLoadSuccess>(),
        ],
      );

      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'sets hasReachedMaxItems to true when listItems length equals totalEntries',
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
          SearchMyListsEvent.searchMyListsSearched(searchQuery: tSearchQuery),
        ),
        verify: (bloc) {
          expect(bloc.hasReachedMaxItems, true);
        },
      );

      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'emits [myListsLoadInProgress, myListsLoadFailure] when response is not successful',
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
          SearchMyListsEvent.searchMyListsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const SearchMyListsState.myListsLoadInProgress(),
          isA<MyListsLoadFailure>(),
        ],
      );

      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'emits [myListsLoadInProgress, myListsLoadFailure] when repository throws exception',
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
          SearchMyListsEvent.searchMyListsSearched(searchQuery: tSearchQuery),
        ),
        expect: () => [
          const SearchMyListsState.myListsLoadInProgress(),
          isA<MyListsLoadFailure>(),
        ],
      );

      blocTest<SearchMyListsBloc, SearchMyListsState>(
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
          SearchMyListsEvent.searchMyListsSearched(searchQuery: tSearchQuery),
        ),
        verify: (_) {
          verify(mockAnalytics.logSearch(
            searchTerm: tSearchQuery,
            source: anyNamed('source'),
          )).called(1);
        },
      );

      blocTest<SearchMyListsBloc, SearchMyListsState>(
        'accumulates lists across multiple search calls (pagination)',
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
          bloc.add(SearchMyListsEvent.searchMyListsSearched(searchQuery: tSearchQuery));
          await Future.delayed(const Duration(milliseconds: 100));
          bloc.add(SearchMyListsEvent.searchMyListsSearched(searchQuery: tSearchQuery));
        },
        verify: (bloc) {
          expect(bloc.listItems.length, greaterThan(tListItems.length));
        },
      );
    });
  });
}
