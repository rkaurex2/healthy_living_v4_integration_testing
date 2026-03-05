import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_ui_item.freezed.dart';

@freezed
sealed class BrandUiItem with _$BrandUiItem {
  const factory BrandUiItem({
    required String name,
    int? id,
    int? count,
    @Default(false) bool isSelected,
  }) = _BrandUiItem;
}
