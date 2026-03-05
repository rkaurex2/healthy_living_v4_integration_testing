import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item_dto.freezed.dart';
part 'menu_item_dto.g.dart';

@freezed
sealed class MenuItemsDTO with _$MenuItemsDTO {
  const factory MenuItemsDTO({
    String? name,
  }) = _MenuItemsDTO;

  factory MenuItemsDTO.fromJson(Map<String, dynamic> json) =>
      _$MenuItemsDTOFromJson(json);
}