import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/user_list/user_list_product_dto.dart';

part 'user_list_items_dto.freezed.dart';
part 'user_list_items_dto.g.dart';

@freezed
sealed class UserListItemsDTO with _$UserListItemsDTO {
  const factory UserListItemsDTO({
    int? id,
    int? position,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_type') String? productType,
    UserListProductDTO? product,
  }) = _UserListItemsDTO;

  factory UserListItemsDTO.fromJson(Map<String, dynamic> json) =>
      _$UserListItemsDTOFromJson(json);
}
