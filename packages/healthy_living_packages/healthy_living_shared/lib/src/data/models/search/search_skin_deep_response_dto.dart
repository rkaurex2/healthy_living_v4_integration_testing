import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/search/search_cosmetic_product_response_dto.dart';
part 'search_skin_deep_response_dto.freezed.dart';
part 'search_skin_deep_response_dto.g.dart';

@freezed
sealed class SearchSkinDeepResponseDTO with _$SearchSkinDeepResponseDTO {
  const factory SearchSkinDeepResponseDTO({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_entries') int? totalEntries,
    List<SearchCosmeticProductResponseDTO>? cosmetics,
    @JsonKey(name: 'product_category_counts')
    Map<String, int>? productCategoryCounts,
    @JsonKey(name: 'brand_counts') Map<String, int>? brandCounts,
  }) = _SearchSkinDeepResponseDTO;

  factory SearchSkinDeepResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchSkinDeepResponseDTOFromJson(json);
}
