import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/healthy_living_find.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_state.dart';
import 'package:healthy_living_find/src/ui/models/product_entry_source.dart';
import 'package:healthy_living_find/src/ui/models/products_result_local_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class ProductsSearchBloc
    extends Bloc<ProductsSearchEvent, ProductsSearchState> {
  final UniversalSearchRepository _repository;
  final SearchAnalytics _searchAnalytics;
  final FilterUtils _filterUtils;

  ProductsSearchBloc({
    required UniversalSearchRepository findRepository,
    required SearchAnalytics searchAnalytics,
    required FilterUtils filterUtils,
  }) : _repository = findRepository,
       _searchAnalytics = searchAnalytics,
       _filterUtils = filterUtils,
       super(const ProductsSearchState.productsInitial()) {
    on<ProductsListInitialised>(_onInitialised);
    on<ProductCategoryTabChanged>(_onProductCategoryTabChanged);
    on<RemoveCompareProducts>(_compareProductDeselect);
    on<ProductSearchAll>(_onProductSearchAll);
    on<ProductSearchPagination>(_onProductSearchPagination);
    on<SearchTextAdded>(_onSearchTextAdded);
    on<ProductListSelectionStateChange>(_onProductListSelectionStateChange);
    on<ProductAddToListSelected>(_onProductAddToListSelected);
    on<ProductListClearAddToList>(_onProductListClearedAddToList);
    on<ProductListPreferencesRefreshed>(_onProductListPreferencesRefreshed);
  }

  // State variables
  SearchType? _selectedCategory;

  // Search results cache
  SearchResultsModel? _allSearchResult;

  List<SearchProductModel> _foodProducts = [];

  List<SearchProductModel> _cleanersProducts = [];

  int? _brandId;

  List<SearchProductModel> _personalProducts = [];
  final List<SearchProductModel> _selectedListProducts = [];
  bool _isProductSelectionEnabled = false;
  final List<int> _compareListProducts = [];
  Map<String, int>? _productTypeCounts;
  Map<ProductCategory, List<BrandAggregationModel>>
  _productCategoryAndBrandAggregationsMap =
      <ProductCategory, List<BrandAggregationModel>>{};
  SearchPaginationModel? _searchPaginationModel;
  SearchPaginationModel? _foodPaginationModel;
  SearchPaginationModel? _personalCarePaginationModel;
  SearchPaginationModel? _cleanersPaginationModel;
  String? _lastSearchQuery;
  final Map<SearchType, bool> _isPaginating = {
    SearchType.food: false,
    SearchType.cleaner: false,
    SearchType.personalCare: false,
  };
  Map<ProductCategory, ProductFiltersModel> _productCategoryAndFiltersMap =
      <ProductCategory, ProductFiltersModel>{};
  Map<ProductCategory, List<CategoryAggregationModel>>
  _productCategoryAndCategoryAggregationsMap =
      <ProductCategory, List<CategoryAggregationModel>>{};

  SearchType? get selectedProductCategory => _selectedCategory;

  SearchPaginationModel? get searchPaginationModel => _searchPaginationModel;

  SearchResultsModel? get allSearchResult => _allSearchResult;

  SearchPaginationModel? get foodPaginationModel => _foodPaginationModel;

  SearchPaginationModel? get personalCarePaginationModel =>
      _personalCarePaginationModel;

  SearchPaginationModel? get cleanersPaginationModel =>
      _cleanersPaginationModel;

  Map<String, int>? get productTypeCounts => _productTypeCounts;

  List<SearchProductModel> get foodProducts => _foodProducts;

  List<SearchProductModel> get cleanersProducts => _cleanersProducts;

  List<SearchProductModel> get personalProducts => _personalProducts;

  List<SearchProductModel> get selectedListProducts => _selectedListProducts;

  bool get isProductSelectionEnabled => _isProductSelectionEnabled;

  List<int> get compareListProducts => _compareListProducts;

  int? get brandId => _brandId;

  CompareProductItem? _defaultCompareProductItem;

  CompareProductItem? get defaultCompareProductItem =>
      _defaultCompareProductItem;

  Map<ProductCategory, ProductFiltersModel?> get productCategoryAndFiltersMap =>
      _productCategoryAndFiltersMap;

  Map<ProductCategory, List<CategoryAggregationModel>>
  get productCategoryAndCategoryAggregationsMap =>
      _productCategoryAndCategoryAggregationsMap;

  Map<ProductCategory, List<BrandAggregationModel>>
  get productCategoryAndBrandAggregationsMap =>
      _productCategoryAndBrandAggregationsMap;

  bool isPaginatingFor(SearchType cat) => _isPaginating[cat] ?? false;

  // Constants
  static const int _currentPage = 1;
  static const int _perPage = IntegerConstants.defaultProductsPerPage;

  // Getters
  void _setPaginating(SearchType cat, bool value) {
    _isPaginating[cat] = value;
  }

  void _onProductListPreferencesRefreshed(
    ProductListPreferencesRefreshed event,
    Emitter<ProductsSearchState> emit,
  ) {
    _isProductSelectionEnabled = false;
    add(
      ProductsSearchEvent.productSearchPagination(
        searchQuery: event.searchQuery,
        page: 1,
        category: selectedProductCategory!,
        filters: event.filters?.copyWith(
          ingredientPreferences: IngredientPreferencesFilterModel(
            isPreferred: event.preferCount > 0,
          ),
        ),
        isEWGVerified: event.filters?.hazardLevel == HazardLevel.verified,
        isProductSelectionEnabled: event.isProductSelectionEnabled,
        shouldJumpToTop: true,
      ),
    );
  }

  Future<void> _onProductListClearedAddToList(
    ProductListClearAddToList event,
    Emitter<ProductsSearchState> emit,
  ) async {
    if (_defaultCompareProductItem != null) {
      if (_selectedListProducts.isNotEmpty) {
        _selectedListProducts.removeLast();
      }
      if (_compareListProducts.isNotEmpty) {
        _compareListProducts.removeLast();
      }
    } else {
      _selectedListProducts.clear();
      _compareListProducts.clear();
    }
    _isProductSelectionEnabled = false;
    if (event.categoryType != null) {
      if (event.categoryType!.value.toLowerCase() ==
          SearchType.food.value.toLowerCase()) {
        _foodProducts =
            _foodProducts.asMap().entries.map((entry) {
              SearchProductModel item = entry.value;
              return item.copyWith(
                productSelectionType: ProductSelectionType.none,
                isSelectionDisabled: false,
              );
            }).toList();
      } else if (event.categoryType!.value.toLowerCase() ==
          SearchType.cleaner.value.toLowerCase()) {
        _cleanersProducts =
            _cleanersProducts.asMap().entries.map((entry) {
              SearchProductModel item = entry.value;
              return item.copyWith(
                productSelectionType: ProductSelectionType.none,
                isSelectionDisabled: false,
              );
            }).toList();
      } else if (event.categoryType!.value.toLowerCase() ==
          SearchType.personalCare.value.toLowerCase()) {
        _personalProducts =
            _personalProducts.asMap().entries.map((entry) {
              SearchProductModel item = entry.value;
              return item.copyWith(
                productSelectionType: ProductSelectionType.none,
                isSelectionDisabled: false,
              );
            }).toList();
      }
      emit(ProductsSearchState.productListClearedAddToList());
    }
  }

  Future<void> _onProductAddToListSelected(
    ProductAddToListSelected event,
    Emitter<ProductsSearchState> emit,
  ) async {
    try {
      if (event.categoryType != null) {
        if (event.categoryType!.value == SearchType.food.value) {
          if (event.productSelectionOptionsItem ==
                  ProductSelectionOptionsItem.compareProducts &&
              _foodProducts.isValidList) {
            addRemoveIndexCompareList(id: _foodProducts[event.index].id ?? -1);
          }
          _foodProducts =
              _foodProducts.asMap().entries.map((entry) {
                int index = entry.key;
                SearchProductModel item = entry.value;
                if (index == event.index) {
                  if (event.productSelectionType == ProductSelectionType.add) {
                    if (!_selectedListProducts.any((e) => e.id == item.id)) {
                      _selectedListProducts.add(item);
                    }
                  } else {
                    _selectedListProducts.removeWhere(
                      (element) => element.id == item.id,
                    );
                  }

                  // Update only the tapped item
                  return item.copyWith(
                    productSelectionType: event.productSelectionType,
                  );
                } else {
                  // Keep all other items as-is
                  return item.copyWith(
                    isSelectionDisabled:
                        item.productSelectionType != ProductSelectionType.add &&
                        _compareListProducts.length == 2 &&
                        event.productSelectionOptionsItem ==
                            ProductSelectionOptionsItem.compareProducts,
                  );
                }
              }).toList();
        } else if (event.categoryType!.value == SearchType.cleaner.value) {
          if (event.productSelectionOptionsItem ==
                  ProductSelectionOptionsItem.compareProducts &&
              _cleanersProducts.isValidList) {
            addRemoveIndexCompareList(
              id: _cleanersProducts[event.index].id ?? -1,
            );
          }
          _cleanersProducts =
              _cleanersProducts.asMap().entries.map((entry) {
                int index = entry.key;
                SearchProductModel item = entry.value;

                if (index == event.index) {
                  if (event.productSelectionType == ProductSelectionType.add) {
                    if (!_selectedListProducts.any((e) => e.id == item.id)) {
                      _selectedListProducts.add(item);
                    }
                  } else {
                    _selectedListProducts.removeWhere(
                      (element) => element.id == item.id,
                    );
                  }
                  return item.copyWith(
                    productSelectionType: event.productSelectionType,
                  );
                } else {
                  // Keep all other items as-is
                  return item.copyWith(
                    isSelectionDisabled:
                        item.productSelectionType != ProductSelectionType.add &&
                        _compareListProducts.length == 2 &&
                        event.productSelectionOptionsItem ==
                            ProductSelectionOptionsItem.compareProducts,
                  );
                }
              }).toList();
        } else if (event.categoryType!.value == SearchType.personalCare.value) {
          if (event.productSelectionOptionsItem ==
                  ProductSelectionOptionsItem.compareProducts &&
              _personalProducts.isValidList) {
            addRemoveIndexCompareList(
              id: _personalProducts[event.index].id ?? -1,
            );
          }
          _personalProducts =
              _personalProducts.asMap().entries.map((entry) {
                int index = entry.key;
                SearchProductModel item = entry.value;

                if (index == event.index) {
                  if (event.productSelectionType == ProductSelectionType.add) {
                    if (!_selectedListProducts.any((e) => e.id == item.id)) {
                      _selectedListProducts.add(item);
                    }
                  } else {
                    _selectedListProducts.removeWhere(
                      (element) => element.id == item.id,
                    );
                  }

                  // Update only the tapped item
                  return item.copyWith(
                    productSelectionType: event.productSelectionType,
                  );
                } else {
                  // Keep all other items as-is
                  return item.copyWith(
                    isSelectionDisabled:
                        item.productSelectionType != ProductSelectionType.add &&
                        _compareListProducts.length == 2 &&
                        event.productSelectionOptionsItem ==
                            ProductSelectionOptionsItem.compareProducts,
                  );
                }
              }).toList();
        }

        emit(
          ProductsSearchState.productSelectionUpdated(
            foodProducts: foodProducts,
            cleanersProducts: cleanersProducts,
            personalProducts: personalProducts,
          ),
        );
      }
    } catch (_) {
      _emitSearchFailure(emit);
    }
  }

  Future<void> _onProductListSelectionStateChange(
    ProductListSelectionStateChange event,
    Emitter<ProductsSearchState> emit,
  ) async {
    _isProductSelectionEnabled = event.isProductSelectionEnabled;
    try {
      if (event.categoryType != null) {
        if (event.categoryType!.value == SearchType.food.value) {
          _foodProducts =
              _foodProducts.asMap().entries.map((entry) {
                SearchProductModel item = entry.value;
                return item.copyWith(
                  productSelectionType:
                      _isProductSelectionEnabled
                          ? ProductSelectionType.remove
                          : ProductSelectionType.add,
                  isSelectionDisabled: false,
                );
              }).toList();
        } else if (event.categoryType!.value == SearchType.cleaner.value) {
          _cleanersProducts =
              _cleanersProducts.asMap().entries.map((entry) {
                SearchProductModel item = entry.value;
                return item.copyWith(
                  productSelectionType:
                      _isProductSelectionEnabled
                          ? ProductSelectionType.remove
                          : ProductSelectionType.add,
                  isSelectionDisabled: false,
                );
              }).toList();
        } else if (event.categoryType!.value == SearchType.personalCare.value) {
          _personalProducts =
              _personalProducts.asMap().entries.map((entry) {
                SearchProductModel item = entry.value;
                return item.copyWith(
                  productSelectionType:
                      _isProductSelectionEnabled
                          ? ProductSelectionType.remove
                          : ProductSelectionType.add,
                  isSelectionDisabled: false,
                );
              }).toList();
        }
        emit(ProductsSearchState.productListSelectionStateChanged());
      }
    } catch (_) {
      _emitSearchFailure(emit);
    }
  }

  Future<void> _performProductSearch(
    Emitter<ProductsSearchState> emit, {
    required String? searchQuery,
    required SearchType categoryType,
    bool isShowEmpty = false,
    int? page,
    ProductSelectionOptionsItem productSelectionOptionsItem =
        ProductSelectionOptionsItem.none,
    bool? isEWGVerifiedSearch,
    bool shouldJumpToTop = false,
  }) async {
    final request = _buildProductSearchRequest(
      searchQuery,
      page,
      categoryType,
      filters: getProductCategoryFilters(),
      isEWGVerified: isEWGVerifiedSearch,
    );

    /// Logs GA4 search event
    if (page == 1 && searchQuery.isValidValue) {
      await _searchAnalytics.logSearch(
        searchTerm: searchQuery!,
        source: StringConstants.productList,
      );
    }

    try {
      final response = await _repository.universalSearch(request: request);

      if (response.isSuccess && response.data != null) {
        _searchPaginationModel = response.data!.pagination;

        if (response.data?.results?.products.isEmpty == true && isShowEmpty) {
          if (_selectedCategory == categoryType) {
            emit(ProductsSearchState.searchResultsEmpty());
          }
        } else {
          _getProducts(
            response,
            emit,
            categoryType,
            productSelectionOptionsItem,
            shouldClearPrevList: page == 1,
            shouldJumpToTop: shouldJumpToTop,
          );
        }

        /// Logs GA4 search Results
        if (page == 1 && searchQuery.isValidValue) {
          final responseData = response.data!;
          await _searchAnalytics.logViewSearchResults(
            searchTerm: searchQuery!,
            resultCount: responseData.pagination?.totalEntries ?? 0,
            items: responseData.results?.products,
            source: StringConstants.productList,
          );
        }
      } else {
        _emitSearchFailure(emit);
      }
    } on NetworkConnectionException catch (e) {
      emit(InternetFailure(e));
    } on Exception catch (e) {
      emit(SearchLoadFailure(e));
    } finally {
      _setPaginating(categoryType, false);
    }
  }

  SearchRequestModel _buildProductSearchRequest(
    String? searchQuery,
    int? page,
    SearchType categoryType, {
    ProductFiltersModel? filters,
    bool? isEWGVerified,
  }) {
    return SearchRequestModel(
      search: searchQuery?.trim() ?? "",
      page: page != null ? page.toString() : _currentPage.toString(),
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
      ewgVerified: isEWGVerified == true ? isEWGVerified.toString() : null,
      brandId: _brandId != null && _brandId != -1 ? _brandId.toString() : null,
    );
  }

  void _processBootstrapResponse(
    data, {
    bool shouldSetCategoryWithMaxCount = true,
    SearchType? searchType,
  }) {
    _productTypeCounts = data.productTypeCounts;
    if (shouldSetCategoryWithMaxCount) {
      _selectedCategory =
          searchType ?? _getCategoryWithMaxCount(_productTypeCounts);
    }
  }

  SearchType? _getCategoryWithMaxCount(Map<String, int>? counts) {
    if (counts == null || counts.isEmpty) return null;

    final topEntry = counts.entries.reduce(
      (a, b) => a.value >= b.value ? a : b,
    );
    return SearchType.fromName(topEntry.key);
  }

  void _emitSearchFailure(Emitter<ProductsSearchState> emit) {
    emit(
      ProductsSearchState.searchLoadFailure(
        UnknownNetworkException(
          message: 'Search failed',
          statusCode: -1,
          originalError: '',
        ),
      ),
    );
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
    Emitter<ProductsSearchState> emit,
  ) async {
    try {
      emit(ProductsSearchState.removedCompareProducts());
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
          _foodProducts =
              _foodProducts.asMap().entries.map((entry) {
                int index = entry.key;
                SearchProductModel item = entry.value;

                if (index == listSelectIndex) {
                  if (event.productSelectionType == ProductSelectionType.add) {
                    if (!_selectedListProducts.any((e) => e.id == item.id)) {
                      _selectedListProducts.add(item);
                    }
                  } else {
                    _selectedListProducts.removeWhere(
                      (element) => element.id == item.id,
                    );
                  }

                  // Update only the tapped item
                  return item.copyWith(
                    productSelectionType: event.productSelectionType,
                  );
                } else {
                  // Keep all other items as-is
                  return item.copyWith(
                    isSelectionDisabled:
                        item.productSelectionType != ProductSelectionType.add &&
                        _compareListProducts.length == 2 &&
                        event.productSelectionOptionsItem ==
                            ProductSelectionOptionsItem.compareProducts,
                  );
                }
              }).toList();
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
          _cleanersProducts =
              _cleanersProducts.asMap().entries.map((entry) {
                int index = entry.key;
                SearchProductModel item = entry.value;

                if (index == listSelectIndex) {
                  if (event.productSelectionType == ProductSelectionType.add) {
                    if (!_selectedListProducts.any((e) => e.id == item.id)) {
                      _selectedListProducts.add(item);
                    }
                  } else {
                    _selectedListProducts.removeWhere(
                      (element) => element.id == item.id,
                    );
                  }
                  return item.copyWith(
                    productSelectionType: event.productSelectionType,
                  );
                } else {
                  // Keep all other items as-is
                  return item.copyWith(
                    isSelectionDisabled:
                        item.productSelectionType != ProductSelectionType.add &&
                        _compareListProducts.length == 2 &&
                        event.productSelectionOptionsItem ==
                            ProductSelectionOptionsItem.compareProducts,
                  );
                }
              }).toList();
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
          _personalProducts =
              _personalProducts.asMap().entries.map((entry) {
                int index = entry.key;
                SearchProductModel item = entry.value;

                if (index == listSelectIndex) {
                  if (event.productSelectionType == ProductSelectionType.add) {
                    if (!_selectedListProducts.any((e) => e.id == item.id)) {
                      _selectedListProducts.add(item);
                    }
                  } else {
                    _selectedListProducts.removeWhere(
                      (element) => element.id == item.id,
                    );
                  }

                  // Update only the tapped item
                  return item.copyWith(
                    productSelectionType: event.productSelectionType,
                  );
                } else {
                  // Keep all other items as-is
                  return item.copyWith(
                    isSelectionDisabled:
                        item.productSelectionType != ProductSelectionType.add &&
                        _compareListProducts.length == 2 &&
                        event.productSelectionOptionsItem ==
                            ProductSelectionOptionsItem.compareProducts,
                  );
                }
              }).toList();
        }
        emit(
          ProductsSearchState.productSelectionUpdated(
            foodProducts: foodProducts,
            cleanersProducts: cleanersProducts,
            personalProducts: personalProducts,
          ),
        );
      }
    } catch (_) {
      _emitSearchFailure(emit);
    }
  }

  Future<void> _onProductCategoryTabChanged(
    ProductCategoryTabChanged event,
    Emitter<ProductsSearchState> emit,
  ) async {
    if (_compareListProducts.isNotEmpty) {
      _compareListProducts.clear();
    }
    _selectedCategory = event.searchType;
    if (_selectedListProducts.isNotEmpty) {
      add(ProductsSearchEvent.productListClearAddToList());
    }
    if (_hasCachedDataForCategory(_selectedCategory!)) {
      emit(_buildSuccessState());
      return;
    }
    emit(ProductsSearchState.searchLoadInProgress());

    try {
      await _performProductSearch(
        emit,
        searchQuery: event.searchQuery,
        categoryType: event.searchType,
        productSelectionOptionsItem: event.productSelectionOptionsItem,
        isEWGVerifiedSearch: event.isEWGVerifiedSearch,
      );
    } on NetworkConnectionException catch (e) {
      emit(InternetFailure(e));
    } on Exception catch (e) {
      emit(SearchLoadFailure(e));
    }
  }

  bool _hasCachedDataForCategory(SearchType category) {
    switch (category) {
      case SearchType.food:
        return _foodProducts.isNotEmpty;
      case SearchType.cleaner:
        return _cleanersProducts.isNotEmpty;
      case SearchType.personalCare:
        return _personalProducts.isNotEmpty;
      default:
        return false;
    }
  }

  ProductsSearchState _buildSuccessState({bool shouldJumpToTop = false}) {
    return ProductsSearchState.searchLoadSuccess(
      results: ProductsResultLocalModel(
        foodSearchResultsList: foodProducts,
        foodSearchPaginationModel: _foodPaginationModel,
        cleanersSearchResultsList: cleanersProducts,
        cleanersSearchPaginationModel: _cleanersPaginationModel,
        personalCareSearchResultsList: personalProducts,
        personalCareSearchPaginationModel: _personalCarePaginationModel,
        selectedCategoryType: _selectedCategory,
        productTypeCount: _productTypeCounts,
        appliedFilters: _productCategoryAndFiltersMap,
        categoryAggregationsProductCategoryMap:
            _productCategoryAndCategoryAggregationsMap,
        brandAggregationsProductCategoryMap:
            _productCategoryAndBrandAggregationsMap,
      ),
      shouldJumpToTop: shouldJumpToTop,
    );
  }

  Future<void> _onProductSearchAll(
    ProductSearchAll event,
    Emitter<ProductsSearchState> emit,
  ) async {
    _selectedCategory = event.searchType ?? _selectedCategory;
    final searchQuery = event.searchQuery?.trim();
    if (searchQuery.isValidValue &&
            searchQuery != _lastSearchQuery &&
            event.filters != null
        ? event.filters != getProductCategoryFilters()
        : true) {
      _lastSearchQuery = searchQuery;

      if (event.filters != null) {
        final productCategory = _filterUtils.getProductCategoryFromSearchType(
          selectedProductCategory,
        );
        if (_productCategoryAndFiltersMap.containsKey(productCategory)) {
          _productCategoryAndFiltersMap = _productCategoryAndFiltersMap.map((
            key,
            value,
          ) {
            if (key == productCategory) {
              return MapEntry(key, event.filters!);
            }
            return MapEntry(key, value);
          });
        } else {
          _productCategoryAndFiltersMap = {
            ..._productCategoryAndFiltersMap,
            productCategory: event.filters!,
          };
        }
      }

      SearchRequestModel requestModel = SearchRequestModel(
        search: searchQuery!,
        perPage: _perPage.toString(),
        page: _currentPage.toString(),
        searchType:
            event.searchType?.value ??
            (_brandId != null && _brandId != -1
                ? null
                : SearchType.products.value),
        sortBy: event.filters?.sortOption.sortBy.queryParamValue,
        sortOrder: event.filters?.sortOption.sortOrder.name,
        hazardScoreRanges: _filterUtils.generateHazardLevelFilterArrayQuery(
          hazardLevel: event.filters?.hazardLevel,
        ),
        ewgVerified: event.isEWGVerified?.toString(),
        brandId:
            _brandId != null && _brandId != -1 ? _brandId.toString() : null,
      );

      /// Logs GA4 search event
      if (_currentPage == 1 && searchQuery.isValidValue) {
        await _searchAnalytics.logSearch(
          searchTerm: searchQuery,
          source: StringConstants.productListCategory,
        );
      }

      try {
        emit(ProductsSearchState.searchLoadInProgress());
        final response = await _repository.universalSearch(
          request: requestModel,
        );

        if (response.isSuccess && response.data != null) {
          if (response.data?.results?.products.isEmpty == true) {
            emit(ProductsSearchState.searchResultsEmpty());
          } else {
            _processBootstrapResponse(
              response.data,
              shouldSetCategoryWithMaxCount:
                  event.shouldSetCategoryWithMaxCount,
              searchType: event.searchType,
            );
            _getProducts(
              response,
              emit,
              _selectedCategory!,
              event.productSelectionOptionsItem,
              shouldClearPrevList: true,
            );
          }

          /// Logs GA4 search Results
          if (_currentPage == 1 && searchQuery.isValidValue) {
            final responseData = response.data!;
            await _searchAnalytics.logViewSearchResults(
              searchTerm: searchQuery,
              resultCount: responseData.pagination?.totalEntries ?? 0,
              items: responseData.results?.products,
              source: StringConstants.productListCategory,
            );
          }
        } else {
          _emitSearchFailure(emit);
        }
      } on NetworkConnectionException catch (e) {
        emit(ProductsSearchState.internetFailure(e));
      } on Exception catch (e) {
        emit(ProductsSearchState.searchLoadFailure(e));
      }
    }

    return;
  }

  Future<void> _onProductSearchPagination(
    ProductSearchPagination event,
    Emitter<ProductsSearchState> emit,
  ) async {
    if (event.filters != null) {
      final productCategory = _filterUtils.getProductCategoryFromSearchType(
        selectedProductCategory,
      );

      if (_productCategoryAndFiltersMap.containsKey(productCategory)) {
        _productCategoryAndFiltersMap = _productCategoryAndFiltersMap.map((
          key,
          value,
        ) {
          if (key == productCategory) {
            return MapEntry(key, event.filters!);
          }
          return MapEntry(key, value);
        });
      } else {
        _productCategoryAndFiltersMap = {
          ..._productCategoryAndFiltersMap,
          productCategory: event.filters!,
        };
      }
    }

    if (event.page == 1) {
      emit(ProductsSearchState.searchLoadInProgress());
    } else {
      if (isPaginatingFor(event.category)) return;
      _setPaginating(event.category, true);
      emit(ProductsSearchState.paginationInProgress(category: event.category));
    }
    try {
      await _performProductSearch(
        emit,
        searchQuery: event.searchQuery,
        page: event.page,
        categoryType: event.category,
        productSelectionOptionsItem: event.productSelectionOptionsItem,
        isEWGVerifiedSearch: event.isEWGVerified,
        shouldJumpToTop: event.shouldJumpToTop,
      );
    } on NetworkConnectionException catch (e) {
      emit(InternetFailure(e));
    } on Exception catch (e) {
      emit(SearchLoadFailure(e));
    }
  }

  Future<void> _onSearchTextAdded(
    SearchTextAdded event,
    Emitter<ProductsSearchState> emit,
  ) async {
    try {
      _clearProductData();
      add(
        ProductSearchAll(
          searchQuery: event.searchQuery,
          isAuthenticatedUser: event.isAuthenticatedUser,
        ),
      );
    } catch (_) {
      _emitSearchFailure(emit);
    }
  }

  void _clearProductData() {
    _foodPaginationModel = null;
    _cleanersPaginationModel = null;
    _personalCarePaginationModel = null;
    _personalProducts.clear();
    _foodProducts.clear();
    _cleanersProducts.clear();
    _compareListProducts.clear();
    _selectedListProducts.clear();
  }

  void _getProducts(
    NetworkResponse<SearchResponseModel?> response,
    Emitter<ProductsSearchState> emit,
    SearchType categoryType,
    ProductSelectionOptionsItem productSelectionOptionsItem, {
    bool shouldClearPrevList = false,
    bool shouldJumpToTop = false,
  }) {
    final productCategory = _filterUtils.getProductCategoryFromSearchType(
      categoryType,
    );
    final categoryAggregations = response.data?.results?.categoryAggs;
    final brandAggregations =
        response.data?.results?.brandAggs ?? <BrandAggregationModel>[];

    if (_productCategoryAndCategoryAggregationsMap[productCategory] == null &&
        categoryAggregations != null) {
      setCategoryAndBrandAggregationsMap(
        productCategory: productCategory,
        categoryAggregationsResponse: categoryAggregations,
        brandAggregationsResponse: brandAggregations,
      );
    }

    if (categoryType.value == SearchType.food.value) {
      final foodProductCount =
          response.data?.productTypeCounts?[StringConstants.food];
      if (foodProductCount != null) {
        _productTypeCounts = {
          ...?_productTypeCounts,
          StringConstants.food: foodProductCount,
        };
      }
      if (shouldClearPrevList) {
        _foodProducts = [];
      }
      _foodProducts = [
        ..._foodProducts,
        ...(response.data!.results?.products ?? []),
      ];
      _foodPaginationModel = response.data?.pagination;
      _foodProducts =
          _foodProducts.asMap().entries.map((entry) {
            SearchProductModel item = entry.value;
            if (_isProductSelectionEnabled) {
              return item.copyWith(
                productSelectionType:
                    item.productSelectionType != ProductSelectionType.none
                        ? item.productSelectionType
                        : ProductSelectionType.remove,
                isSelectionDisabled:
                    item.productSelectionType != ProductSelectionType.add &&
                    _compareListProducts.length == 2 &&
                    productSelectionOptionsItem ==
                        ProductSelectionOptionsItem.compareProducts,
              );
            } else {
              return item.copyWith(
                productSelectionType: ProductSelectionType.none,
              );
            }
          }).toList();
    } else if (categoryType.value == SearchType.cleaner.value) {
      final cleanerProductCount =
          response.data?.productTypeCounts?[StringConstants.cleaners];
      if (cleanerProductCount != null) {
        _productTypeCounts = {
          ...?_productTypeCounts,
          StringConstants.cleaners: cleanerProductCount,
        };
      }
      if (shouldClearPrevList) {
        _cleanersProducts = [];
      }
      _cleanersProducts = [
        ..._cleanersProducts,
        ...(response.data!.results?.products ?? []),
      ];
      _cleanersPaginationModel = response.data?.pagination;
      _cleanersProducts =
          _cleanersProducts.asMap().entries.map((entry) {
            SearchProductModel item = entry.value;
            if (_isProductSelectionEnabled) {
              return item.copyWith(
                productSelectionType:
                    item.productSelectionType != ProductSelectionType.none
                        ? item.productSelectionType
                        : ProductSelectionType.remove,
                isSelectionDisabled:
                    item.productSelectionType != ProductSelectionType.add &&
                    _compareListProducts.length == 2 &&
                    productSelectionOptionsItem ==
                        ProductSelectionOptionsItem.compareProducts,
              );
            } else {
              return item.copyWith(
                productSelectionType: ProductSelectionType.none,
              );
            }
          }).toList();
    } else if (categoryType.value == SearchType.personalCare.value) {
      final personalCareProductCount =
          response.data?.productTypeCounts?[StringConstants.personalCare];
      if (personalCareProductCount != null) {
        _productTypeCounts = {
          ...?_productTypeCounts,
          StringConstants.personalCare: personalCareProductCount,
        };
      }
      if (shouldClearPrevList) {
        _personalProducts = [];
      }
      _personalProducts = [
        ..._personalProducts,
        ...(response.data!.results?.products ?? []),
      ];
      _personalCarePaginationModel = response.data?.pagination;
      _personalProducts =
          _personalProducts.asMap().entries.map((entry) {
            SearchProductModel item = entry.value;
            if (_isProductSelectionEnabled) {
              return item.copyWith(
                productSelectionType:
                    item.productSelectionType != ProductSelectionType.none
                        ? item.productSelectionType
                        : ProductSelectionType.remove,
                isSelectionDisabled:
                    item.productSelectionType != ProductSelectionType.add &&
                    _compareListProducts.length == 2 &&
                    productSelectionOptionsItem ==
                        ProductSelectionOptionsItem.compareProducts,
              );
            } else {
              return item.copyWith(
                productSelectionType: ProductSelectionType.none,
              );
            }
          }).toList();
    }
    if (_selectedCategory == categoryType) {
      emit(_buildSuccessState(shouldJumpToTop: shouldJumpToTop));
    }
  }

  void _onInitialised(
    ProductsListInitialised event,
    Emitter<ProductsSearchState> emit,
  ) {
    _brandId = event.brandId;
    final bool isFromViewAll =
        event.productsEntrySource == ProductsEntrySource.fromAllTabViewAll;
    if (event.defaultCompareProductItem != null) {
      _defaultCompareProductItem = event.defaultCompareProductItem;
      CompareProductItem? compareProductItem = event.defaultCompareProductItem;
      _selectedListProducts.add(
        SearchProductModel(
          skinDeepId: compareProductItem?.skinDeepId,
          mobileImageUrl: "",
          imageUrl: compareProductItem?.imageUrl ?? "",
          id: compareProductItem?.id ?? -1,
          name: compareProductItem?.title ?? "",
          brandName: compareProductItem?.brand ?? "",
          categoryName: compareProductItem?.categoryType?.name ?? "",
          cleanersScore:
              compareProductItem?.categoryType == SearchType.cleaner
                  ? compareProductItem?.score ?? ""
                  : null,
          foodScore:
              compareProductItem?.categoryType == SearchType.food
                  ? double.tryParse(compareProductItem?.score ?? "") ?? 0.0
                  : null,
          personalCareScore:
              compareProductItem?.categoryType == SearchType.personalCare
                  ? int.tryParse(compareProductItem?.score ?? "") ?? -1
                  : null,
          ewgVerified: compareProductItem?.isEwgVerified ?? false,
        ),
      );
      _compareListProducts.add(compareProductItem?.id ?? -1);
      emit(
        ProductsSearchState.productSelectionUpdated(
          foodProducts: foodProducts,
          cleanersProducts: cleanersProducts,
          personalProducts: personalProducts,
        ),
      );
    }
    if (event.initialCategoryList != null) {
      _productTypeCounts = event.initialCategoryList?.productTypeCount;
      _selectedCategory =
          event.searchType ?? event.initialCategoryList?.selectedCategoryType;
      _foodProducts = event.initialCategoryList?.foodSearchResultsList ?? [];
      _foodPaginationModel =
          event.initialCategoryList?.foodSearchPaginationModel;
      _cleanersProducts =
          event.initialCategoryList?.cleanersSearchResultsList ?? [];
      _cleanersPaginationModel =
          event.initialCategoryList?.cleanersSearchPaginationModel;
      _personalProducts =
          event.initialCategoryList?.personalCareSearchResultsList ?? [];
      _personalCarePaginationModel =
          event.initialCategoryList?.personalCareSearchPaginationModel;
      if (isFromViewAll && !event.isReturningFromDetail) {
        final picked = _getCategoryWithMaxCount(_productTypeCounts);
        _selectedCategory = picked ?? _selectedCategory ?? SearchType.food;
      } else {
        // honor previously selected category from the saved model
        _selectedCategory =
            event.searchType ??
            event.initialCategoryList?.selectedCategoryType ??
            _selectedCategory ??
            SearchType.food;
      }
      final filters = event.initialCategoryList?.appliedFilters;
      if (filters != null) {
        _productCategoryAndFiltersMap = filters;
      }
      final categoryAggregationsProductCategoryMap =
          event.initialCategoryList?.categoryAggregationsProductCategoryMap;
      if (categoryAggregationsProductCategoryMap != null) {
        _productCategoryAndCategoryAggregationsMap =
            categoryAggregationsProductCategoryMap;
      }
      final brandAggregationsProductCategoryMap =
          event.initialCategoryList?.brandAggregationsProductCategoryMap;
      if (brandAggregationsProductCategoryMap != null) {
        _productCategoryAndBrandAggregationsMap =
            brandAggregationsProductCategoryMap;
      }

      emit(_buildSuccessState());
    } else {
      add(
        ProductSearchAll(
          searchQuery: event.searchQuery,
          isProductSelectionEnabled: event.isProductSelectionEnabled,
          isAuthenticatedUser: event.isAuthenticatedUser,
          searchType: event.searchType,
          isEWGVerified: event.isEWGVerified,
        ),
      );
    }
  }

  void setCategoryAndBrandAggregationsMap({
    required ProductCategory productCategory,
    required CategoryAggregationsModel? categoryAggregationsResponse,
    required List<BrandAggregationModel> brandAggregationsResponse,
  }) {
    List<CategoryAggregationModel> categoryAggregations = [];

    if (productCategory == ProductCategory.personalCare) {
      categoryAggregations = categoryAggregationsResponse?.personalCare ?? [];
    } else if (productCategory == ProductCategory.food) {
      categoryAggregations = categoryAggregationsResponse?.food ?? [];
    } else if (productCategory == ProductCategory.cleaner) {
      categoryAggregations = categoryAggregationsResponse?.cleaners ?? [];
    }

    if (_productCategoryAndCategoryAggregationsMap.containsKey(
      productCategory,
    )) {
      _productCategoryAndCategoryAggregationsMap =
          _productCategoryAndCategoryAggregationsMap.map((key, value) {
            if (key == productCategory) {
              return MapEntry(key, categoryAggregations);
            }
            return MapEntry(key, [...value]);
          });
    } else {
      _productCategoryAndCategoryAggregationsMap = {
        ..._productCategoryAndCategoryAggregationsMap,
        productCategory:
            categoryAggregations.map((categoryAggregation) {
              return CategoryAggregationModel(
                id: categoryAggregation.id,
                name: categoryAggregation.name,
                count: categoryAggregation.count,
                categories:
                    categoryAggregation.categories.map((category) {
                      return CategoryModel(
                        id: category.id,
                        name: category.name,
                        count: category.count,
                        subCategories:
                            category.subCategories?.map((subCategory) {
                              return SubCategoryModel(
                                id: subCategory.id,
                                name: subCategory.name,
                                count: subCategory.count,
                              );
                            }).toList(),
                      );
                    }).toList(),
              );
            }).toList(),
      };
    }
    if (_productCategoryAndBrandAggregationsMap.containsKey(productCategory)) {
      _productCategoryAndBrandAggregationsMap =
          _productCategoryAndBrandAggregationsMap.map((key, value) {
            if (key == ProductCategory.personalCare) {
              return MapEntry(key, [...brandAggregationsResponse]);
            }
            return MapEntry(key, [...value]);
          });
    } else {
      _productCategoryAndBrandAggregationsMap = {
        ..._productCategoryAndBrandAggregationsMap,
        productCategory: [...brandAggregationsResponse],
      };
    }
  }

  ProductFiltersModel? getProductCategoryFilters() {
    ProductFiltersModel? filters;

    if (selectedProductCategory == SearchType.personalCare) {
      filters = _productCategoryAndFiltersMap[ProductCategory.personalCare];
    } else if (selectedProductCategory == SearchType.food) {
      filters = _productCategoryAndFiltersMap[ProductCategory.food];
    } else if (selectedProductCategory == SearchType.cleaner) {
      filters = _productCategoryAndFiltersMap[ProductCategory.cleaner];
    }
    return filters;
  }

  List<CategoryAggregationModel> getCategoryAggregationsForProductCategory() {
    final productCategory = _filterUtils.getProductCategoryFromSearchType(
      _selectedCategory,
    );
    return _productCategoryAndCategoryAggregationsMap[productCategory] ?? [];
  }

  List<BrandAggregationModel> getBrandAggregationsForProductCategory() {
    final productCategory = _filterUtils.getProductCategoryFromSearchType(
      _selectedCategory,
    );
    return _productCategoryAndBrandAggregationsMap[productCategory] ?? [];
  }

  bool get isFilterApplied {
    final filters = getProductCategoryFilters();
    if (filters == null) {
      return false;
    }
    return _filterUtils.isFilterApplied(filters: filters);
  }

  bool hasResultsForSelectedProductCategory() {
    final selectedTap = selectedProductCategory;

    switch (selectedTap) {
      case SearchType.food:
        return (foodPaginationModel?.products?.totalEntries ?? 0) > 0;
      case SearchType.cleaner:
        return (cleanersPaginationModel?.products?.totalEntries ?? 0) > 0;
      case SearchType.personalCare:
        return (personalCarePaginationModel?.products?.totalEntries ?? 0) > 0;
      default:
        return false;
    }
  }

  bool get getIsFilterEnabled {
    if (isFilterApplied) return true;
    return hasResultsForSelectedProductCategory();
  }
}
