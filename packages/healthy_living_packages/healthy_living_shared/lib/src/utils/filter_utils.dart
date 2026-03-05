import 'package:design_system/design_system.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        BrandFilterItemRequestModel,
        CategoryFilterItemRequestModel,
        HazardLevel,
        HealthyLivingSharedLocalizations,
        IngredientPreferencesFilterModel,
        ProductCategory;
import 'package:healthy_living_shared/src/ui/models/filters/hazard_score_filter_model.dart';
import 'package:healthy_living_shared/src/ui/models/filters/product_filters_model.dart';
import 'package:healthy_living_shared/src/ui/models/sort_filter/sort_by.dart';
import 'package:healthy_living_shared/src/ui/models/sort_filter/sort_option.dart';
import 'package:healthy_living_shared/src/ui/models/sort_filter/sort_order.dart';
import 'package:healthy_living_shared/src/ui/models/sort_filter/sort_type.dart';
import 'package:healthy_living_shared/src/ui/models/universal_search/search_type.dart';
import 'package:healthy_living_shared/src/utils/string_constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FilterUtils {
  FilterUtils._instance();

  static FilterUtils? _sharedInstance;

  factory FilterUtils() => _sharedInstance ??= FilterUtils._instance();

  List<HazardScoreFilterModel> getHazardScoreFilterData({
    required ProductCategory category,
    required HealthyLivingSharedLocalizations localizations,
  }) {
    if (category == ProductCategory.personalCare ||
        category == ProductCategory.sunscreen) {
      return [
        HazardScoreFilterModel(
          title: "",
          imagePath: DSIcons.icEWGVerified,
          hazardLevel: HazardLevel.verified,
        ),
        HazardScoreFilterModel(
          title: localizations.filters_personalCare_lowHazardTitle,
          hazardLevel: HazardLevel.low,
        ),
        HazardScoreFilterModel(
          title: localizations.filters_personalCare_moderateHazardTitle,
          hazardLevel: HazardLevel.moderate,
        ),
        HazardScoreFilterModel(
          title: localizations.filters_personalCare_highHazardTitle,
          hazardLevel: HazardLevel.high,
        ),
      ];
    } else if (category == ProductCategory.food) {
      return [
        HazardScoreFilterModel(
          title: localizations.filters_food_lowHazardTitle,
          hazardLevel: HazardLevel.low,
        ),
        HazardScoreFilterModel(
          title: localizations.filters_food_moderateHazardTitle,
          hazardLevel: HazardLevel.moderate,
        ),
        HazardScoreFilterModel(
          title: localizations.filters_food_highHazardTitle,
          hazardLevel: HazardLevel.high,
        ),
      ];
    } else if (category == ProductCategory.cleaner) {
      return [
        HazardScoreFilterModel(
          title: "",
          imagePath: DSIcons.icEWGVerified,
          hazardLevel: HazardLevel.verified,
        ),
        HazardScoreFilterModel(
          title: localizations.filters_cleaners_lowHazardTitle,
          hazardLevel: HazardLevel.low,
        ),
        HazardScoreFilterModel(
          title: localizations.filters_cleaners_moderateHazardTitle,
          hazardLevel: HazardLevel.moderate,
        ),
        HazardScoreFilterModel(
          title: localizations.filters_cleaners_highHazardTitle,
          hazardLevel: HazardLevel.high,
        ),
      ];
    }
    return [];
  }

  List<SortOption> getSortFilters() {
    return [
      SortOption(
        index: 0,
        type: SortType.hazardScoreBestToWorst,
        sortBy: SortBy.hazardScore,
        sortOrder: SortOrder.asc,
      ),
      SortOption(
        index: 1,
        type: SortType.hazardScoreWorstToBest,
        sortBy: SortBy.hazardScore,
        sortOrder: SortOrder.desc,
      ),
      SortOption(
        index: 2,
        type: SortType.alphabeticalAToZ,
        sortBy: SortBy.name,
        sortOrder: SortOrder.asc,
      ),
      SortOption(
        index: 3,
        type: SortType.alphabeticalZToA,
        sortBy: SortBy.name,
        sortOrder: SortOrder.desc,
      ),
    ];
  }

  String getSortOptionLabel({
    required SortType sortType,
    required HealthyLivingSharedLocalizations localizations,
  }) {
    switch (sortType) {
      case SortType.hazardScoreBestToWorst:
        return localizations.filters_sort_hazardScoreBestToWorst;
      case SortType.hazardScoreWorstToBest:
        return localizations.filters_sort_hazardScoreWorstToBest;
      case SortType.alphabeticalAToZ:
        return localizations.filters_sort_alphabeticalAToZ;
      case SortType.alphabeticalZToA:
        return localizations.filters_sort_alphabeticalZToA;
    }
  }

  ProductCategory getProductCategoryFromSearchType(SearchType? searchType) {
    if (searchType == SearchType.personalCare) {
      return ProductCategory.personalCare;
    } else if (searchType == SearchType.food) {
      return ProductCategory.food;
    } else if (searchType == SearchType.cleaner) {
      return ProductCategory.cleaner;
    } else if (searchType == SearchType.sunscreen) {
      return ProductCategory.sunscreen;
    } else {
      return ProductCategory.personalCare;
    }
  }

  List<HazardLevel> generateHazardLevelFilterArrayQuery({
    required HazardLevel? hazardLevel,
  }) {
    if (hazardLevel == HazardLevel.low) {
      return [HazardLevel.low];
    } else if (hazardLevel == HazardLevel.moderate) {
      return [HazardLevel.low, HazardLevel.moderate];
    } else if (hazardLevel == HazardLevel.high) {
      return [HazardLevel.low, HazardLevel.moderate, HazardLevel.high];
    } else if (hazardLevel == HazardLevel.verified) {
      return [HazardLevel.verified];
    }
    return [];
  }

  String generateHazardLevelFilterQuery({
    required List<HazardLevel> hazardLevelList,
  }) {
    String query = "";

    for (int i = 0; i < hazardLevelList.length; i++) {
      if (i == 0) {
        query +=
            "hazard_score_ranges[]=${hazardLevelList[i] == HazardLevel.verified ? StringConstants.verifiedHazardLevelApiKey : hazardLevelList[i].name}";
      } else {
        query += "&hazard_score_ranges[]=${hazardLevelList[i].name}";
      }
    }

    return query;
  }

  String generateCategoriesFilterQuery({
    required List<CategoryFilterItemRequestModel> categories,
    required String searchType,
    bool isBrowseFilter = false,
  }) {
    if (!isBrowseFilter) {
      final isAllCategoriesSelected = categories.every(
        (category) => category.isFullySelected,
      );
      if (isAllCategoriesSelected) {
        return "";
      }
    }
    final params = <String>[];

    for (final category in categories) {
      if (category.isFullySelected) {
        if (_isCleanersType(searchType)) {
          params.add('category_group_id[]=${category.id}');
        } else {
          params.add('category_id[]=${category.id}');
        }
      } else if (category.isAnySelected) {
        for (final subcategory in category.selectedSubCategories) {
          if (_isCleanersType(searchType)) {
            params.add('category_id[]=${subcategory.id}');
          } else {
            params.add('sub_category_id[]=${subcategory.id}');
          }
        }
      }
    }

    return params.join('&');
  }

  String generateBrandsFilterQuery(List<BrandFilterItemRequestModel> brands) {
    final isAllBrandsSelected = brands.every((brand) => brand.isSelected);
    if (isAllBrandsSelected) {
      return "";
    }

    final params = <String>[];
    for (final brand in brands) {
      if (brand.isSelected) {
        params.add('brand_id[]=${brand.id}');
      }
    }

    return params.join('&');
  }

  String getIngredientPreferencesQueries(
    IngredientPreferencesFilterModel ingredientPreferencesFilterModel,
  ) {
    if (!ingredientPreferencesFilterModel.isAvoided &&
        !ingredientPreferencesFilterModel.isPreferred) {
      return "";
    }

    final params = <String>[];

    if (ingredientPreferencesFilterModel.isAvoided) {
      params.add("filter[filter_avoid]=true");
    }
    if (ingredientPreferencesFilterModel.isPreferred) {
      params.add("filter[filter_prefer]=true");
    }

    return params.join('&');
  }

  Map<ProductCategory, ProductFiltersModel> getDefaultFiltersMap() {
    final defaultSortOption = getDefaultSortOption();

    return {
      ProductCategory.personalCare: ProductFiltersModel(
        sortOption: defaultSortOption,
        hazardLevel: HazardLevel.high,
      ),
      ProductCategory.food: ProductFiltersModel(
        sortOption: defaultSortOption,
        hazardLevel: HazardLevel.high,
      ),
      ProductCategory.cleaner: ProductFiltersModel(
        sortOption: defaultSortOption,
        hazardLevel: HazardLevel.high,
      ),
    };
  }

  Map<ProductCategory, ProductFiltersModel> getVerifiedDefaultFiltersMap() {
    final defaultSortOption = getDefaultSortOption();

    return {
      ProductCategory.personalCare: ProductFiltersModel(
        sortOption: defaultSortOption,
        hazardLevel: HazardLevel.verified,
      ),
      ProductCategory.food: ProductFiltersModel(
        sortOption: defaultSortOption,
        hazardLevel: HazardLevel.verified,
      ),
      ProductCategory.cleaner: ProductFiltersModel(
        sortOption: defaultSortOption,
        hazardLevel: HazardLevel.verified,
      ),
    };
  }

  SortOption getDefaultSortOption() {
    final sortFilters = getSortFilters();
    final int defaultSortOptionIndex = sortFilters.indexWhere(
      (sortFilter) => sortFilter.type == SortType.hazardScoreBestToWorst,
    );
    if (defaultSortOptionIndex >= 0) {
      return sortFilters[defaultSortOptionIndex];
    } else {
      return SortOption(
        index: 0,
        type: SortType.hazardScoreBestToWorst,
        sortBy: SortBy.hazardScore,
        sortOrder: SortOrder.asc,
      );
    }
  }

  bool _isCleanersType(String searchType) {
    return SearchType.fromName(searchType) == SearchType.cleaner;
  }

  bool isFilterApplied({required ProductFiltersModel filters}) {
    bool isFilterApplied = false;

    final bool isSortOptionUpdated =
        filters.sortOption.type != SortType.hazardScoreBestToWorst;
    final isHazardLevelUpdated = filters.hazardLevel != HazardLevel.high;
    final bool isAnySubcategorySelected =
        filters.categories?.any((category) => category.isAnySelected) == true;
    final bool isAnyBrandSelected =
        filters.brands?.any((brand) => brand.isSelected == true) == true;
    final bool isIngredientPreferencesUpdated =
        filters.ingredientPreferences?.isAvoided == true ||
        filters.ingredientPreferences?.isPreferred == true;

    if (isSortOptionUpdated ||
        isHazardLevelUpdated ||
        isAnySubcategorySelected ||
        isAnyBrandSelected ||
        isIngredientPreferencesUpdated) {
      isFilterApplied = true;
    }
    return isFilterApplied;
  }
}
