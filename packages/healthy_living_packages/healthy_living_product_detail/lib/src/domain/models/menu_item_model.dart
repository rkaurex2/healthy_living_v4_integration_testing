import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item_model.freezed.dart';

@freezed
sealed class MenuItemsModel with _$MenuItemsModel {
  const factory MenuItemsModel({
    String? name,
  }) = _MenuItemsModel;
}