import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final FilterUtils _filterUtils;
  final IngredientPreferenceRepository _ingredientPreferenceRepository;
  final IngredientPreferenceAnalytics _ingredientPreferenceAnalytics;

  late SortOption _initialSortOption;
  late SortOption _updatedSortOption;

  HazardLevel _initialHazardLevel = HazardLevel.high;
  HazardLevel _updatedHazardLevel = HazardLevel.high;

  List<CategoryUiItem> _categoryItems = [];
  List<CategoryUiItem> _updatedCategoryItems = [];
  List<BrandUiItem> _brandItems = [];
  List<BrandUiItem> _updatedBrandItems = [];
  IngredientPreferencesFilterModel _initialIngredientPreferencesFilterModel =
      IngredientPreferencesFilterModel(isAvoided: false, isPreferred: false);
  IngredientPreferencesFilterModel _updatedIngredientPreferencesFilterModel =
      IngredientPreferencesFilterModel(isAvoided: false, isPreferred: false);
  List<CuratedIngredientPreferenceListModel> _curatedIngredientPreferenceList =
      [];

  bool? _isEWGVerifiedSearch;
  int? _initialSelectedCategoryId;
  int? _initialSelectedSubCategoryId;
  int? _initialSelectedBrandId;

  // Getter for initial sort filter option
  SortOption get initialSortOption => _initialSortOption;

  SortOption get updatedSortOption => _updatedSortOption;

  HazardLevel? get initialHazardLevel => _initialHazardLevel;

  HazardLevel? get updatedHazardLevel => _updatedHazardLevel;

  List<CategoryUiItem> get categoryItems => _categoryItems;

  List<CategoryUiItem> get updatedCategoryItems => _updatedCategoryItems;

  List<BrandUiItem> get brandItems => _brandItems;

  List<BrandUiItem> get updatedBrandItems => _updatedBrandItems;

  List<CuratedIngredientPreferenceListModel>
  get curatedIngredientPreferenceList => _curatedIngredientPreferenceList;

  bool? get isEWGVerifiedSearch => _isEWGVerifiedSearch;

  int? get initialSelectedCategoryId => _initialSelectedCategoryId;

  int? get initialSelectedSubCategoryId => _initialSelectedSubCategoryId;

  int? get initialSelectedBrandId => _initialSelectedBrandId;

  int get selectedCategoryItems {
    int selectedCategories = 0;
    for (CategoryUiItem selectedCategory in _updatedCategoryItems) {
      if (selectedCategory.isAnySelected) {
        selectedCategories += 1;
      }
    }
    return selectedCategories;
  }

  int get selectedBrandItems {
    return _updatedBrandItems.where((brand) => brand.isSelected).length;
  }

  IngredientPreferencesFilterModel
  get initialIngredientPreferencesFilterModel =>
      _initialIngredientPreferencesFilterModel;

  IngredientPreferencesFilterModel
  get updatedIngredientPreferencesFilterModel =>
      _updatedIngredientPreferencesFilterModel;

  FilterBloc({
    required FilterUtils filterUtils,
    required IngredientPreferenceRepository ingredientPreferenceRepository,
    required IngredientPreferenceAnalytics ingredientPreferenceAnalytics,
  }) : _filterUtils = filterUtils,
       _ingredientPreferenceRepository = ingredientPreferenceRepository,
       _ingredientPreferenceAnalytics = ingredientPreferenceAnalytics,
       super(FilterState.initial()) {
    _initialSortOption = _filterUtils.getDefaultSortOption();
    _updatedSortOption = _filterUtils.getDefaultSortOption();

    on<FilterInitialized>(_onInitialized);
    on<SetSortFilter>(_onSetSortFilter);
    on<SetHazardScoreFilter>(_onSetHazardScoreFilter);
    on<SetCategoryFilter>(_onSetCategoryFilter);
    on<SetBrandFilter>(_onSetBrandFilter);
    on<AllFiltersCleared>(_onAllFiltersCleared);
    on<SetIngredientPreferencesFilter>(_onSetIngredientPreferenceFilter);
  }

  Future<void> _onInitialized(
    FilterInitialized event,
    Emitter<FilterState> emit,
  ) async {
    _isEWGVerifiedSearch = event.isEWGVerifiedSearch;
    _initialSelectedCategoryId = event.initialSelectedCategoryId;
    _initialSelectedSubCategoryId = event.initialSelectedSubCategoryId;
    _initialSelectedBrandId = event.initialSelectedBrandId;
    if (event.initialFilters?.sortOption != null) {
      _initialSortOption = event.initialFilters!.sortOption;
      _updatedSortOption = event.initialFilters!.sortOption;
    } else {
      _initialSortOption = _filterUtils.getDefaultSortOption();
      _updatedSortOption = _filterUtils.getDefaultSortOption();
    }

    if (event.initialFilters?.hazardLevel != null) {
      _initialHazardLevel = event.initialFilters!.hazardLevel!;
      _updatedHazardLevel = event.initialFilters!.hazardLevel!;
    } else {
      _initialHazardLevel =
          _isEWGVerifiedSearch == true
              ? HazardLevel.verified
              : HazardLevel.high;
      _updatedHazardLevel =
          _isEWGVerifiedSearch == true
              ? HazardLevel.verified
              : HazardLevel.high;
    }

    if (event.initialFilters?.categories.isValidList == true) {
      _categoryItems = event.initialFilters!.categories!;
      _updatedCategoryItems = event.initialFilters!.categories!;
    } else {
      List<CategoryUiItem> categoryUiList = [];
      final categoryAggregations = event.categoryAggregations;
      if (event.productCategory != ProductCategory.cleaner) {
        for (int i = 0; i < categoryAggregations.length; i++) {
          final categoryGroups = categoryAggregations[i].categories;
          for (int j = 0; j < categoryGroups.length; j++) {
            final categoryGroup = categoryGroups[j];
            final subCategories = categoryGroups[j].subCategories;
            final List<SubCategoryUiItem> subCategoriesUiItems = [];
            bool isPreselectedCategory =
                event.initialSelectedCategoryId == categoryGroup.id;
            bool isPreselectedSubCategory = false;

            if (subCategories.isValidList) {
              for (int k = 0; k < subCategories!.length; k++) {
                final subCategory = subCategories[k];
                isPreselectedSubCategory =
                    event.initialSelectedSubCategoryId == subCategory.id;
                subCategoriesUiItems.add(
                  SubCategoryUiItem(
                    id: subCategory.id,
                    name: subCategory.name,
                    count: subCategory.count,
                    isSelected:
                        isPreselectedCategory || isPreselectedSubCategory,
                  ),
                );
              }

              subCategoriesUiItems.insert(
                0,
                SubCategoryUiItem(
                  id: -1,
                  name: StringConstants.filterAllSubcategoryName,
                  count: -1,
                  isSelected: isPreselectedCategory || isPreselectedSubCategory,
                ),
              );
            }
            categoryUiList.add(
              CategoryUiItem(
                id: categoryGroup.id,
                name: categoryGroup.name,
                count: categoryGroup.count,
                subCategories: subCategoriesUiItems,
              ),
            );
          }
        }
      } else {
        for (int i = 0; i < categoryAggregations.length; i++) {
          final categoryGroup = categoryAggregations[i];
          final cleanerSubcategoryAggregations =
              categoryAggregations[i].categories;
          final List<SubCategoryUiItem> cleanerSubCategoriesUiItems = [];

          if (cleanerSubcategoryAggregations.isValidList) {
            for (int j = 0; j < cleanerSubcategoryAggregations.length; j++) {
              final cleanerSubcategoryAggregation =
                  cleanerSubcategoryAggregations[j];

              final isPreselectedCategory =
                  cleanerSubcategoryAggregation.id ==
                  event.initialSelectedCategoryId;

              cleanerSubCategoriesUiItems.add(
                SubCategoryUiItem(
                  id: cleanerSubcategoryAggregation.id,
                  name: cleanerSubcategoryAggregation.name,
                  count: cleanerSubcategoryAggregation.count,
                  isSelected: isPreselectedCategory,
                ),
              );
            }

            final isAllSubcategoriesSelected = cleanerSubCategoriesUiItems
                .every((cleanerSubCategory) => cleanerSubCategory.isSelected);
            cleanerSubCategoriesUiItems.insert(
              0,
              SubCategoryUiItem(
                id: -1,
                name: StringConstants.filterAllSubcategoryName,
                count: -1,
                isSelected: isAllSubcategoriesSelected,
              ),
            );
            cleanerSubCategoriesUiItems[0] = cleanerSubCategoriesUiItems[0]
                .copyWith(isSelected: isAllSubcategoriesSelected);
          }

          categoryUiList.add(
            CategoryUiItem(
              id: categoryGroup.id,
              name: categoryGroup.name,
              count: categoryGroup.count,
              subCategories: cleanerSubCategoriesUiItems,
            ),
          );
        }
      }

      _categoryItems = categoryUiList;
      _updatedCategoryItems = categoryUiList;
    }

    if (event.initialFilters?.brands.isValidList == true) {
      _brandItems = event.initialFilters!.brands!;
      _updatedBrandItems = event.initialFilters!.brands!;
    } else if (event.brandAggregations.isValidList) {
      _brandItems =
          event.brandAggregations.map((brandAggregationItem) {
            return BrandUiItem(
              id: brandAggregationItem.id,
              name: brandAggregationItem.name,
              count: brandAggregationItem.count,
              isSelected: _initialSelectedBrandId != null ? true : false,
            );
          }).toList();
      _updatedBrandItems = _brandItems;
    }

    if (event.initialFilters?.ingredientPreferences != null) {
      _initialIngredientPreferencesFilterModel =
          event.initialFilters!.ingredientPreferences!;
      _updatedIngredientPreferencesFilterModel =
          event.initialFilters!.ingredientPreferences!;
    }

    emit(FilterState.basicFiltersInitialised());

    if (event.isPremiumUser) {
      emit(FilterState.ingredientPreferencesFilterLoadInProgress());
      try {
        final response = await _ingredientPreferenceRepository
            .getCuratedIngredientPreferenceLists(
              request: CuratedIngredientPreferenceListsRequestModel(
                filterUserSelected: true,
              ),
            );

        if (response.isSuccess) {
          _curatedIngredientPreferenceList =
              response.data?.curatedIngredientPreferenceLists ?? [];

          /// GA4 Events (IngredientsPref CuratedList)
          for (final entry
              in _curatedIngredientPreferenceList.asMap().entries) {
            final index = entry.key;
            final list = entry.value;

            if (list.userSelected == true) {
              await _ingredientPreferenceAnalytics
                  .logIngredientsPreferenceCuratedList(
                list: list,
                index: index,
                action: StringConstants.actionSelected,
                source: StringConstants.productDetails,
              );
            }
          }

          emit(FilterState.ingredientPreferencesFilterLoadSuccess());
        } else {
          emit(
            FilterState.ingredientPreferencesFilterLoadFailure(
              exception: UnknownNetworkException(
                message: "",
                statusCode: -1,
                originalError: "",
              ),
            ),
          );
        }
      } on Exception catch (exception) {
        emit(
          FilterState.ingredientPreferencesFilterLoadFailure(
            exception: exception,
          ),
        );
      }
    }
  }

  void _onSetSortFilter(SetSortFilter event, Emitter<FilterState> emit) {
    if (event.sortOption != _updatedSortOption) {
      _updatedSortOption = event.sortOption;
    }
    emit(FilterState.sortFilterUpdated(selectedSortOption: event.sortOption));
  }

  void _onSetHazardScoreFilter(
    SetHazardScoreFilter event,
    Emitter<FilterState> emit,
  ) {
    if (event.hazardLevel != _updatedHazardLevel) {
      _updatedHazardLevel = event.hazardLevel;
    }
    emit(
      FilterState.hazardScoreFilterUpdated(
        selectedHazardScore: event.hazardLevel,
      ),
    );
  }

  void _onSetCategoryFilter(
    SetCategoryFilter event,
    Emitter<FilterState> emit,
  ) {
    if (event.selectedCategories.isValidList) {
      _updatedCategoryItems = event.selectedCategories;
    }
    emit(
      FilterState.categoryFilterUpdated(
        selectedCategories: event.selectedCategories,
      ),
    );
  }

  void _onSetBrandFilter(SetBrandFilter event, Emitter<FilterState> emit) {
    if (event.selectedBrands.isValidList) {
      _updatedBrandItems = event.selectedBrands;
    }
    emit(FilterState.brandFilterUpdated(selectedBrands: event.selectedBrands));
  }

  Future<void> _onSetIngredientPreferenceFilter(
    SetIngredientPreferencesFilter event,
    Emitter<FilterState> emit,
  ) async {
    _updatedIngredientPreferencesFilterModel =
        event.ingredientPreferencesFilter;

    /// GA4 event (IngredientsPref Filter)
    final filterModel = event.ingredientPreferencesFilter;

    await _ingredientPreferenceAnalytics.logIngredientsPreferenceFilter(
      filterName: StringConstants.isPreferred,
      enabled: filterModel.isPreferred,
    );

    await _ingredientPreferenceAnalytics.logIngredientsPreferenceFilter(
      filterName: StringConstants.isAvoided,
      enabled: filterModel.isAvoided,
    );

    emit(
      FilterState.ingredientPreferencesFilterUpdated(
        ingredientPreferencesFilter: event.ingredientPreferencesFilter,
      ),
    );
  }

  void _onAllFiltersCleared(
    AllFiltersCleared event,
    Emitter<FilterState> emit,
  ) {
    _updatedCategoryItems =
        _updatedCategoryItems.map((category) {
          if (category.isAnySelected &&
              category.id != _initialSelectedCategoryId) {
            List<SubCategoryUiItem> subCategories =
                category.subCategories.map((subCategory) {
                  if (subCategory.isSelected &&
                      subCategory.id != _initialSelectedSubCategoryId) {
                    return subCategory.copyWith(isSelected: false);
                  } else {
                    return subCategory;
                  }
                }).toList();

            // If there's only one subcategory and it's selected, then keep All checkbox selected
            if (subCategories.length == 2 && subCategories[1].isSelected) {
              subCategories[0] = category.subCategories[0].copyWith(
                isSelected: true,
              );
            }

            return category.copyWith(
              subCategories: subCategories,
              isExpanded: false,
            );
          }
          return category;
        }).toList();

    _updatedBrandItems =
        _updatedBrandItems.map((brand) {
          return brand.copyWith(isSelected: false);
        }).toList();

    if (_isEWGVerifiedSearch != true) {
      _updatedHazardLevel = HazardLevel.high;
    }
    _updatedSortOption = _filterUtils.getDefaultSortOption();

    _updatedIngredientPreferencesFilterModel = IngredientPreferencesFilterModel(
      isAvoided: false,
      isPreferred: false,
    );

    emit(FilterState.allFiltersClearSuccess());
  }

  bool isShowResultsCtaEnabled() {
    final isSortByFilterChanged = _initialSortOption != _updatedSortOption;
    final isHazardFilterChanged = _initialHazardLevel != _updatedHazardLevel;
    final isCategoryFilterChanged = getIsCategoryFilterChanged();
    final isBrandFilterChanged = getIsBrandsFilterChanged();
    final isIngredientPreferenceFilterUpdated =
        _initialIngredientPreferencesFilterModel !=
        _updatedIngredientPreferencesFilterModel;

    return isSortByFilterChanged ||
        isHazardFilterChanged ||
        isCategoryFilterChanged ||
        isBrandFilterChanged ||
        isIngredientPreferenceFilterUpdated;
  }

  bool getIsCategoryFilterChanged() {
    bool isChanged = false;
    for (int i = 0; i < _categoryItems.length; i++) {
      final initialCategory = _categoryItems[i];
      final updatedCategory = _updatedCategoryItems[i];

      if (initialCategory != updatedCategory) {
        isChanged = true;
        break;
      }
    }

    return isChanged;
  }

  bool getIsBrandsFilterChanged() {
    bool isChanged = false;
    for (int i = 0; i < _brandItems.length; i++) {
      final initialBrand = _brandItems[i];
      final updatedBrand = _updatedBrandItems[i];

      if (initialBrand != updatedBrand) {
        isChanged = true;
        break;
      }
    }

    return isChanged;
  }

  bool hasAnyAvoidedIngredientPreferenceList({
    required ProductCategory productCategory,
  }) => _curatedIngredientPreferenceList.any((curatedIngredientPreference) {
    bool hasMatchingCategory = _hasMatchingCategory(
      productCategory: productCategory,
      curatedIngredientPreference: curatedIngredientPreference,
    );
    return hasMatchingCategory &&
        curatedIngredientPreference.listType ==
            StringConstants.ingredientPreferencesAvoidListType &&
        curatedIngredientPreference.userSelected == true;
  });

  bool hasAnyPreferredIngredientPreferenceList({
    required ProductCategory productCategory,
  }) => _curatedIngredientPreferenceList.any((curatedIngredientPreference) {
    bool hasMatchingCategory = _hasMatchingCategory(
      productCategory: productCategory,
      curatedIngredientPreference: curatedIngredientPreference,
    );
    return hasMatchingCategory &&
        curatedIngredientPreference.listType ==
            StringConstants.ingredientPreferencesPreferListType &&
        curatedIngredientPreference.userSelected == true;
  });

  bool _hasMatchingCategory({
    required ProductCategory productCategory,
    required CuratedIngredientPreferenceListModel curatedIngredientPreference,
  }) {
    bool hasMatchingCategory = false;
    if (productCategory == ProductCategory.personalCare) {
      hasMatchingCategory =
          curatedIngredientPreference.category?.toLowerCase() ==
              StringConstants.ingredientPreferencesCosmeticsCategory ||
          curatedIngredientPreference.category?.toLowerCase() ==
              StringConstants.ingredientPreferencesSunscreenCategory;
    } else if (productCategory == ProductCategory.cleaner) {
      hasMatchingCategory =
          curatedIngredientPreference.category?.toLowerCase() ==
          StringConstants.ingredientPreferencesCleanersCategory;
    } else if (productCategory == ProductCategory.food) {
      hasMatchingCategory =
          curatedIngredientPreference.category?.toLowerCase() ==
          StringConstants.food;
    }

    return hasMatchingCategory;
  }
}
