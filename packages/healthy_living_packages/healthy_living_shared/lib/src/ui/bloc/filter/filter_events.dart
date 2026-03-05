import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';

part 'filter_events.freezed.dart';

@freezed
sealed class FilterEvent with _$FilterEvent {
  const factory FilterEvent.initialized({
    required ProductCategory productCategory,
    required ProductFiltersModel? initialFilters,
    required List<CategoryAggregationModel> categoryAggregations,
    required List<BrandAggregationModel> brandAggregations,
    required bool isPremiumUser,
    int? initialSelectedCategoryId,
    int? initialSelectedSubCategoryId,
    int? initialSelectedBrandId,
    bool? isEWGVerifiedSearch,
  }) = FilterInitialized;

  const factory FilterEvent.setSortFilter({required SortOption sortOption}) =
      SetSortFilter;

  const factory FilterEvent.setHazardScoreFilter({
    required HazardLevel hazardLevel,
  }) = SetHazardScoreFilter;

  const factory FilterEvent.setCategoryFilter({
    required List<CategoryUiItem> selectedCategories,
  }) = SetCategoryFilter;

  const factory FilterEvent.setBrandFilter({
    required List<BrandUiItem> selectedBrands,
  }) = SetBrandFilter;

  const factory FilterEvent.allFiltersCleared() = AllFiltersCleared;

  const factory FilterEvent.setIngredientPreferencesFilter({
    required IngredientPreferencesFilterModel ingredientPreferencesFilter,
  }) = SetIngredientPreferencesFilter;
}
