// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_sunscreen_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchSunscreenResponseDTO _$SearchSunscreenResponseDTOFromJson(
  Map<String, dynamic> json,
) => _SearchSunscreenResponseDTO(
  currentPage: (json['current_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  totalEntries: (json['total_entries'] as num?)?.toInt(),
  cosmetics:
      (json['cosmetics'] as List<dynamic>?)
          ?.map(
            (e) => SearchSunscreenCosmeticProductDTO.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  productCategoryCounts: (json['product_category_counts']
          as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, (e as num).toInt())),
  brandCounts: (json['brand_counts'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toInt()),
  ),
);

Map<String, dynamic> _$SearchSunscreenResponseDTOToJson(
  _SearchSunscreenResponseDTO instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'total_entries': instance.totalEntries,
  'cosmetics': instance.cosmetics,
  'product_category_counts': instance.productCategoryCounts,
  'brand_counts': instance.brandCounts,
};
