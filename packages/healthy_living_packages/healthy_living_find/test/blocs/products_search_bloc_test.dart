import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

class MockUniversalSearchRepository extends Mock
    implements UniversalSearchRepository {}

class MockSearchAnalytics extends Mock implements SearchAnalytics {}

class MockFilterUtils extends Mock implements FilterUtils {}

@Tags(['unit'])
void main() {
  late MockUniversalSearchRepository mockRepository;
  late MockSearchAnalytics mockSearchAnalytics;
  late MockFilterUtils mockFilterUtils;

  final tDefaultSortOption = SortOption(
    index: 0,
    type: SortType.hazardScoreBestToWorst,
    sortBy: SortBy.hazardScore,
    sortOrder: SortOrder.asc,
  );

  setUp(() {
    mockRepository = MockUniversalSearchRepository();
    mockSearchAnalytics = MockSearchAnalytics();
    mockFilterUtils = MockFilterUtils();

    when(mockFilterUtils.generateHazardLevelFilterArrayQuery(
      hazardLevel: anyNamed('hazardLevel'),
    )).thenReturn([]);
    when(mockFilterUtils.getProductCategoryFromSearchType(any))
        .thenReturn(ProductCategory.food);
    when(mockFilterUtils.isFilterApplied(filters: anyNamed('filters')))
        .thenReturn(false);
  });

  ProductsSearchBloc buildBloc() {
    return ProductsSearchBloc(
      findRepository: mockRepository,
      searchAnalytics: mockSearchAnalytics,
      filterUtils: mockFilterUtils,
    );
  }

  group('ProductsSearchBloc', () {
    final tSearchQuery = 'test';

    final tPaginationItemModel = SearchPaginationItemModel(
      currentPage: 1,
      totalPages: 1,
      totalEntries: 5,
    );

    final tPaginationModel = SearchPaginationModel(
      products: tPaginationItemModel,
      totalEntries: 5,
    );

    final tProduct = SearchProductModel(
      mobileImageUrl: '',
      id: 1,
      name: 'Test Product',
      brandName: 'Test Brand',
    );

    final tSearchResultsModel = SearchResultsModel(
      lists: [],
      brandAggs: [],
      products: [tProduct],
      ingredients: [],
      categories: [],
      brands: [],
    );

    final tEmptySearchResultsModel = SearchResultsModel(
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
      productTypeCounts: {'food': 5},
    );

    final tEmptySearchResponseModel = SearchResponseModel(
      results: tEmptySearchResultsModel,
      pagination: tPaginationModel,
      productTypeCounts: {'food': 0},
    );

    void stubSuccessfulSearch() {
      when(mockSearchAnalytics.logSearch(
        searchTerm: anyNamed('searchTerm'),
        source: anyNamed('source'),
      )).thenAnswer((_) async {});
      when(mockSearchAnalytics.logViewSearchResults(
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
    }

    test('initial state is ProductsSearchInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<ProductsSearchInitial>());
      bloc.close();
    });

    group('ProductSearchAll', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsSearchInProgress, SearchLoadSuccess] when search is successful',
        build: buildBloc,
        setUp: stubSuccessfulSearch,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productsSearchAll(
            searchQuery: tSearchQuery,
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadSuccess>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsSearchInProgress, SearchLoadFailure] when response is not successful',
        build: buildBloc,
        setUp: () {
          when(mockSearchAnalytics.logSearch(
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
          ProductsSearchEvent.productsSearchAll(
            searchQuery: tSearchQuery,
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadFailure>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsSearchInProgress, InternetFailure] when network exception is thrown',
        build: buildBloc,
        setUp: () {
          when(mockSearchAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenThrow(NetworkConnectionException(
            isTimeout: false,
            message: 'No internet',
            statusCode: null,
            originalError: '',
          ));
        },
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productsSearchAll(
            searchQuery: tSearchQuery,
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<InternetFailure>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsSearchInProgress, ProductsSearchResultsEmpty] when results are empty',
        build: buildBloc,
        setUp: () {
          when(mockSearchAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockSearchAnalytics.logViewSearchResults(
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
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productsSearchAll(
            searchQuery: tSearchQuery,
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<ProductsSearchResultsEmpty>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'calls searchAnalytics.logSearch on first page search',
        build: buildBloc,
        setUp: stubSuccessfulSearch,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productsSearchAll(
            searchQuery: tSearchQuery,
            isAuthenticatedUser: true,
          ),
        ),
        verify: (_) {
          verify(mockSearchAnalytics.logSearch(
            searchTerm: tSearchQuery,
            source: anyNamed('source'),
          )).called(1);
        },
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'calls searchAnalytics.logViewSearchResults on successful search',
        build: buildBloc,
        setUp: stubSuccessfulSearch,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productsSearchAll(
            searchQuery: tSearchQuery,
            isAuthenticatedUser: true,
          ),
        ),
        verify: (_) {
          verify(mockSearchAnalytics.logViewSearchResults(
            searchTerm: tSearchQuery,
            resultCount: anyNamed('resultCount'),
            items: anyNamed('items'),
            source: anyNamed('source'),
          )).called(1);
        },
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits nothing when searchQuery is empty',
        build: buildBloc,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productsSearchAll(
            searchQuery: '',
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => <ProductsSearchState>[],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsSearchInProgress, SearchLoadFailure] when generic exception is thrown',
        build: buildBloc,
        setUp: () {
          when(mockSearchAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenThrow(Exception('Generic error'));
        },
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productsSearchAll(
            searchQuery: tSearchQuery,
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadFailure>(),
        ],
      );
    });

    group('ProductCategoryTabChanged', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsSearchInProgress, SearchLoadSuccess] when switching to a category with no cached data',
        build: buildBloc,
        setUp: () {
          when(mockSearchAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockSearchAnalytics.logViewSearchResults(
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
          ProductsSearchEvent.productCategoryTabChanged(
            searchQuery: tSearchQuery,
            searchType: SearchType.food,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadSuccess>(),
        ],
      );
    });

    group('ProductSearchPagination', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [SearchLoadSuccess, ProductsSearchInProgress, SearchLoadSuccess] when page 1 pagination is successful after category is established',
        build: buildBloc,
        setUp: () {
          when(mockSearchAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockSearchAnalytics.logViewSearchResults(
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
          // First establish the selected category via tab change
          bloc.add(
            ProductsSearchEvent.productCategoryTabChanged(
              searchQuery: tSearchQuery,
              searchType: SearchType.food,
            ),
          );
          // Then dispatch pagination
          bloc.add(
            ProductsSearchEvent.productSearchPagination(
              searchQuery: tSearchQuery,
              page: 1,
              category: SearchType.food,
            ),
          );
        },
        expect: () => [
          // From productCategoryTabChanged (no cache, fetches then emits success)
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadSuccess>(),
          // From productSearchPagination page 1
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadSuccess>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsPaginationInProgress, SearchLoadSuccess] when page > 1 pagination is successful after category is established',
        build: buildBloc,
        setUp: () {
          when(mockSearchAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockSearchAnalytics.logViewSearchResults(
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
          // First establish the selected category
          bloc.add(
            ProductsSearchEvent.productCategoryTabChanged(
              searchQuery: tSearchQuery,
              searchType: SearchType.food,
            ),
          );
          // Then dispatch page 2 pagination
          bloc.add(
            ProductsSearchEvent.productSearchPagination(
              searchQuery: tSearchQuery,
              page: 2,
              category: SearchType.food,
            ),
          );
        },
        expect: () => [
          // From productCategoryTabChanged
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadSuccess>(),
          // From productSearchPagination page 2
          isA<ProductsPaginationInProgress>(),
          isA<SearchLoadSuccess>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsSearchInProgress, InternetFailure] when network exception is thrown on pagination',
        build: buildBloc,
        setUp: () {
          when(mockSearchAnalytics.logSearch(
            searchTerm: anyNamed('searchTerm'),
            source: anyNamed('source'),
          )).thenAnswer((_) async {});
          when(mockRepository.universalSearch(request: anyNamed('request')))
              .thenThrow(NetworkConnectionException(
            isTimeout: false,
            message: 'No internet',
            statusCode: null,
            originalError: '',
          ));
        },
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productSearchPagination(
            searchQuery: tSearchQuery,
            page: 1,
            category: SearchType.food,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<InternetFailure>(),
        ],
      );
    });

    group('SearchTextAdded', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'dispatches ProductSearchAll internally when search text is added',
        build: buildBloc,
        setUp: stubSuccessfulSearch,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.searchTextAdded(
            searchQuery: tSearchQuery,
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadSuccess>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits nothing when search text is empty (ProductSearchAll returns early)',
        build: buildBloc,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.searchTextAdded(
            searchQuery: '',
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => <ProductsSearchState>[],
      );
    });

    group('ProductAddToListSelected', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductSelectionUpdated] when a product is selected for list',
        build: buildBloc,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productAddToListSelected(
            productSelectionType: ProductSelectionType.add,
            index: 0,
            productSelectionOptionsItem: ProductSelectionOptionsItem.addToList,
            categoryType: SearchType.food,
          ),
        ),
        expect: () => [
          isA<ProductSelectionUpdated>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits nothing when categoryType is null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productAddToListSelected(
            productSelectionType: ProductSelectionType.add,
            index: 0,
            productSelectionOptionsItem: ProductSelectionOptionsItem.addToList,
            categoryType: null,
          ),
        ),
        expect: () => <ProductsSearchState>[],
      );
    });

    group('ProductListClearAddToList', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductListClearedAddToList] when add-to-list is cleared with a category',
        build: buildBloc,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productListClearAddToList(
            categoryType: SearchType.food,
          ),
        ),
        expect: () => [
          isA<ProductListClearedAddToList>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits nothing when categoryType is null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const ProductsSearchEvent.productListClearAddToList(),
        ),
        expect: () => <ProductsSearchState>[],
      );
    });

    group('ProductListSelectionStateChange', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductListSelectionStateChanged] when selection state changes',
        build: buildBloc,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productListSelectionStateChange(
            categoryType: SearchType.food,
            isProductSelectionEnabled: true,
          ),
        ),
        expect: () => [
          isA<ProductListSelectionStateChanged>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits nothing when categoryType is null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const ProductsSearchEvent.productListSelectionStateChange(
            isProductSelectionEnabled: true,
          ),
        ),
        expect: () => <ProductsSearchState>[],
      );
    });

    group('RemoveCompareProducts', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [RemovedCompareProducts, ProductSelectionUpdated] when compare product is removed with category',
        build: buildBloc,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.removeCompareProducts(
            index: 0,
            compareProductItem: const CompareProductItem(id: 1),
            productSelectionType: ProductSelectionType.remove,
            productSelectionOptionsItem:
                ProductSelectionOptionsItem.compareProducts,
            categoryType: SearchType.food,
          ),
        ),
        expect: () => [
          isA<RemovedCompareProducts>(),
          isA<ProductSelectionUpdated>(),
        ],
      );

      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits only [RemovedCompareProducts] when categoryType is null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.removeCompareProducts(
            index: 0,
            compareProductItem: const CompareProductItem(id: 1),
            productSelectionType: ProductSelectionType.remove,
            productSelectionOptionsItem:
                ProductSelectionOptionsItem.compareProducts,
            categoryType: null,
          ),
        ),
        expect: () => [
          isA<RemovedCompareProducts>(),
        ],
      );
    });

    group('ProductsListInitialised', () {
      blocTest<ProductsSearchBloc, ProductsSearchState>(
        'emits [ProductsSearchInProgress, SearchLoadSuccess] when initialCategoryList is null (triggers ProductSearchAll)',
        build: buildBloc,
        setUp: stubSuccessfulSearch,
        act: (bloc) => bloc.add(
          ProductsSearchEvent.productsListInitialised(
            initialCategoryList: null,
            searchQuery: tSearchQuery,
            productsEntrySource: null,
            isAuthenticatedUser: true,
          ),
        ),
        expect: () => [
          isA<ProductsSearchInProgress>(),
          isA<SearchLoadSuccess>(),
        ],
      );
    });
  });
}
