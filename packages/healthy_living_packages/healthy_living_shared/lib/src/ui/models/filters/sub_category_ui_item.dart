import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_ui_item.freezed.dart';

@freezed
sealed class SubCategoryUiItem with _$SubCategoryUiItem {
  const factory SubCategoryUiItem({
    required int id,
    required String name,
    required int count,
    @Default(false) final bool isSelected,
  }) = _SubCategoryUiItem;
}
