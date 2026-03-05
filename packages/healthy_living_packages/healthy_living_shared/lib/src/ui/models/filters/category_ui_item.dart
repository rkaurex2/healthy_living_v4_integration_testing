import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/filters/sub_category_ui_item.dart';

part 'category_ui_item.freezed.dart';

@freezed
sealed class CategoryUiItem with _$CategoryUiItem {
  const factory CategoryUiItem({
    required int id,
    required String name,
    required int count,
    @Default(<SubCategoryUiItem>[]) List<SubCategoryUiItem> subCategories,
    @Default(false) bool isExpanded,
  }) = _CategoryUiItem;

  const CategoryUiItem._();

  bool get isFullySelected =>
      subCategories.isEmpty || subCategories.every((sub) => sub.isSelected);

  bool get isAnySelected =>
      subCategories.isEmpty || subCategories.any((sub) => sub.isSelected);

  List<SubCategoryUiItem> get selectedSubCategories =>
      subCategories.where((sub) => sub.isSelected).toList();

  List<SubCategoryUiItem> get selectedSubCategory =>
      subCategories.where((sub) => sub.isSelected).toList();
}
