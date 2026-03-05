import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_category_dto.freezed.dart';
part 'search_category_dto.g.dart';

@freezed
sealed class SearchCategoryDTO with _$SearchCategoryDTO {
  const factory SearchCategoryDTO({
    int? id,
    String? name,
    @JsonKey(name: 'food_essentials_aisle_id') int? foodEssentialsAisleId,
    @JsonKey(name: 'food_essentials_shelf_id') int? foodEssentialsShelfId,
  }) = _SearchCategoryDTO;

  factory SearchCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryDTOFromJson(json);
}

