// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_food_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodDetailResponseDTO _$FoodDetailResponseDTOFromJson(
  Map<String, dynamic> json,
) => _FoodDetailResponseDTO(
  productType: json['product_type'] as String?,
  upcs: (json['upcs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  name: json['name'] as String?,
  productId: (json['product_id'] as num?)?.toInt(),
  productSize: json['product_size'] as String?,
  imageUrl: json['image_url'] as String?,
  asinList: json['asin_list'] as String?,
  brandId: (json['brand_id'] as num?)?.toInt(),
  brandName: json['brand_name'] as String?,
  scores: (json['scores'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  categoryDisplayName: json['category_display_name'] as String?,
  categoryLinkName: json['category_link_name'] as String?,
  categoryGroups:
      (json['category_groups'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  webUrl: json['web_url'] as String?,
  discontinued: json['discontinued'] as bool?,
  ingredientPreferenceIndicator:
      json['ingredient_preferences'] == null
          ? null
          : IngredientPreferenceIndicatorDTO.fromJson(
            json['ingredient_preferences'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$FoodDetailResponseDTOToJson(
  _FoodDetailResponseDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'upcs': instance.upcs,
  'name': instance.name,
  'product_id': instance.productId,
  'product_size': instance.productSize,
  'image_url': instance.imageUrl,
  'asin_list': instance.asinList,
  'brand_id': instance.brandId,
  'brand_name': instance.brandName,
  'scores': instance.scores,
  'category_display_name': instance.categoryDisplayName,
  'category_link_name': instance.categoryLinkName,
  'category_groups': instance.categoryGroups,
  'web_url': instance.webUrl,
  'discontinued': instance.discontinued,
  'ingredient_preferences': instance.ingredientPreferenceIndicator,
};
