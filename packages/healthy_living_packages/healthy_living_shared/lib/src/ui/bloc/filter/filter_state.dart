import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';

part 'filter_state.freezed.dart';

@freezed
sealed class FilterState with _$FilterState {
  const factory FilterState.initial() = FilterInitialState;

  const factory FilterState.basicFiltersInitialised() = BasicFiltersInitialised;

  const factory FilterState.sortFilterUpdated({
    required SortOption selectedSortOption,
  }) = SortFilterUpdated;

  const factory FilterState.hazardScoreFilterUpdated({
    required HazardLevel selectedHazardScore,
  }) = HazardScoreFilterUpdated;

  const factory FilterState.categoryFilterUpdated({
    required List<CategoryUiItem> selectedCategories,
  }) = CategoryFilterUpdated;

  const factory FilterState.brandFilterUpdated({
    required List<BrandUiItem> selectedBrands,
  }) = BrandFilterUpdated;

  const factory FilterState.allFiltersClearSuccess() = AllFiltersClearSuccess;

  const factory FilterState.ingredientPreferencesFilterUpdated({
    required IngredientPreferencesFilterModel ingredientPreferencesFilter,
  }) = IngredientPreferencesFilterUpdated;

  const factory FilterState.ingredientPreferencesFilterLoadInProgress() =
      IngredientPreferencesFilterLoadInProgress;

  const factory FilterState.ingredientPreferencesFilterLoadSuccess() =
      IngredientPreferencesFilterLoadSuccess;

  const factory FilterState.ingredientPreferencesFilterLoadFailure({
    required Exception exception,
  }) = IngredientPreferencesFilterLoadFailure;
}
