// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_sunscreen_cosmetic_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchSunscreenCosmeticProductDTO _$SearchSunscreenCosmeticProductDTOFromJson(
  Map<String, dynamic> json,
) => _SearchSunscreenCosmeticProductDTO(
  productType: json['product_type'] as String?,
  oldProduct: json['old_product'] as bool?,
  productId: (json['product_id'] as num?)?.toInt(),
  minorityOwned: json['minority_owned'] as bool?,
  brandName: json['brand_name'] as String?,
  brandId: (json['brand_id'] as num?)?.toInt(),
  compId: (json['comp_id'] as num?)?.toInt(),
  companyName: json['company_name'] as String?,
  name: json['name'] as String?,
  upcs: json['upcs'] as String?,
  imageUrl: json['image_url'] as String?,
  score: json['score'] as String?,
  ewgVerified: json['ewg_verified'] as bool?,
  verifiedDate: json['verified_date'] as String?,
  retailers: json['retailers'] as List<dynamic>?,
  webUrl: json['web_url'] as String?,
  ingredientPreferenceIndicator:
      json['ingredient_preferences'] == null
          ? null
          : IngredientPreferenceIndicatorDTO.fromJson(
            json['ingredient_preferences'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$SearchSunscreenCosmeticProductDTOToJson(
  _SearchSunscreenCosmeticProductDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'old_product': instance.oldProduct,
  'product_id': instance.productId,
  'minority_owned': instance.minorityOwned,
  'brand_name': instance.brandName,
  'brand_id': instance.brandId,
  'comp_id': instance.compId,
  'company_name': instance.companyName,
  'name': instance.name,
  'upcs': instance.upcs,
  'image_url': instance.imageUrl,
  'score': instance.score,
  'ewg_verified': instance.ewgVerified,
  'verified_date': instance.verifiedDate,
  'retailers': instance.retailers,
  'web_url': instance.webUrl,
  'ingredient_preferences': instance.ingredientPreferenceIndicator,
};
