import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/domain/models/search_brand_model.dart';
import 'package:healthy_living_find/src/domain/models/search_category_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_ingredient_model.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_state.dart';
import 'package:healthy_living_find/src/ui/models/product_entry_source.dart';
import 'package:healthy_living_find/src/ui/models/products_result_local_model.dart';
import 'package:healthy_living_find/src/ui/models/search_my_lists_cached_data_model.dart';
import 'package:healthy_living_find/src/ui/models/search_tabs.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

void main() {
  late FilterUtils filterUtils;

  setUp(() {
    filterUtils = FilterUtils();
  });

  UniversalSearchBloc buildBloc() {
    return UniversalSearchBloc(filterUtils: filterUtils);
  }

  group('UniversalSearchBloc', () {
    const tAllTab = SearchTabData(
      index: 0,
      name: 'All',
      type: SearchTabType.all,
    );

    const tProductsTab = SearchTabData(
      index: 1,
      name: 'Products',
      type: SearchTabType.products,
    );

    const tBrandsTab = SearchTabData(
      index: 2,
      name: 'Brands',
      type: SearchTabType.brands,
    );

    const tCategoriesTab = SearchTabData(
      index: 3,
      name: 'Categories',
      type: SearchTabType.categories,
    );

    const tIngredientsTab = SearchTabData(
      index: 4,
      name: 'Ingredients',
      type: SearchTabType.ingredients,
    );

    const tListsTab = SearchTabData(
      index: 5,
      name: 'Lists',
      type: SearchTabType.lists,
    );

    final tAllTabs = [
      tAllTab,
      tProductsTab,
      tBrandsTab,
      tCategoriesTab,
      tIngredientsTab,
      tListsTab,
    ];

    test('initial state is SearchInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, const UniversalSearchState.searchInitial());
      bloc.close();
    });

    group('SearchScreenInitialised', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [searchScreenInitial] when search screen is initialised',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.searchScreenInitialised(
            initialSelectedTab: tAllTab,
            tabs: tAllTabs,
            shouldDisplayTabBar: true,
            activateListSelection: false,
            textInputHintText: 'Search...',
            productSelectionOptionsItem: ProductSelectionOptionsItem.none,
          ),
        ),
        expect: () => [
          const UniversalSearchState.searchScreenInitial(),
        ],
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'sets selectedTabData and allTabs when initialised',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.searchScreenInitialised(
            initialSelectedTab: tAllTab,
            tabs: tAllTabs,
            shouldDisplayTabBar: true,
            activateListSelection: false,
            textInputHintText: 'Search...',
            productSelectionOptionsItem: ProductSelectionOptionsItem.none,
          ),
        ),
        verify: (bloc) {
          expect(bloc.selectedTabData.type, SearchTabType.all);
          expect(bloc.allTabs.length, tAllTabs.length);
          expect(bloc.shouldDisplayTabBar, true);
        },
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [searchScreenInitial, searchTextUpdated] when initialSearchQuery is provided',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.searchScreenInitialised(
            initialSelectedTab: tAllTab,
            tabs: tAllTabs,
            shouldDisplayTabBar: true,
            activateListSelection: false,
            textInputHintText: 'Search...',
            productSelectionOptionsItem: ProductSelectionOptionsItem.none,
            initialSearchQuery: 'test query',
          ),
        ),
        expect: () => [
          const UniversalSearchState.searchScreenInitial(),
          const UniversalSearchState.searchTextUpdated(
            searchQuery: 'test query',
          ),
        ],
      );
    });

    group('TabPressed', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [tabChanged] when a tab is pressed',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.tabPressed(tab: tBrandsTab),
        ),
        expect: () => [
          UniversalSearchState.tabChanged(selectedTabData: tBrandsTab),
        ],
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'updates selectedTabData when tab is pressed',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.tabPressed(tab: tProductsTab),
        ),
        verify: (bloc) {
          expect(bloc.selectedTabData.type, SearchTabType.products);
        },
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'sets productsEntrySource to normal when non-products tab is pressed',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.tabPressed(tab: tBrandsTab),
        ),
        verify: (bloc) {
          expect(bloc.productsEntrySource, ProductsEntrySource.normal);
        },
      );
    });

    group('SearchQueryUpdated', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [searchTextUpdated] when search query changes',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.searchQueryUpdated(searchQuery: 'new query'),
        ),
        expect: () => [
          const UniversalSearchState.searchTextUpdated(
            searchQuery: 'new query',
          ),
        ],
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [searchTextEmpty] when search query is empty',
        build: buildBloc,
        seed: () => const UniversalSearchState.searchTextUpdated(
          searchQuery: 'old query',
        ),
        act: (bloc) {
          // First set a non-empty query, then set empty
          bloc.add(
            UniversalSearchEvent.searchQueryUpdated(searchQuery: 'something'),
          );
          bloc.add(
            UniversalSearchEvent.searchQueryUpdated(searchQuery: ''),
          );
        },
        expect: () => [
          const UniversalSearchState.searchTextUpdated(
            searchQuery: 'something',
          ),
          const UniversalSearchState.searchTextEmpty(),
        ],
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'does not emit when same query is submitted',
        build: buildBloc,
        act: (bloc) {
          bloc.add(
            UniversalSearchEvent.searchQueryUpdated(searchQuery: 'same'),
          );
          bloc.add(
            UniversalSearchEvent.searchQueryUpdated(searchQuery: 'same'),
          );
        },
        expect: () => [
          const UniversalSearchState.searchTextUpdated(searchQuery: 'same'),
        ],
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'updates searchQuery on bloc',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.searchQueryUpdated(searchQuery: 'updated'),
        ),
        verify: (bloc) {
          expect(bloc.searchQuery, 'updated');
        },
      );
    });

    group('SaveBrandListData', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [tabBarTabsUpdated] when brand list data is saved',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.saveBrandListData(
            brandList: [SearchBrandModel(id: 1, name: 'Brand')],
            pagination: SearchPaginationItemModel(
              currentPage: 1,
              totalPages: 1,
              totalEntries: 1,
            ),
          ),
        ),
        expect: () => [
          isA<TabBarTabsUpdated>(),
        ],
      );
    });

    group('SaveAllTabData', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [tabBarTabsUpdated] when all tab data is saved',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.saveAllTabData(
            allTabData: SearchResponseModel(
              results: SearchResultsModel(
                lists: [],
                brandAggs: [],
                brands: [SearchBrandModel(id: 1, name: 'Test')],
                products: [],
                categories: [],
                ingredients: [],
              ),
              pagination: SearchPaginationModel(),
            ),
          ),
        ),
        expect: () => [
          isA<TabBarTabsUpdated>(),
        ],
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'stores allTabResults on the bloc',
        build: buildBloc,
        act: (bloc) {
          final responseModel = SearchResponseModel(
            results: SearchResultsModel(lists: [], brandAggs: []),
            pagination: SearchPaginationModel(),
          );
          bloc.add(
            UniversalSearchEvent.saveAllTabData(allTabData: responseModel),
          );
        },
        verify: (bloc) {
          expect(bloc.allTabResults, isNotNull);
        },
      );
    });

    group('SaveCategoryListData', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [tabBarTabsUpdated] when category list data is saved',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.saveCategoryListData(
            categoryList: [SearchCategoryItemModel(id: 1, name: 'Cat')],
            pagination: SearchPaginationItemModel(
              currentPage: 1,
              totalPages: 1,
              totalEntries: 1,
            ),
          ),
        ),
        expect: () => [
          isA<TabBarTabsUpdated>(),
        ],
      );
    });

    group('SaveIngredientListData', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [tabBarTabsUpdated] when ingredient list data is saved',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.saveIngredientListData(
            ingredientList: [SearchIngredientModel(id: 1, name: 'Ing')],
            pagination: SearchPaginationItemModel(
              currentPage: 1,
              totalPages: 1,
              totalEntries: 1,
            ),
          ),
        ),
        expect: () => [
          isA<TabBarTabsUpdated>(),
        ],
      );
    });

    group('SaveMyListsData', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [tabBarTabsUpdated] when my lists data is saved',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.saveMyListsData(
            data: SearchMyListsCachedDataModel(
              myLists: [
                SearchListsModel(
                  id: 1,
                  type: 'list',
                  name: 'Test',
                  description: '',
                  ownerName: 'Owner',
                  itemsCount: 0,
                  highlights: null,
                ),
              ],
              pagination: null,
            ),
          ),
        ),
        expect: () => [
          isA<TabBarTabsUpdated>(),
        ],
      );
    });

    group('ProductOptionUpdate', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [productOptionUpdated] when product option is updated',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.productOptionUpdate(
            productOptionsItem: ProductSelectionOptionsItem.addToList,
          ),
        ),
        expect: () => [
          const UniversalSearchState.productOptionUpdated(
            productOptionsItem: ProductSelectionOptionsItem.addToList,
          ),
        ],
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'does not emit when defaultActivateListSelection is true',
        build: buildBloc,
        act: (bloc) {
          // First initialise with activateListSelection = true
          bloc.add(
            UniversalSearchEvent.searchScreenInitialised(
              initialSelectedTab: tAllTab,
              tabs: tAllTabs,
              shouldDisplayTabBar: true,
              activateListSelection: true,
              textInputHintText: 'Search...',
              productSelectionOptionsItem: ProductSelectionOptionsItem.addToList,
            ),
          );
          // Then try to update product options
          bloc.add(
            UniversalSearchEvent.productOptionUpdate(
              productOptionsItem: ProductSelectionOptionsItem.compareProducts,
            ),
          );
        },
        expect: () => [
          const UniversalSearchState.searchScreenInitial(),
          // No productOptionUpdated since defaultActivateListSelection is true
        ],
      );
    });

    group('ProductTabChange', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [productTabChanged] when product tab changes',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.productTabChange(
            searchType: SearchType.food,
            productsResultLocalModel: null,
          ),
        ),
        expect: () => [
          const UniversalSearchState.productTabChanged(
            searchType: SearchType.food,
          ),
        ],
      );
    });

    group('CompareUpgradeNowTapped', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [compareUpgradeNowTapSuccess] when compare upgrade is tapped',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const UniversalSearchEvent.compareUpgradeNowTapped(),
        ),
        expect: () => [
          isA<CompareUpgradeNowTapSuccess>(),
        ],
      );
    });

    group('SetProductsEntrySource', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'sets products entry source without emitting state',
        build: buildBloc,
        act: (bloc) => bloc.add(
          UniversalSearchEvent.setProductsEntrySource(
            source: ProductsEntrySource.fromAllTabViewAll,
          ),
        ),
        expect: () => [],
      );
    });

    group('SaveProductsResult', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [tabBarTabsUpdated] when products result is saved',
        build: buildBloc,
        act: (bloc) {
          // First initialise so _productsResultLocalModel has appliedFilters
          bloc.add(
            UniversalSearchEvent.searchScreenInitialised(
              initialSelectedTab: tAllTab,
              tabs: tAllTabs,
              shouldDisplayTabBar: true,
              activateListSelection: false,
              textInputHintText: 'Search...',
              productSelectionOptionsItem: ProductSelectionOptionsItem.none,
            ),
          );
          bloc.add(
            UniversalSearchEvent.saveProductsResult(
              productsResult: ProductsResultLocalModel(
                foodSearchResultsList: [],
                foodSearchPaginationModel: null,
                cleanersSearchResultsList: [],
                cleanersSearchPaginationModel: null,
                personalCareSearchResultsList: [],
                personalCareSearchPaginationModel: null,
                selectedCategoryType: null,
                productTypeCount: {'food': 0, 'cleaners': 0, 'personalCare': 0},
              ),
            ),
          );
        },
        expect: () => [
          const UniversalSearchState.searchScreenInitial(),
          isA<TabBarTabsUpdated>(),
        ],
      );
    });

    group('DisableTabOnProductSelectionActivate', () {
      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'emits [tabBarTabsUpdated] when on products tab with selection activated',
        build: buildBloc,
        act: (bloc) {
          // First navigate to products tab
          bloc.add(UniversalSearchEvent.tabPressed(tab: tProductsTab));
          // Then disable tabs on product selection activate
          bloc.add(
            UniversalSearchEvent.disableTabOnProductSelectionActivate(
              productOptionsItem: ProductSelectionOptionsItem.addToList,
            ),
          );
        },
        expect: () => [
          UniversalSearchState.tabChanged(selectedTabData: tProductsTab),
          isA<TabBarTabsUpdated>(),
        ],
      );

      blocTest<UniversalSearchBloc, UniversalSearchState>(
        'does not emit tabBarTabsUpdated when not on products tab',
        build: buildBloc,
        act: (bloc) {
          // Stay on default tab (not products)
          bloc.add(UniversalSearchEvent.tabPressed(tab: tBrandsTab));
          bloc.add(
            UniversalSearchEvent.disableTabOnProductSelectionActivate(
              productOptionsItem: ProductSelectionOptionsItem.addToList,
            ),
          );
        },
        expect: () => [
          UniversalSearchState.tabChanged(selectedTabData: tBrandsTab),
          // No tabBarTabsUpdated since not on products tab
        ],
      );
    });
  });
}
