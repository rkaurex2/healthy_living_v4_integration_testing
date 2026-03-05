import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/search/search_sunscreen_cosmetic_product_dto.dart';
part 'search_sunscreen_response_dto.freezed.dart';
part 'search_sunscreen_response_dto.g.dart';

@freezed
sealed class SearchSunscreenResponseDTO with _$SearchSunscreenResponseDTO {
  const factory SearchSunscreenResponseDTO({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_entries') int? totalEntries,
    List<SearchSunscreenCosmeticProductDTO>? cosmetics,
    @JsonKey(name: 'product_category_counts')
    Map<String, int>? productCategoryCounts,
    @JsonKey(name: 'brand_counts') Map<String, int>? brandCounts,
  }) = _SearchSunscreenResponseDTO;

  factory SearchSunscreenResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchSunscreenResponseDTOFromJson(json);
}
