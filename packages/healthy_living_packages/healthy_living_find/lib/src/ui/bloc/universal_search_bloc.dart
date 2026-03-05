import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_state.dart';
import 'package:healthy_living_find/src/ui/models/product_entry_source.dart';
import 'package:healthy_living_find/src/ui/models/products_result_local_model.dart';
import 'package:healthy_living_find/src/ui/models/search_my_lists_cached_data_model.dart';
import 'package:healthy_living_find/src/ui/models/search_tabs.dart';
import 'package:healthy_living_find/src/utils/find_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UniversalSearchBloc
    extends Bloc<UniversalSearchEvent, UniversalSearchState> {
  // State variables
  String _searchQuery = '';
  SearchTabData _selectedTabData = const SearchTabData(
    index: -1,
    name: '',
    type: SearchTabType.all,
  );
  List<SearchTabData> _allTabs = [];
  SearchType? _selectedCategory;

  Map<String, int>? _productTypeCounts;
  ProductSelectionOptionsItem _productOptionsItem =
      ProductSelectionOptionsItem.none;

  SearchResponseModel? _allTabResults;
  List<SearchBrandModel> _brandList = [];
  SearchPaginationItemModel? _brandsPaginationData;
  List<SearchCategoryItemModel> _categoryList = [];
  SearchPaginationItemModel? _categoriesPaginationData;
  List<SearchIngredientModel> _ingredientList = [];
  SearchPaginationItemModel? _ingredientsPaginationData;
  ProductsResultLocalModel? _productsResultLocalModel;
  ProductsEntrySource? _productsEntrySource;
  SearchMyListsCachedDataModel? _myListsCachedData;
  bool _pendingProductsFromViewAll = false;
  bool _defaultActivateListSelection = false;
  final Set<int> _disabledTabsIndexes = {};
  bool _shouldDisplayTabBar = true;
  String _textInputHintText = '';
  String? _listNameAddToList;
  SearchType? _selectedProductTypeSearch;
  bool? _isEWGVerified;
  CompareProductItem? _defaultCompareProductItem;
  final FilterUtils _filterUtils;
  int? _brandId;

  UniversalSearchBloc({required FilterUtils filterUtils})
    : _filterUtils = filterUtils,
      super(const UniversalSearchState.searchInitial()) {
    _registerEventHandlers();
  }

  // Getters
  String get searchQuery => _searchQuery;
  CompareProductItem? get defaultCompareProductItem =>
      _defaultCompareProductItem;

  ProductSelectionOptionsItem get productOptionsItem => _productOptionsItem;

  SearchTabData get selectedTabData => _selectedTabData;

  List<SearchTabData> get allTabs => _allTabs;

  SearchType? get selectedProductCategory => _selectedCategory;

  Map<String, int>? get productTypeCounts => _productTypeCounts;

  List<SearchBrandModel> get brandList => _brandList;

  SearchPaginationItemModel? get brandsPaginationData => _brandsPaginationData;

  List<SearchCategoryItemModel> get categoryList => _categoryList;

  SearchPaginationItemModel? get categoriesPaginationData =>
      _categoriesPaginationData;

  List<SearchIngredientModel> get ingredientList => _ingredientList;

  SearchPaginationItemModel? get ingredientsPaginationData =>
      _ingredientsPaginationData;

  SearchResponseModel? get allTabResults => _allTabResults;

  ProductsResultLocalModel? get productsResultLocalModel =>
      _productsResultLocalModel;

  ProductsEntrySource? get productsEntrySource => _productsEntrySource;

  Set<int> get disabledTabs => _disabledTabsIndexes;

  SearchMyListsCachedDataModel? get myListsCachedData => _myListsCachedData;

  bool get shouldDisplayTabBar => _shouldDisplayTabBar;

  bool get defaultActivateListSelection => _defaultActivateListSelection;

  String get textInputHintText => _textInputHintText;

  String? get listNameAddToList => _listNameAddToList;
  SearchType? get selectedProductTypeSearch => _selectedProductTypeSearch;
  bool? get isEWGVerified => _isEWGVerified;
  int? get brandId => _brandId;

  void _registerEventHandlers() {
    on<SearchScreenInitialised>(_onSearchScreenInitialised);
    on<TabPressed>(_onTabPressed);
    on<SearchQueryUpdated>(_onSearchQueryUpdated);
    on<SaveBrandListData>(_onSaveBrandListData);
    on<SaveAllTabData>(_onSaveAllTabData);
    on<SaveProductsResult>(_onSaveProductsResult);
    on<SaveCategoryListData>(_onSaveCategoryListData);
    on<SaveIngredientListData>(_onSaveIngredientListData);
    on<SaveMyListsData>(_onSaveMyListsData);
    on<SetProductsEntrySource>(_onSetProductsEntrySource);
    on<ProductOptionUpdate>(_onProductOptionUpdate);
    on<ProductTabChange>(_onProductTabChanged);
    on<DisableTabOnProductSelectionActivate>(
      _disableTabOnProductSelectionActivate,
    );
    on<CompareUpgradeNowTapped>(_onCompareUpgradeNowTapped);
  }

  Future<void> _disableTabOnProductSelectionActivate(
    DisableTabOnProductSelectionActivate event,
    Emitter<UniversalSearchState> emit,
  ) async {
    if (_selectedTabData.type == SearchTabType.products) {
      for (final entry in FindUtils.searchTabTypeToIndex.entries) {
        final tabType = entry.key;
        final tabIndex = entry.value;

        if (tabType == SearchTabType.products) continue;

        _updateTabState(
          tabIndex: tabIndex,
          isTabEmpty:
              event.productOptionsItem != ProductSelectionOptionsItem.none,
        );
      }

      emit(
        UniversalSearchState.tabBarTabsUpdated(
          disabledTabs: _disabledTabsIndexes,
        ),
      );
    }
  }

  void _onCompareUpgradeNowTapped(
    CompareUpgradeNowTapped event,
    Emitter<UniversalSearchState> emit,
  ) {
    emit(
      UniversalSearchState.compareUpgradeNowTapSuccess(
        timestamp: DateTime.now().toString(),
      ),
    );
  }

  Future<void> _onProductTabChanged(
    ProductTabChange event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _selectedCategory = event.searchType;
    _productsResultLocalModel = event.productsResultLocalModel?.copyWith(
      appliedFilters: _productsResultLocalModel?.appliedFilters,
    );
    emit(UniversalSearchState.productTabChanged(searchType: event.searchType));
  }

  Future<void> _onProductOptionUpdate(
    ProductOptionUpdate event,
    Emitter<UniversalSearchState> emit,
  ) async {
    if (!_defaultActivateListSelection) {
      _productOptionsItem = event.productOptionsItem;
      emit(
        UniversalSearchState.productOptionUpdated(
          productOptionsItem: event.productOptionsItem,
        ),
      );
    }
  }

  // Event Handlers
  Future<void> _onSaveAllTabData(
    SaveAllTabData event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _allTabResults = event.allTabData;

    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.brands]!,
      isTabEmpty: _allTabResults?.results?.brands.isValidList == false,
    );
    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.categories]!,
      isTabEmpty: _allTabResults?.results?.categories.isValidList == false,
    );
    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.products]!,
      isTabEmpty: _allTabResults?.results?.products.isValidList == false,
    );
    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.ingredients]!,
      isTabEmpty: _allTabResults?.results?.ingredients.isValidList == false,
    );
    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.lists]!,
      isTabEmpty: _allTabResults?.results?.lists.isValidList == false,
    );

    emit(
      UniversalSearchState.tabBarTabsUpdated(
        disabledTabs: _disabledTabsIndexes,
      ),
    );
  }

  Future<void> _onSaveBrandListData(
    SaveBrandListData event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _brandList = event.brandList;
    _brandsPaginationData = event.pagination;

    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.brands]!,
      isTabEmpty: _brandList.isValidList == false,
    );

    emit(
      UniversalSearchState.tabBarTabsUpdated(
        disabledTabs: _disabledTabsIndexes,
      ),
    );
  }

  Future<void> _onSaveCategoryListData(
    SaveCategoryListData event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _categoryList = event.categoryList;
    _categoriesPaginationData = event.pagination;

    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.categories]!,
      isTabEmpty: _categoryList.isValidList == false,
    );

    emit(
      UniversalSearchState.tabBarTabsUpdated(
        disabledTabs: _disabledTabsIndexes,
      ),
    );
  }

  Future<void> _onSaveIngredientListData(
    SaveIngredientListData event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _ingredientList = event.ingredientList;
    _ingredientsPaginationData = event.pagination;

    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.ingredients]!,
      isTabEmpty: _ingredientList.isValidList == false,
    );

    emit(
      UniversalSearchState.tabBarTabsUpdated(
        disabledTabs: _disabledTabsIndexes,
      ),
    );
  }

  Future<void> _onSaveMyListsData(
    SaveMyListsData event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _myListsCachedData = event.data;

    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.lists]!,
      isTabEmpty: event.data.myLists.isValidList == false,
    );

    emit(
      UniversalSearchState.tabBarTabsUpdated(
        disabledTabs: _disabledTabsIndexes,
      ),
    );
  }

  Future<void> _onSearchScreenInitialised(
    SearchScreenInitialised event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _selectedTabData = event.initialSelectedTab;
    _shouldDisplayTabBar = event.shouldDisplayTabBar;
    _defaultActivateListSelection = event.activateListSelection;
    _productOptionsItem = event.productSelectionOptionsItem;
    _defaultCompareProductItem = event.compareProductItem;
    _allTabs = event.tabs;
    _textInputHintText = event.textInputHintText;
    _listNameAddToList = event.listNameAddToList;
    _selectedProductTypeSearch = event.searchType;
    _isEWGVerified = event.isEWGVerified;
    _brandId = event.brandId;
    _productsResultLocalModel = ProductsResultLocalModel(
      foodSearchResultsList: [],
      foodSearchPaginationModel: null,
      cleanersSearchResultsList: [],
      cleanersSearchPaginationModel: null,
      personalCareSearchResultsList: [],
      personalCareSearchPaginationModel: null,
      selectedCategoryType: null,
      productTypeCount: null,
      appliedFilters: _filterUtils.getDefaultFiltersMap(),
    );
    if (event.initialSearchQuery.isValidValue) {
      add(
        UniversalSearchEvent.searchQueryUpdated(
          searchQuery: event.initialSearchQuery!,
        ),
      );
    }

    emit(const UniversalSearchState.searchScreenInitial());
  }

  Future<void> _onSaveProductsResult(
    SaveProductsResult event,
    Emitter<UniversalSearchState> emit,
  ) async {
    if (event.productsResult?.appliedFilters == null ||
        event.productsResult?.appliedFilters?.isEmpty == true) {
      _productsResultLocalModel = event.productsResult?.copyWith(
        appliedFilters: _productsResultLocalModel?.appliedFilters,
      );
    } else {
      _productsResultLocalModel = event.productsResult;
    }

    bool isFilterAppliedInAnyProductCategory = false;
    final filtersList =
        _productsResultLocalModel?.appliedFilters?.values.toList() ?? [];
    for (int i = 0; i < filtersList.length; i++) {
      final isFilterApplied = _filterUtils.isFilterApplied(
        filters: filtersList[i],
      );
      if (isFilterApplied) {
        isFilterAppliedInAnyProductCategory = true;
        break;
      }
    }

    final isTabDataEmpty =
        _productsResultLocalModel?.productTypeCount?.values.every(
          (count) => count == 0,
        ) ??
        false;

    _updateTabState(
      tabIndex: FindUtils.searchTabTypeToIndex[SearchTabType.products]!,
      isTabEmpty:
          _productsResultLocalModel == null ||
          (isTabDataEmpty && !isFilterAppliedInAnyProductCategory),
    );

    emit(
      UniversalSearchState.tabBarTabsUpdated(
        disabledTabs: _disabledTabsIndexes,
      ),
    );
  }

  Future<void> _onTabPressed(
    TabPressed event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _selectedTabData = event.tab;
    if (event.tab.type == SearchTabType.products) {
      if (_pendingProductsFromViewAll) {
        _productsEntrySource = ProductsEntrySource.fromAllTabViewAll;
        _pendingProductsFromViewAll = false;
      } else {
        _productsEntrySource = ProductsEntrySource.normal;
      }
    } else {
      _productsEntrySource = ProductsEntrySource.normal;
    }

    if (!_defaultActivateListSelection) {
      _productOptionsItem = ProductSelectionOptionsItem.none;
    }

    emit(UniversalSearchState.tabChanged(selectedTabData: event.tab));
  }

  Future<void> _onSearchQueryUpdated(
    SearchQueryUpdated event,
    Emitter<UniversalSearchState> emit,
  ) async {
    if (_searchQuery.toLowerCase() != event.searchQuery.toLowerCase()) {
      if (productOptionsItem != ProductSelectionOptionsItem.none &&
          _selectedTabData.type == SearchTabType.products) {
        add(
          UniversalSearchEvent.productOptionUpdate(
            productOptionsItem:
                _defaultActivateListSelection
                    ? _productOptionsItem
                    : ProductSelectionOptionsItem.none,
          ),
        );
      }

      if (_selectedTabData.type != SearchTabType.all) {
        FindUtils.searchTabTypeToIndex.forEach((tab, index) {
          if (tab != SearchTabType.all) {
            _updateTabState(tabIndex: index, isTabEmpty: false);
          }
        });
      }

      _searchQuery = event.searchQuery;
      _resetCachedData();
      _productsEntrySource = ProductsEntrySource.normal;
      if (_searchQuery.isEmpty) {
        emit(const UniversalSearchState.searchTextEmpty());
        return;
      }
      emit(
        UniversalSearchState.searchTextUpdated(searchQuery: event.searchQuery),
      );
    }
  }

  void _resetCachedData() {
    _clearAllTabCachedData();
    _clearBrandsCachedData();
    _clearCategoriesCachedData();
    _clearIngredientsCachedData();
    _clearProductsCachedData();
    _clearMyListsCachedData();
  }

  void _clearBrandsCachedData() {
    _brandList = [];
    _brandsPaginationData = null;
  }

  void _clearCategoriesCachedData() {
    _categoryList = [];
    _categoriesPaginationData = null;
  }

  void _clearIngredientsCachedData() {
    _ingredientList = [];
    _ingredientsPaginationData = null;
  }

  void _clearAllTabCachedData() {
    _allTabResults = null;
  }

  void _clearProductsCachedData() {
    _productsResultLocalModel = null;
  }

  void _clearMyListsCachedData() {
    _myListsCachedData = null;
  }

  Future<void> _onSetProductsEntrySource(
    SetProductsEntrySource event,
    Emitter<UniversalSearchState> emit,
  ) async {
    _productsEntrySource = event.source;
    _pendingProductsFromViewAll =
        event.source == ProductsEntrySource.fromAllTabViewAll;
  }

  void _updateTabState({required int tabIndex, required bool isTabEmpty}) {
    if (isTabEmpty) {
      _disabledTabsIndexes.add(tabIndex);
    } else {
      _disabledTabsIndexes.remove(tabIndex);
    }
  }
}
