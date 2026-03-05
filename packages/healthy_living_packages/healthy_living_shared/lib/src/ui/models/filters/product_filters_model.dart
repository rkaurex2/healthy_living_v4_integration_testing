import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';

part 'product_filters_model.freezed.dart';

@freezed
sealed class ProductFiltersModel with _$ProductFiltersModel {
  const factory ProductFiltersModel({
    required SortOption sortOption,
    required HazardLevel? hazardLevel,
    List<CategoryUiItem>? categories,
    List<BrandUiItem>? brands,
    IngredientPreferencesFilterModel? ingredientPreferences,
  }) = _ProductFiltersModel;
}
