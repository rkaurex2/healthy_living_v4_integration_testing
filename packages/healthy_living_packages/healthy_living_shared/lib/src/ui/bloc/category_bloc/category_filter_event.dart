import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart' show ProductCategory;
import 'package:healthy_living_shared/src/ui/models/filters/category_ui_item.dart';

part 'category_filter_event.freezed.dart';

@freezed
class CategoryFilterEvent with _$CategoryFilterEvent {
  const factory CategoryFilterEvent.initialised({
    required List<CategoryUiItem> categories,
    required ProductCategory productCategory,
    @Default(<String>{}) Set<String> initiallySelected,
    int? initialSelectedCategoryId,
    int? initialSelectedSubCategoryId,
  }) = CategoryFiltersInitialised;
  const factory CategoryFilterEvent.categoryToggled(int categoryId) =
      CategoryToggled;
  const factory CategoryFilterEvent.subCategoryToggled({
    required int categoryId,
    required int subcategoryId,
  }) = SubCategoryToggled;
  const factory CategoryFilterEvent.expandToggled(int categoryId) =
  ExpandToggled;
  const factory CategoryFilterEvent.filtersCleared() = CategoryFiltersCleared;
}
