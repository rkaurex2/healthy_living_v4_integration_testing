import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/filters/category_ui_item.dart';

part 'category_filter_state.freezed.dart';

@freezed
sealed class CategoryFilterState with _$CategoryFilterState {
  const factory CategoryFilterState.initial({
    required List<CategoryUiItem> categories,
  }) = CategoryFilterInitial;

  const factory CategoryFilterState.categoryToggleSuccess({
    required List<CategoryUiItem> categories,
  }) = CategoryToggledSuccess;

  const factory CategoryFilterState.subCategoryToggleSuccess({
    required List<CategoryUiItem> categories,
  }) = SubCategoryToggledSuccess;

  const factory CategoryFilterState.toggleCategoryExpandSuccess({
    required List<CategoryUiItem> categories,
  }) = ToggledCategoryExpandSuccess;

  const factory CategoryFilterState.clearAllFiltersSuccess({
    required List<CategoryUiItem> categories,
  }) = ClearAllFiltersSuccess;
}
