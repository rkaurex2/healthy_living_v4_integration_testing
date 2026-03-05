import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/user_list/user_list_items_dto.dart';

part 'user_list_detail_dto.freezed.dart';
part 'user_list_detail_dto.g.dart';

@freezed
sealed class UserListDetailDTO with _$UserListDetailDTO {
  const factory UserListDetailDTO({
    int? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'list_name') String? name,
    @JsonKey(name: 'items_count') int? itemsCount,
    @JsonKey(name: 'total_entries') int? totalEntries,
    String? url,
    List<UserListItemsDTO>? items,
  }) = _UserListDetailDTO;

  factory UserListDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$UserListDetailDTOFromJson(json);
}
