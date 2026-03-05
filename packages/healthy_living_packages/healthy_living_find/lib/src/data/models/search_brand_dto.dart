import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/data/models/search_highlights_dto.dart';

part 'search_brand_dto.freezed.dart';
part 'search_brand_dto.g.dart';

@freezed
sealed class SearchBrandDTO with _$SearchBrandDTO {
  const factory SearchBrandDTO({
    int? id,
    String? type,
    String? name,
    String? description,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'cosmetics_products_count') int? cosmeticsProductsCount,
    @JsonKey(name: 'logo_url') String? logoUrl,
    bool? verified,
    SearchHighlightsDTO? highlights,
    @JsonKey(name: 'count_cleaners') int? countCleaners,
  }) = _SearchBrandDTO;

  factory SearchBrandDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchBrandDTOFromJson(json);
}

