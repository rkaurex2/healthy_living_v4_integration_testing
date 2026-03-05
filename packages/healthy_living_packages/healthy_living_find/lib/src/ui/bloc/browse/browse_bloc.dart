import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/healthy_living_find.dart';
import 'package:healthy_living_find/src/analytics/browse_analytics.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_event.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class BrowseBloc extends Bloc<BrowseEvent, BrowseState> {
  final UniversalSearchRepository _repository;
  final SearchAnalytics _searchAnalytics;
  final FilterUtils _filterUtils;
  List<SearchProductModel> _foodProducts = [];
  List<SearchProductModel> _cleanersProducts = [];
  List<SearchProductModel> _personalProducts = [];
  final List<SearchProductModel> _selectedListProducts = [];
  SearchPaginationModel? _searchPaginationModel;
  final List<int> _compareListProducts = [];
  final Map<ProductCategory, ProductFiltersModel> _productCategoryAndFiltersMap;
  final Map<ProductCategory, ProductFiltersModel>
  _productCategoryAndVerifiedFiltersMap;
  final Map<ProductCategory, List<CategoryAggregationModel>>
  _productCategoryAndCategoryAggregationsMap = {};
  final Map<ProductCategory, List<BrandAggregationModel>>
  _productCategoryAndBrandAggregationsMap = {};
  late SortOption _updatedSortOption;

  final Map<BrowseProductByCategoryType, bool> _isPaginating = {
    BrowseProductByCategoryType.food: false,
    BrowseProductByCategoryType.cleaner: false,
    BrowseProductByCategoryType.personalCare: false,
  };

  final Map<BrowseProductByCategoryType, int> _pageNumbers = {
    BrowseProductByCategoryType.food: 1,
    BrowseProductByCategoryType.cleaner: 1,
    BrowseProductByCategoryType.personalCare: 1,
  };

  final Map<BrowseProductByCategoryType, int> _pageSizes = {
    BrowseProductByCategoryType.food: IntegerConstants.defaultProductsPerPage,
    BrowseProductByCategoryType.cleaner:
        IntegerConstants.defaultProductsPerPage,
    BrowseProductByCategoryType.personalCare:
        IntegerConstants.defaultProductsPerPage,
  };
  final Map<BrowseProductByCategoryType, bool> _hasMoreData = {
    BrowseProductByCategoryType.food: false,
    BrowseProductByCategoryType.cleaner: false,
    BrowseProductByCategoryType.personalCare: false,
  };

  SortOption get updatedSortOption => _updatedSortOption;

  bool isPaginatingFor(BrowseProductByCategoryType cat) =>
      _isPaginating[cat] ?? false;

  int getPageNumber(BrowseProductByCategoryType cat) => _pageNumbers[cat] ?? 1;

  int getPageSize(BrowseProductByCategoryType cat) =>
      _pageSizes[cat] ?? IntegerConstants.defaultProductsPerPage;

  bool hasMoreData(BrowseProductByCategoryType cat) =>
      _hasMoreData[cat] ?? false;

  List<SearchProductModel> get selectedListProducts => _selectedListProducts;

  final BrowseAnalytics _browseAnalytics;

  BrowseBloc({
    required UniversalSearchRepository findRepository,
    required FilterUtils filterUtils,
    required BrowseAnalytics browseAnalytics,
    required SearchAnalytics searchAnalytics,
  }) : _repository = findRepository,
       _filterUtils = filterUtils,
       _browseAnalytics = browseAnalytics,
       _searchAnalytics = searchAnalytics,
       _productCategoryAndVerifiedFiltersMap =
           filterUtils.getVerifiedDefaultFiltersMap(),
       _productCategoryAndFiltersMap = filterUtils.getDefaultFiltersMap(),
       super(const BrowseState.browseSearchInitial()) {
    _updatedSortOption = _filterUtils.getDefaultSortOption();

    on<BrowseSearchPagination>(_onProductSearchPagination);
    on<BrowseSetSortFilter>(_onSetSortFilter);
    on<ProductOptionUpdate>(_onProductOptionUpdate);
    on<ProductSelect>(_onProductSelect);
    on<ProductListClearList>(_onProductListClearList);
    on<ProductListCloseSelection>(_onProductListCloseSelection);
    on<RemoveCompareProducts>(_compareProductDeselect);
    on<CompareUpgradeNowTapped>(_onCompareUpgradeNowTapped);
  }

  BrowseProductByCategoryType? _selectedCategory;

  List<SearchProductModel> get foodProducts => _foodProducts;

  List<SearchProductModel> get cleanersProducts => _cleanersProducts;

  List<SearchProductModel> get personalProducts => _personalProducts;

  List<int> get compareListProducts => _compareListProducts;

  BrowseProductByCategoryType? get selectedProductCategory => _selectedCategory;

  ProductSelectionOptionsItem _productOptionsItem =
      ProductSelectionOptionsItem.none;

  ProductSelectionOptionsItem get productOptionsItem => _productOptionsItem;

  Map<ProductCategory, List<CategoryAggregationModel>>
  get productCategoryAndCategoryAggregationsMap =>
      _productCategoryAndCategoryAggregationsMap;

  static const int _perPage = IntegerConstants.defaultProductsPerPage;

  SearchPaginationModel? get searchPaginationModel => _searchPaginationModel;

  int _getCurrentItemsCount(BrowseProductByCategoryType categoryType) {
    if (categoryType.name == BrowseProductByCategoryType.food.name) {
      return _foodProducts.length;
    } else if (categoryType.value ==
        BrowseProductByCategoryType.cleaner.value) {
      return _cleanersProducts.length;
    } else if (categoryType.name ==
            BrowseProductByCategoryType.personalCare.name ||
        categoryType.name == BrowseProductByCategoryType.sunscreen.name) {
      return _personalProducts.length;
    }
    return 0;
  }

  List<SearchProductModel> productItemsSelection({
    required List<SearchProductModel> list,
    required int currentIndex,
    // required bool isSelectionDisabled,
    required ProductSelectionType productSelectionType,
  }) {
    return list.asMap().entries.map((entry) {
      int index = entry.key;
      SearchProductModel item = entry.value;
      if (index == currentIndex) {
        if (productSelectionType == ProductSelectionType.add) {
          if (!_selectedListProducts.any((e) => e.id == item.id)) {
            _selectedListProducts.add(item);
          }
        } else {
          _selectedListProducts.removeWhere((element) => element.id == item.id);
        }
        // Update only the tapped item
        return item.copyWith(productSelectionType: productSelectionType);
      } else {
        // Keep all other items as-is
        return item.copyWith(
          isSelectionDisabled:
              item.productSelectionType != ProductSelectionType.add &&
              _compareListProducts.length == 2 &&
              _productOptionsItem ==
                  ProductSelectionOptionsItem.compareProducts,
        );
      }
    }).toList();
  }

  void _onCompareUpgradeNowTapped(
    CompareUpgradeNowTapped event,
    Emitter<BrowseState> emit,
  ) {
    emit(
      BrowseState.compareUpgradeNowTapSuccess(
        timestamp: DateTime.now().toString(),
      ),
    );
  }

  void _onProductSelect(ProductSelect event, Emitter<BrowseState> emit) {
    if (_productOptionsItem != ProductSelectionOptionsItem.none) {
      if (event.category == BrowseProductByCategoryType.food) {
        if (event.productSelectionOptionsItem ==
                ProductSelectionOptionsItem.compareProducts &&
            _foodProducts.isValidList) {
          addRemoveIndexCompareList(id: _foodProducts[event.index].id ?? -1);
        }

        _foodProducts = productItemsSelection(
          list: _foodProducts,
          currentIndex: event.index,
          productSelectionType: event.productSelectionType,
        );
      } else if (event.category == BrowseProductByCategoryType.cleaner) {
        if (event.productSelectionOptionsItem ==
                ProductSelectionOptionsItem.compareProducts &&
            _cleanersProducts.isValidList) {
          addRemoveIndexCompareList(
            id: _cleanersProducts[event.index].id ?? -1,
          );
        }
        _cleanersProducts = productItemsSelection(
          list: _cleanersProducts,
          currentIndex: event.index,
          productSelectionType: event.productSelectionType,
        );
      } else {
        if (event.productSelectionOptionsItem ==
                ProductSelectionOptionsItem.compareProducts &&
            _personalProducts.isValidList) {
          addRemoveIndexCompareList(
            id: _personalProducts[event.index].id ?? -1,
          );
        }
        _personalProducts = productItemsSelection(
          list: _personalProducts,
          currentIndex: event.index,
          productSelectionType: event.productSelectionType,
        );
      }
    }
    emit(
      BrowseState.productSelected(
        productSelectionType: event.productSelectionType,
        index: event.index,
      ),
    );
  }

  void _getProducts(
    SearchRequestModel request,
    int page,
    bool? isEWGVerified,
    NetworkResponse<SearchResponseModel?> response,
    Emitter<BrowseState> emit,
    BrowseProductByCategoryType categoryType, {
    required ProductSelectionOptionsItem productSelectionOptionsItem,
    int? categoryId,
    String? categoryGroupId,
    bool shouldClearPrevList = false,
  }) {
    final productCategory = _filterUtils.getProductCategoryFromSearchType(
      SearchType.fromName(categoryType.value),
    );
    _selectedCategory = BrowseProductByCategoryType.fromName(
      categoryType.value,
    );

    final categoryAggregations = response.data?.results?.categoryAggs;
    final brandAggregations = response.data?.results?.brandAggs;

    if (_productCategoryAndCategoryAggregationsMap[productCategory] == null &&
        categoryAggregations != null) {
      if (productCategory == ProductCategory.personalCare) {
        final List<CategoryAggregationModel> filteredCategoryAggs;
        if (categoryGroupId.isValidValue) {
          filteredCategoryAggs =
              categoryAggregations.personalCare
                  .where((agg) => agg.id == int.tryParse(categoryGroupId!))
                  .toList();
        } else {
          filteredCategoryAggs = categoryAggregations.personalCare;
        }

        _productCategoryAndCategoryAggregationsMap[productCategory] =
            filteredCategoryAggs;
        _productCategoryAndBrandAggregationsMap[productCategory] =
            brandAggregations ?? [];
      } else if (productCategory == ProductCategory.food) {
        final List<CategoryAggregationModel> filteredCategoryAggs;
        if (categoryGroupId.isValidValue) {
          filteredCategoryAggs =
              categoryAggregations.food
                  .where((agg) => agg.id == int.tryParse(categoryGroupId!))
                  .toList();
        } else {
          filteredCategoryAggs = categoryAggregations.food;
        }
        _productCategoryAndCategoryAggregationsMap[productCategory] =
            filteredCategoryAggs;
        _productCategoryAndBrandAggregationsMap[productCategory] =
            brandAggregations ?? [];
      } else if (productCategory == ProductCategory.cleaner) {
        final List<CategoryAggregationModel> filteredCategoryAggs;

        if (categoryGroupId.isValidValue) {
          filteredCategoryAggs =
              categoryAggregations.cleaners
                  .where((agg) => agg.id == int.tryParse(categoryGroupId!))
                  .toList();
        } else {
          filteredCategoryAggs = categoryAggregations.cleaners;
        }

        _productCategoryAndCategoryAggregationsMap[productCategory] =
            filteredCategoryAggs;
        _productCategoryAndBrandAggregationsMap[productCategory] =
            brandAggregations ?? [];
      } else if (productCategory == ProductCategory.sunscreen) {
        final List<CategoryAggregationModel> filteredCategoryAggs;
        if (categoryGroupId.isValidValue) {
          filteredCategoryAggs =
              categoryAggregations.personalCare
                  .where((agg) => agg.id == int.tryParse(categoryGroupId!))
                  .toList();
        } else {
          filteredCategoryAggs = categoryAggregations.personalCare;
        }

        _productCategoryAndCategoryAggregationsMap[productCategory] =
            filteredCategoryAggs;
        _productCategoryAndBrandAggregationsMap[productCategory] =
            brandAggregations ?? [];
      }
    }
    List<SearchProductModel> list =
        (response.data?.results?.products ?? []).asMap().entries.map((entry) {
          SearchProductModel item = entry.value;
          if (_productOptionsItem != ProductSelectionOptionsItem.none) {
            return item.copyWith(
              productSelectionType: ProductSelectionType.remove,
              isSelectionDisabled:
                  item.productSelectionType != ProductSelectionType.add &&
                  _compareListProducts.length == 2 &&
                  _productOptionsItem ==
                      ProductSelectionOptionsItem.compareProducts,
            );
          } else {
            return item;
          }
        }).toList();

    /// logs GA4 event for Browse
    if (page == 1 && list.isValidList) {
      _logBrowseAnalytics(
        request: request,
        products: [list.first],
        isEWGVerified: isEWGVerified,
      );
    }

    if (categoryType.name == BrowseProductByCategoryType.food.name) {
      if (shouldClearPrevList) {
        _foodProducts = [];
      }

      _foodProducts.addAll(list);
    } else if (categoryType.value ==
        BrowseProductByCategoryType.cleaner.value) {
      if (shouldClearPrevList) {
        _cleanersProducts = [];
      }
      _cleanersProducts.addAll(list);
    } else if (categoryType.name ==
            BrowseProductByCategoryType.personalCare.name ||
        categoryType.name == BrowseProductByCategoryType.sunscreen.name) {
      if (shouldClearPrevList) {
        _personalProducts = [];
      }
      _personalProducts.addAll(list);
    }
  }

  ProductFiltersModel? getProductCategoryFilters({
    required BrowseProductByCategoryType type,
    required bool isEwgVerified,
  }) {
    ProductFiltersModel? filters;
    SearchType selectedProductCategory = SearchType.fromName(type.value)!;

    if (selectedProductCategory == SearchType.personalCare) {
      filters =
          isEwgVerified
              ? _productCategoryAndVerifiedFiltersMap[ProductCategory
                  .personalCare]
              : _productCategoryAndFiltersMap[ProductCategory.personalCare];
    } else if (selectedProductCategory == SearchType.food) {
      filters =
          isEwgVerified
              ? _productCategoryAndVerifiedFiltersMap[ProductCategory.food]
              : _productCategoryAndFiltersMap[ProductCategory.food];
    } else if (selectedProductCategory == SearchType.cleaner) {
      filters =
          isEwgVerified
              ? _productCategoryAndVerifiedFiltersMap[ProductCategory.cleaner]
              : _productCategoryAndFiltersMap[ProductCategory.cleaner];
    } else if (selectedProductCategory == SearchType.sunscreen) {
      filters =
          isEwgVerified
              ? _productCategoryAndVerifiedFiltersMap[ProductCategory.sunscreen]
              : _productCategoryAndFiltersMap[ProductCategory.sunscreen];
    }

    return filters;
  }

  List<CategoryAggregationModel> getCategoryAggregationsForProductCategory() {
    final productCategory = _filterUtils.getProductCategoryFromSearchType(
      SearchType.fromName(_selectedCategory?.value)!,
    );

    return _productCategoryAndCategoryAggregationsMap[productCategory] ?? [];
  }

  List<BrandAggregationModel> getBrandAggregationsForProductCategory() {
    final productCategory = _filterUtils.getProductCategoryFromSearchType(
      SearchType.fromName(_selectedCategory?.value)!,
    );
    return _productCategoryAndBrandAggregationsMap[productCategory] ?? [];
  }

  Future<void> _onProductSearchPagination(
    BrowseSearchPagination event,
    Emitter<BrowseState> emit,
  ) async {
    if (event.filters != null) {
      final productCategory = _filterUtils.getProductCategoryFromSearchType(
        SearchType.fromName(event.category.value),
      );
      if (event.isEwgVerified) {
        _productCategoryAndVerifiedFiltersMap[productCategory] = event.filters!;
      } else {
        _productCategoryAndFiltersMap[productCategory] = event.filters!;
      }
    } else {}

    if (event.page == 1) {
      emit(BrowseState.browseSearchLoading());
      _pageNumbers[event.category] = 1;
    } else {
      if (isPaginatingFor(event.category)) return;
      _setPaginating(event.category, true);
      emit(BrowseState.paginationInProgress(category: event.category));
    }

    try {
      await _performProductSearch(
        emit,
        searchQuery: event.searchQuery,
        page: event.page,
        categoryType: event.category,
        categoryGroupId: event.categoryGroupId,
        categoryId: event.categoryId,
        filters: event.filters,
        categoryName: event.categoryName,
        isEWGVerified: event.isEwgVerified,
        productSelectionOptionsItem: event.productOptionsItem,
        subCategoryId: event.subCategoryId,
      );
    } on NetworkConnectionException catch (e) {
      emit(BrowseSearchInternetFailure(e));
    } on Exception catch (e) {
      emit(BrowseSearchFailure(e));
    }
  }

  void _setPaginating(BrowseProductByCategoryType cat, bool value) {
    _isPaginating[cat] = value;
  }

  Future<void> _performProductSearch(
    Emitter<BrowseState> emit, {
    required ProductSelectionOptionsItem productSelectionOptionsItem,
    required String searchQuery,
    required BrowseProductByCategoryType categoryType,
    required int page,
    String? categoryGroupId,
    String? categoryName,
    ProductFiltersModel? filters,
    bool isShowEmpty = false,
    bool? isEWGVerified,
    int? categoryId,
    int? subCategoryId,
  }) async {
    final categoryTypeForApiRequest =
        categoryType == BrowseProductByCategoryType.sunscreen
            ? BrowseProductByCategoryType.personalCare
            : categoryType;

    final request = _buildProductSearchRequest(
      searchQuery: searchQuery,
      page: page,
      categoryType: categoryTypeForApiRequest,
      filters: filters,
      categoryName: categoryName,
      categoryGroupId: categoryGroupId,
      isEWGVerified: isEWGVerified,
      categoryId: categoryId,
      subCategoryId: subCategoryId,
    );

    /// Logs GA4 search event
    if (page == 1 && searchQuery.isValidValue) {
      await _searchAnalytics.logSearch(
        searchTerm: searchQuery,
        source: StringConstants.browse,
      );
    }

    try {
      final response = await _repository.universalSearch(request: request);

      if (response.isSuccess && response.data != null) {
        _searchPaginationModel = response.data!.pagination;

        if (response.data?.results?.products.isEmpty == true && isShowEmpty) {
        } else {
          _getProducts(
            request,
            page,
            isEWGVerified,
            response,
            emit,
            categoryType,
            shouldClearPrevList: page == 1,
            categoryGroupId: categoryGroupId,
            categoryId: categoryId,
            productSelectionOptionsItem: productSelectionOptionsItem,
          );
          _pageNumbers[categoryType] = page;

          int currentItemsCount = _getCurrentItemsCount(categoryType);
          int totalEntries =
              response.data!.pagination?.products?.totalEntries ?? 0;
          bool hasMore = currentItemsCount < totalEntries;
          _hasMoreData[categoryType] = hasMore;
          emit(
            BrowseState.browseSearchSuccess(
              searchResponse: response.data!,
              page: page,
              hasMore:
                  (response.data!.pagination?.products?.totalEntries ?? 0) >
                  (response.data!.results?.products.length ?? 0),
            ),
          );
        }

        /// Logs GA4 search Results
        if (page == 1 && searchQuery.isValidValue) {
          final responseData = response.data!;
          await _searchAnalytics.logViewSearchResults(
            searchTerm: searchQuery,
            resultCount: responseData.pagination?.totalEntries ?? 0,
            items: responseData.results?.products,
            source: StringConstants.browse,
          );
        }
      } else {
        _emitSearchFailure(emit);
      }
    } on NetworkConnectionException catch (e) {
      emit(BrowseSearchInternetFailure(e));
    } on Exception catch (e) {
      emit(BrowseSearchFailure(e));
    } finally {
      _setPaginating(categoryType, false);
    }
  }

  SearchRequestModel _buildProductSearchRequest({
    required String searchQuery,
    required int page,
    required BrowseProductByCategoryType categoryType,
    ProductFiltersModel? filters,
    String? categoryName,
    String? categoryGroupId,
    bool? isEWGVerified,
    int? categoryId,
    int? subCategoryId,
  }) {
    return SearchRequestModel(
      search: searchQuery.trim(),
      page: page.toString(),
      perPage: _perPage.toString(),
      hazardScoreRanges: _filterUtils.generateHazardLevelFilterArrayQuery(
        hazardLevel: filters?.hazardLevel,
      ),
      searchType: categoryType.value,
      sortBy: filters?.sortOption.sortBy.queryParamValue,
      sortOrder: filters?.sortOption.sortOrder.name,
      categories:
          filters?.categories?.map((category) => category.toDomain()).toList(),
      brands: filters?.brands?.map((brand) => brand.toDomain()).toList(),
      ingredientPreferences: filters?.ingredientPreferences,
      categoryId: categoryId?.toString(),
      subCategoryId: subCategoryId?.toString(),
      categoryGroupId:
          filters != null &&
                      filters.categories.isValidList &&
                      filters.categories!.any((e) => e.isAnySelected) ||
                  categoryName.isValidValue
              ? null
              : categoryGroupId,
      ewgVerified: isEWGVerified == true ? isEWGVerified.toString() : null,
      isBrowseFilter: true,
    );
  }

  void _emitSearchFailure(Emitter<BrowseState> emit) {
    emit(
      BrowseState.browseSearchFailure(
        UnknownNetworkException(message: '', statusCode: -1, originalError: ''),
      ),
    );
  }

  bool isFilterAppliedOrPreselected({
    required BrowseProductByCategoryType type,
    required bool isPreFilterSelected,
    required bool isEWGVerified,
  }) {
    if (isPreFilterSelected) {
      return true;
    }
    bool isFilterApplied = false;
    final filters = getProductCategoryFilters(
      type: type,
      isEwgVerified: isEWGVerified,
    );

    if (filters == null) {
      return isFilterApplied;
    }

    final bool isSortOptionUpdated =
        filters.sortOption.type != SortType.hazardScoreBestToWorst;

    final bool isHazardLevelUpdated = filters.hazardLevel != HazardLevel.high;

    final bool isAnySubcategorySelected =
        filters.categories?.any((category) => category.isAnySelected) == true;

    final bool isAnyBrandSelected =
        filters.brands?.any((brand) => brand.isSelected == true) == true;

    final bool isIngredientPreferencesUpdated =
        filters.ingredientPreferences?.isAvoided == true ||
        filters.ingredientPreferences?.isPreferred == true;

    return isSortOptionUpdated ||
        isHazardLevelUpdated ||
        isAnySubcategorySelected ||
        isAnyBrandSelected ||
        isIngredientPreferencesUpdated;
  }

  void _onSetSortFilter(BrowseSetSortFilter event, Emitter<BrowseState> emit) {
    if (event.sortOption != _updatedSortOption) {
      _updatedSortOption = event.sortOption;
    }
    emit(
      BrowseState.browseSortFilterUpdated(selectedSortOption: event.sortOption),
    );
  }

  Future<void> _onProductOptionUpdate(
    ProductOptionUpdate event,
    Emitter<BrowseState> emit,
  ) async {
    _productOptionsItem = event.productOptionsItem;
    if (event.productOptionsItem != ProductSelectionOptionsItem.none) {
      if (event.category == BrowseProductByCategoryType.food) {
        _foodProducts =
            _foodProducts
                .map(
                  (e) => e.copyWith(
                    productSelectionType: ProductSelectionType.remove,
                  ),
                )
                .toList();
      } else if (event.category == BrowseProductByCategoryType.cleaner) {
        _cleanersProducts =
            _cleanersProducts
                .map(
                  (e) => e.copyWith(
                    productSelectionType: ProductSelectionType.remove,
                  ),
                )
                .toList();
      } else {
        _personalProducts =
            _personalProducts
                .map(
                  (e) => e.copyWith(
                    productSelectionType: ProductSelectionType.remove,
                  ),
                )
                .toList();
      }
    }
    await Future.delayed(Duration(microseconds: 400));
    emit(
      BrowseState.productOptionUpdated(
        productOptionsItem: event.productOptionsItem,
      ),
    );
  }

  List<SearchProductModel> browseListCloseClear({
    required List<SearchProductModel> list,
    required bool isSelectionDisabled,
    required ProductSelectionType productSelectionType,
  }) {
    return list.asMap().entries.map((entry) {
      SearchProductModel item = entry.value;
      return item.copyWith(
        productSelectionType: productSelectionType,
        isSelectionDisabled: isSelectionDisabled,
      );
    }).toList();
  }

  Future<void> _onProductListClearList(
    ProductListClearList event,
    Emitter<BrowseState> emit,
  ) async {
    _selectedListProducts.clear();
    _compareListProducts.clear();
    if (event.categoryType != null) {
      if (event.categoryType!.value.toLowerCase() ==
          BrowseProductByCategoryType.food.value.toLowerCase()) {
        _foodProducts = browseListCloseClear(
          list: _foodProducts,
          productSelectionType: ProductSelectionType.remove,
          isSelectionDisabled: false,
        );
      } else if (event.categoryType!.value.toLowerCase() ==
          BrowseProductByCategoryType.cleaner.value.toLowerCase()) {
        _cleanersProducts = browseListCloseClear(
          list: _cleanersProducts,
          productSelectionType: ProductSelectionType.remove,
          isSelectionDisabled: false,
        );
      } else if (event.categoryType!.value.toLowerCase() ==
          BrowseProductByCategoryType.personalCare.value.toLowerCase()) {
        _personalProducts = browseListCloseClear(
          list: _personalProducts,
          productSelectionType: ProductSelectionType.remove,
          isSelectionDisabled: false,
        );
      }
      emit(BrowseState.productListClearedList());
    }
  }

  Future<void> _onProductListCloseSelection(
    ProductListCloseSelection event,
    Emitter<BrowseState> emit,
  ) async {
    _selectedListProducts.clear();
    _compareListProducts.clear();
    _productOptionsItem = event.productSelectionOptionsItem;
    if (event.categoryType != null) {
      if (event.categoryType!.value.toLowerCase() ==
          BrowseProductByCategoryType.food.value.toLowerCase()) {
        _foodProducts = browseListCloseClear(
          list: _foodProducts,
          productSelectionType: ProductSelectionType.none,
          isSelectionDisabled: false,
        );
      } else if (event.categoryType!.value.toLowerCase() ==
          BrowseProductByCategoryType.cleaner.value.toLowerCase()) {
        _cleanersProducts = browseListCloseClear(
          list: _cleanersProducts,
          productSelectionType: ProductSelectionType.none,
          isSelectionDisabled: false,
        );
      } else if (event.categoryType!.value.toLowerCase() ==
          BrowseProductByCategoryType.personalCare.value.toLowerCase()) {
        _personalProducts = browseListCloseClear(
          list: _personalProducts,
          productSelectionType: ProductSelectionType.none,
          isSelectionDisabled: false,
        );
      }
      emit(BrowseState.productListCloseSelectionUpdated());
    }
  }

  void addRemoveIndexCompareList({required int id}) {
    if (id >= 0) {
      if (_compareListProducts.contains(id)) {
        _compareListProducts.remove(id);
      } else {
        _compareListProducts.add(id);
      }
    }
  }

  Future<void> _compareProductDeselect(
    RemoveCompareProducts event,
    Emitter<BrowseState> emit,
  ) async {
    try {
      emit(BrowseState.removedCompareProducts());
      if (event.categoryType != null) {
        if (event.categoryType!.value == SearchType.food.value) {
          final selectedProductId = event.compareProductItem.id;
          final listSelectIndex = _foodProducts.indexWhere(
            (e) => e.id == selectedProductId,
          );
          if (event.productSelectionOptionsItem ==
                  ProductSelectionOptionsItem.compareProducts &&
              _foodProducts.isValidList) {
            addRemoveIndexCompareList(id: selectedProductId ?? -1);
          }

          _foodProducts = productItemsSelection(
            list: _foodProducts,
            currentIndex: listSelectIndex,
            productSelectionType: event.productSelectionType,
          );
        } else if (event.categoryType!.value == SearchType.cleaner.value) {
          final selectedProductId = event.compareProductItem.id;
          final listSelectIndex = _cleanersProducts.indexWhere(
            (e) => e.id == selectedProductId,
          );
          if (event.productSelectionOptionsItem ==
                  ProductSelectionOptionsItem.compareProducts &&
              _cleanersProducts.isValidList) {
            addRemoveIndexCompareList(id: selectedProductId ?? -1);
          }

          _cleanersProducts = productItemsSelection(
            list: _cleanersProducts,
            currentIndex: listSelectIndex,
            productSelectionType: event.productSelectionType,
          );
        } else if (event.categoryType!.value == SearchType.personalCare.value) {
          final selectedProductId = event.compareProductItem.id;
          final listSelectIndex = _personalProducts.indexWhere(
            (e) => e.id == selectedProductId,
          );
          if (event.productSelectionOptionsItem ==
                  ProductSelectionOptionsItem.compareProducts &&
              _personalProducts.isValidList) {
            addRemoveIndexCompareList(id: selectedProductId ?? -1);
          }
          _personalProducts = productItemsSelection(
            list: _personalProducts,
            currentIndex: listSelectIndex,
            productSelectionType: event.productSelectionType,
          );
        }

        emit(BrowseState.productListClearedList());
      }
    } catch (_) {
      _emitSearchFailure(emit);
    }
  }

  void _logBrowseAnalytics({
    required SearchRequestModel request,
    required List<SearchProductModel> products,
    bool? isEWGVerified,
  }) {
    // VERIFIED
    if (isEWGVerified == true) {
      _browseAnalytics.logBrowseVerified(items: products);
      return;
    }

    // SUBCATEGORY
    if (request.subCategoryId != null) {
      _browseAnalytics.logBrowseSubCategory(
        productType: request.searchType ?? '',
        subCategoryId: request.subCategoryId ?? '',
        isEWGVerified: isEWGVerified ?? false,
        items: products,
      );
      return;
    }

    // CATEGORY
    if (request.categoryId != null) {
      _browseAnalytics.logBrowseCategory(
        productType: request.searchType ?? '',
        categoryId: request.categoryId ?? '',
        isEWGVerified: isEWGVerified ?? false,
        items: products,
      );
      return;
    }

    // CATEGORY GROUP
    if (request.categoryGroupId != null) {
      _browseAnalytics.logBrowseCategoryGroup(
        productType: request.searchType ?? '',
        categoryGroupId: request.categoryGroupId ?? '',
        isEWGVerified: isEWGVerified ?? false,
        items: products,
      );
      return;
    }
  }
}
