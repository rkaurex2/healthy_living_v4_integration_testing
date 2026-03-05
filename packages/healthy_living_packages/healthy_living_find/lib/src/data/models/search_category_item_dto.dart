import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/data/models/search_highlights_dto.dart';

part 'search_category_item_dto.freezed.dart';
part 'search_category_item_dto.g.dart';

@freezed
sealed class SearchCategoryItemDTO with _$SearchCategoryItemDTO {
  const factory SearchCategoryItemDTO({
    int? id,
    String? type,
    String? subtype,
    String? name,
    String? description,
    @JsonKey(name: 'product_count') int? productCount,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'product_type') String? productType,
    SearchHighlightsDTO? highlights,
  }) = _SearchCategoryItemDTO;

  factory SearchCategoryItemDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryItemDTOFromJson(json);
}
