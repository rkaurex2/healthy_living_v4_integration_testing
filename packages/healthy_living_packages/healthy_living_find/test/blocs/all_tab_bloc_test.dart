import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_event.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_state.dart';
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

  AllTabBloc buildBloc() {
    return AllTabBloc(
      findRepository: mockRepository,
      searchAnalytics: mockAnalytics,
    );
  }

  group('AllTabBloc', () {
    final tSearchQuery = 'test';

    final tPaginationItemModel = SearchPaginationItemModel(
      currentPage: 1,
      totalPages: 1,
      totalEntries: 5,
    );

    final tPaginationModel = SearchPaginationModel(
      brands: tPaginationItemModel,
      products: tPaginationItemModel,
      categories: tPaginationItemModel,
      ingredients: tPaginationItemModel,
      lists: tPaginationItemModel,
      totalEntries: 25,
    );

    final tEmptyPaginationModel = SearchPaginationModel(
      brands: SearchPaginationItemModel(totalEntries: 0),
      products: SearchPaginationItemModel(totalEntries: 0),
      categories: SearchPaginationItemModel(totalEntries: 0),
      ingredients: SearchPaginationItemModel(totalEntries: 0),
      lists: SearchPaginationItemModel(totalEntries: 0),
      totalEntries: 0,
    );

    final tSearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
      products: [],
      ingredients: [],
      categories: [],
      brands: [],
    );

    final tSearchResponseModel = SearchResponseModel(
      results: tSearchResultsModel,
      pagination: tPaginationModel,
    );

    final tEmptySearchResponseModel = SearchResponseModel(
      results: tSearchResultsModel,
      pagination: tEmptyPaginationModel,
    );

    test('initial state is AllTabInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, const AllTabState.allTabInitial());
      bloc.close();
    });

    group('AllTabInitialised', () {
      blocTest<AllTabBloc, AllTabState>(
        'emits [allTabLoadSuccess] with isRetrievedFromCache true when initialAllTabData is not null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: tSearchResponseModel,
          ),
        ),
        expect: () => [
          AllTabState.allTabLoadSuccess(
            allTabData: tSearchResponseModel,
            isRetrievedFromCache: true,
            isEmptyResults: false,
          ),
        ],
      );

      blocTest<AllTabBloc, AllTabState>(
        'emits [allTabInitial] when initialAllTabData is null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: null,
          ),
        ),
        expect: () => [
          const AllTabState.allTabInitial(),
        ],
      );

      blocTest<AllTabBloc, AllTabState>(
        'sets searchQuery on bloc when initialised',
        build: buildBloc,
        act: (bloc) => bloc.add(
          AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: null,
          ),
        ),
        verify: (bloc) {
          expect(bloc.searchQuery, tSearchQuery);
        },
      );

      blocTest<AllTabBloc, AllTabState>(
        'emits allTabLoadSuccess with isEmptyResults true when all pagination entries are 0',
        build: buildBloc,
        act: (bloc) => bloc.add(
          AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: tEmptySearchResponseModel,
          ),
        ),
        expect: () => [
          AllTabState.allTabLoadSuccess(
            allTabData: tEmptySearchResponseModel,
            isRetrievedFromCache: true,
            isEmptyResults: true,
          ),
        ],
      );
    });

    group('AllTabSearched', () {
      blocTest<AllTabBloc, AllTabState>(
        'emits [allTabLoadInProgress, allTabLoadSuccess] when search is successful',
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
        seed: () => const AllTabState.allTabInitial(),
        act: (bloc) {
          bloc.add(AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: null,
          ));
          bloc.add(AllTabEvent.allTabSearched(
            searchQuery: tSearchQuery,
            isAuthenticated: true,
          ));
        },
        expect: () => [
          const AllTabState.allTabInitial(),
          const AllTabState.allTabLoadInProgress(),
          AllTabState.allTabLoadSuccess(
            allTabData: tSearchResponseModel,
            isRetrievedFromCache: false,
            isEmptyResults: false,
          ),
        ],
      );

      blocTest<AllTabBloc, AllTabState>(
        'emits [allTabLoadInProgress, allTabLoadSuccess] with isEmptyResults true when results have zero entries',
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
              data: tEmptySearchResponseModel,
              statusCode: 200,
              responseHeaders: {},
            ),
          );
        },
        act: (bloc) {
          bloc.add(AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: null,
          ));
          bloc.add(AllTabEvent.allTabSearched(
            searchQuery: tSearchQuery,
            isAuthenticated: true,
          ));
        },
        expect: () => [
          const AllTabState.allTabInitial(),
          const AllTabState.allTabLoadInProgress(),
          AllTabState.allTabLoadSuccess(
            allTabData: tEmptySearchResponseModel,
            isRetrievedFromCache: false,
            isEmptyResults: true,
          ),
        ],
      );

      blocTest<AllTabBloc, AllTabState>(
        'emits [allTabLoadInProgress, allTabLoadFailure] when response is not successful',
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
        act: (bloc) {
          bloc.add(AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: null,
          ));
          bloc.add(AllTabEvent.allTabSearched(
            searchQuery: tSearchQuery,
            isAuthenticated: true,
          ));
        },
        expect: () => [
          const AllTabState.allTabInitial(),
          const AllTabState.allTabLoadInProgress(),
          isA<AllTabLoadFailure>(),
        ],
      );

      blocTest<AllTabBloc, AllTabState>(
        'emits [allTabLoadInProgress, allTabLoadFailure] when repository throws exception',
        build: buildBloc,
        setUp: () {
          when(mockAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenThrow(Exception('Network error'));
        },
        act: (bloc) {
          bloc.add(AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: null,
          ));
          bloc.add(AllTabEvent.allTabSearched(
            searchQuery: tSearchQuery,
            isAuthenticated: true,
          ));
        },
        expect: () => [
          const AllTabState.allTabInitial(),
          const AllTabState.allTabLoadInProgress(),
          isA<AllTabLoadFailure>(),
        ],
      );

      blocTest<AllTabBloc, AllTabState>(
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
        act: (bloc) {
          bloc.add(AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: null,
          ));
          bloc.add(AllTabEvent.allTabSearched(
            searchQuery: tSearchQuery,
            isAuthenticated: true,
          ));
        },
        verify: (_) {
          verify(mockAnalytics.logSearch(
            searchTerm: tSearchQuery,
            source: anyNamed('source'),
          )).called(1);
        },
      );

      blocTest<AllTabBloc, AllTabState>(
        'calls searchAnalytics.logViewSearchResults on successful search',
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
        act: (bloc) {
          bloc.add(AllTabEvent.allTabInitialised(
            searchQuery: tSearchQuery,
            initialAllTabData: null,
          ));
          bloc.add(AllTabEvent.allTabSearched(
            searchQuery: tSearchQuery,
            isAuthenticated: true,
          ));
        },
        verify: (_) {
          verify(mockAnalytics.logViewSearchResults(
            searchTerm: tSearchQuery,
            resultCount: anyNamed('resultCount'),
            items: anyNamed('items'),
            source: anyNamed('source'),
          )).called(1);
        },
      );
    });
  });
}
