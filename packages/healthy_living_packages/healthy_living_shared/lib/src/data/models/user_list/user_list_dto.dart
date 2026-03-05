import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/user_list/user_list_items_dto.dart';

part 'user_list_dto.freezed.dart';
part 'user_list_dto.g.dart';

@freezed
sealed class UserListDTO with _$UserListDTO {
  const factory UserListDTO({
    int? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? name,
    @JsonKey(name: 'list_name') String? listName,
    @JsonKey(name: 'items_count') int? itemsCount,
    @JsonKey(name: 'skipped_items') List<int>? skippedItems,
    String? url,
    List<UserListItemsDTO>? items,
  }) = _UserListDTO;

  factory UserListDTO.fromJson(Map<String, dynamic> json) =>
      _$UserListDTOFromJson(json);
}
