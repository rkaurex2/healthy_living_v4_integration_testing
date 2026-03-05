import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/analytics/browse_analytics.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_event.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

class MockUniversalSearchRepository extends Mock
    implements UniversalSearchRepository {}

class MockSearchAnalytics extends Mock implements SearchAnalytics {}

class MockBrowseAnalytics extends Mock implements BrowseAnalytics {}

class MockFilterUtils extends Mock implements FilterUtils {}

@Tags(['unit'])
void main() {
  late MockUniversalSearchRepository mockRepository;
  late MockSearchAnalytics mockSearchAnalytics;
  late MockBrowseAnalytics mockBrowseAnalytics;
  late MockFilterUtils mockFilterUtils;

  final tDefaultSortOption = SortOption(
    index: 0,
    type: SortType.hazardScoreBestToWorst,
    sortBy: SortBy.hazardScore,
    sortOrder: SortOrder.asc,
  );

  final tDefaultFiltersMap = <ProductCategory, ProductFiltersModel>{
    ProductCategory.personalCare: ProductFiltersModel(
      sortOption: tDefaultSortOption,
      hazardLevel: HazardLevel.high,
    ),
    ProductCategory.food: ProductFiltersModel(
      sortOption: tDefaultSortOption,
      hazardLevel: HazardLevel.high,
    ),
    ProductCategory.cleaner: ProductFiltersModel(
      sortOption: tDefaultSortOption,
      hazardLevel: HazardLevel.high,
    ),
  };

  setUp(() {
    mockRepository = MockUniversalSearchRepository();
    mockSearchAnalytics = MockSearchAnalytics();
    mockBrowseAnalytics = MockBrowseAnalytics();
    mockFilterUtils = MockFilterUtils();

    when(mockFilterUtils.getDefaultSortOption()).thenReturn(tDefaultSortOption);
    when(mockFilterUtils.getDefaultFiltersMap()).thenReturn(tDefaultFiltersMap);
    when(mockFilterUtils.getVerifiedDefaultFiltersMap())
        .thenReturn(tDefaultFiltersMap);
    when(mockFilterUtils.generateHazardLevelFilterArrayQuery(
      hazardLevel: anyNamed('hazardLevel'),
    )).thenReturn([]);
    when(mockFilterUtils.getProductCategoryFromSearchType(any))
        .thenReturn(ProductCategory.food);
  });

  BrowseBloc buildBloc() {
    return BrowseBloc(
      findRepository: mockRepository,
      filterUtils: mockFilterUtils,
      browseAnalytics: mockBrowseAnalytics,
      searchAnalytics: mockSearchAnalytics,
    );
  }

  group('BrowseBloc', () {
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

    final tSearchResponseModel = SearchResponseModel(
      results: tSearchResultsModel,
      pagination: tPaginationModel,
    );

    test('initial state is BrowseSearchInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<BrowseSearchInitial>());
      bloc.close();
    });

    group('BrowseSearchPagination', () {
      blocTest<BrowseBloc, BrowseState>(
        'emits [BrowseSearchLoading, BrowseSearchSuccess] when page 1 search is successful',
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
          when(mockBrowseAnalytics.logBrowseCategoryGroup(
            productType: anyNamed('productType'),
            categoryGroupId: anyNamed('categoryGroupId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseVerified(
            items: anyNamed('items'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseCategory(
            productType: anyNamed('productType'),
            categoryId: anyNamed('categoryId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseSubCategory(
            productType: anyNamed('productType'),
            subCategoryId: anyNamed('subCategoryId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
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
          BrowseEvent.browseSearchPagination(
            searchQuery: tSearchQuery,
            page: 1,
            category: BrowseProductByCategoryType.food,
            categoryGroupTitle: 'Food',
            isEwgVerified: false,
            productOptionsItem: ProductSelectionOptionsItem.none,
          ),
        ),
        expect: () => [
          isA<BrowseSearchLoading>(),
          isA<BrowseSearchSuccess>(),
        ],
      );

      blocTest<BrowseBloc, BrowseState>(
        'emits [BrowseSearchLoading, BrowseSearchFailure] when response is not successful',
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
          BrowseEvent.browseSearchPagination(
            searchQuery: tSearchQuery,
            page: 1,
            category: BrowseProductByCategoryType.food,
            categoryGroupTitle: 'Food',
            isEwgVerified: false,
            productOptionsItem: ProductSelectionOptionsItem.none,
          ),
        ),
        expect: () => [
          isA<BrowseSearchLoading>(),
          isA<BrowseSearchFailure>(),
        ],
      );

      blocTest<BrowseBloc, BrowseState>(
        'emits [BrowseSearchLoading, BrowseSearchInternetFailure] when network exception is thrown',
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
          BrowseEvent.browseSearchPagination(
            searchQuery: tSearchQuery,
            page: 1,
            category: BrowseProductByCategoryType.food,
            categoryGroupTitle: 'Food',
            isEwgVerified: false,
            productOptionsItem: ProductSelectionOptionsItem.none,
          ),
        ),
        expect: () => [
          isA<BrowseSearchLoading>(),
          isA<BrowseSearchInternetFailure>(),
        ],
      );

      blocTest<BrowseBloc, BrowseState>(
        'emits [BrowsePaginationInProgress, BrowseSearchSuccess] when page > 1 search is successful',
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
          when(mockBrowseAnalytics.logBrowseCategoryGroup(
            productType: anyNamed('productType'),
            categoryGroupId: anyNamed('categoryGroupId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseVerified(
            items: anyNamed('items'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseCategory(
            productType: anyNamed('productType'),
            categoryId: anyNamed('categoryId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseSubCategory(
            productType: anyNamed('productType'),
            subCategoryId: anyNamed('subCategoryId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
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
          BrowseEvent.browseSearchPagination(
            searchQuery: tSearchQuery,
            page: 2,
            category: BrowseProductByCategoryType.food,
            categoryGroupTitle: 'Food',
            isEwgVerified: false,
            productOptionsItem: ProductSelectionOptionsItem.none,
          ),
        ),
        expect: () => [
          isA<BrowsePaginationInProgress>(),
          isA<BrowseSearchSuccess>(),
        ],
      );

      blocTest<BrowseBloc, BrowseState>(
        'calls searchAnalytics.logSearch when page is 1 and searchQuery is valid',
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
          when(mockBrowseAnalytics.logBrowseCategoryGroup(
            productType: anyNamed('productType'),
            categoryGroupId: anyNamed('categoryGroupId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseVerified(
            items: anyNamed('items'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseCategory(
            productType: anyNamed('productType'),
            categoryId: anyNamed('categoryId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
          )).thenAnswer((_) async {});
          when(mockBrowseAnalytics.logBrowseSubCategory(
            productType: anyNamed('productType'),
            subCategoryId: anyNamed('subCategoryId'),
            items: anyNamed('items'),
            isEWGVerified: anyNamed('isEWGVerified'),
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
          BrowseEvent.browseSearchPagination(
            searchQuery: tSearchQuery,
            page: 1,
            category: BrowseProductByCategoryType.food,
            categoryGroupTitle: 'Food',
            isEwgVerified: false,
            productOptionsItem: ProductSelectionOptionsItem.none,
          ),
        ),
        verify: (_) {
          verify(mockSearchAnalytics.logSearch(
            searchTerm: tSearchQuery,
            source: anyNamed('source'),
          )).called(1);
        },
      );
    });

    group('BrowseSetSortFilter', () {
      final tSortOption = SortOption(
        index: 1,
        type: SortType.hazardScoreWorstToBest,
        sortBy: SortBy.hazardScore,
        sortOrder: SortOrder.desc,
      );

      blocTest<BrowseBloc, BrowseState>(
        'emits [BrowseSortFilterUpdated] when sort filter is set',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.setSortFilter(sortOption: tSortOption),
        ),
        expect: () => [
          isA<BrowseSortFilterUpdated>().having(
            (state) => state.selectedSortOption,
            'selectedSortOption',
            tSortOption,
          ),
        ],
      );

      blocTest<BrowseBloc, BrowseState>(
        'updates the updatedSortOption on the bloc',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.setSortFilter(sortOption: tSortOption),
        ),
        verify: (bloc) {
          expect(bloc.updatedSortOption, tSortOption);
        },
      );
    });

    group('ProductOptionUpdate', () {
      blocTest<BrowseBloc, BrowseState>(
        'emits [ProductOptionUpdated] when product option is updated',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.productOptionUpdate(
            category: BrowseProductByCategoryType.food,
            productOptionsItem: ProductSelectionOptionsItem.addToList,
          ),
        ),
        wait: const Duration(milliseconds: 10),
        expect: () => [
          isA<ProductOptionUpdated>().having(
            (state) => state.productOptionsItem,
            'productOptionsItem',
            ProductSelectionOptionsItem.addToList,
          ),
        ],
      );
    });

    group('ProductSelect', () {
      blocTest<BrowseBloc, BrowseState>(
        'emits [ProductSelected] when product is selected',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.productSelect(
            category: BrowseProductByCategoryType.food,
            productSelectionType: ProductSelectionType.add,
            productSelectionOptionsItem: ProductSelectionOptionsItem.addToList,
            index: 0,
          ),
        ),
        expect: () => [
          isA<ProductSelected>()
              .having(
                (state) => state.productSelectionType,
                'productSelectionType',
                ProductSelectionType.add,
              )
              .having(
                (state) => state.index,
                'index',
                0,
              ),
        ],
      );
    });

    group('ProductListClearList', () {
      blocTest<BrowseBloc, BrowseState>(
        'emits [ProductListClearedList] when list is cleared with a category',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.productListClearList(
            categoryType: BrowseProductByCategoryType.food,
          ),
        ),
        expect: () => [
          isA<ProductListClearedList>(),
        ],
      );

      blocTest<BrowseBloc, BrowseState>(
        'emits nothing when list is cleared with null category',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const BrowseEvent.productListClearList(),
        ),
        expect: () => <BrowseState>[],
      );
    });

    group('ProductListCloseSelection', () {
      blocTest<BrowseBloc, BrowseState>(
        'emits [ProductListCloseSelectionUpdated] when selection is closed',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.productListCloseSelection(
            productSelectionOptionsItem: ProductSelectionOptionsItem.none,
            categoryType: BrowseProductByCategoryType.food,
          ),
        ),
        expect: () => [
          isA<ProductListCloseSelectionUpdated>(),
        ],
      );

      blocTest<BrowseBloc, BrowseState>(
        'emits nothing when categoryType is null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.productListCloseSelection(
            productSelectionOptionsItem: ProductSelectionOptionsItem.none,
            categoryType: null,
          ),
        ),
        expect: () => <BrowseState>[],
      );
    });

    group('RemoveCompareProducts', () {
      blocTest<BrowseBloc, BrowseState>(
        'emits [RemovedCompareProducts, ProductListClearedList] when compare product is removed with category',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.removeCompareProducts(
            compareProductItem: const CompareProductItem(id: 1),
            productSelectionType: ProductSelectionType.remove,
            productSelectionOptionsItem:
                ProductSelectionOptionsItem.compareProducts,
            categoryType: BrowseProductByCategoryType.food,
          ),
        ),
        expect: () => [
          isA<RemovedCompareProducts>(),
          isA<ProductListClearedList>(),
        ],
      );

      blocTest<BrowseBloc, BrowseState>(
        'emits [RemovedCompareProducts] when categoryType is null',
        build: buildBloc,
        act: (bloc) => bloc.add(
          BrowseEvent.removeCompareProducts(
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

    group('CompareUpgradeNowTapped', () {
      blocTest<BrowseBloc, BrowseState>(
        'emits [CompareUpgradeNowTapSuccess] when upgrade now is tapped',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const BrowseEvent.compareUpgradeNowTapped(),
        ),
        expect: () => [
          isA<CompareUpgradeNowTapSuccess>(),
        ],
      );
    });

    group('BrowseSearchPagination exception handling', () {
      blocTest<BrowseBloc, BrowseState>(
        'emits [BrowseSearchLoading, BrowseSearchFailure] when generic exception is thrown',
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
          BrowseEvent.browseSearchPagination(
            searchQuery: tSearchQuery,
            page: 1,
            category: BrowseProductByCategoryType.food,
            categoryGroupTitle: 'Food',
            isEwgVerified: false,
            productOptionsItem: ProductSelectionOptionsItem.none,
          ),
        ),
        expect: () => [
          isA<BrowseSearchLoading>(),
          isA<BrowseSearchFailure>(),
        ],
      );
    });
  });
}
