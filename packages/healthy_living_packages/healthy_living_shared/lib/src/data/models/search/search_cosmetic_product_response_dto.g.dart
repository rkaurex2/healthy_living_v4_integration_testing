// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cosmetic_product_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchCosmeticProductResponseDTO _$SearchCosmeticProductResponseDTOFromJson(
  Map<String, dynamic> json,
) => _SearchCosmeticProductResponseDTO(
  productType: json['product_type'] as String?,
  oldProduct: json['old_product'] as bool?,
  productId: (json['product_id'] as num?)?.toInt(),
  kitParent: json['kit_parent'] as bool?,
  parentId: (json['parent_id'] as num?)?.toInt(),
  minorityOwned: json['minority_owned'] as bool?,
  brandName: json['brand_name'] as String?,
  brandId: (json['brand_id'] as num?)?.toInt(),
  compId: (json['comp_id'] as num?)?.toInt(),
  companyName: json['company_name'] as String?,
  name: json['name'] as String?,
  upcs: json['upcs'] as String?,
  imageUrl: json['image_url'] as String?,
  browseImageUrl: json['browse_image_url'] as String?,
  mediumImageUrl: json['medium_image_url'] as String?,
  score: json['score'] as String?,
  webscore: (json['webscore'] as num?)?.toInt(),
  dataRange: json['data_range'] as String?,
  dataMin: json['data_min'],
  dataMax: json['data_max'],
  scoreRange: json['score_range'] as String?,
  scoreMin: json['score_min'] as String?,
  scoreMax: json['score_max'] as String?,
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

Map<String, dynamic> _$SearchCosmeticProductResponseDTOToJson(
  _SearchCosmeticProductResponseDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'old_product': instance.oldProduct,
  'product_id': instance.productId,
  'kit_parent': instance.kitParent,
  'parent_id': instance.parentId,
  'minority_owned': instance.minorityOwned,
  'brand_name': instance.brandName,
  'brand_id': instance.brandId,
  'comp_id': instance.compId,
  'company_name': instance.companyName,
  'name': instance.name,
  'upcs': instance.upcs,
  'image_url': instance.imageUrl,
  'browse_image_url': instance.browseImageUrl,
  'medium_image_url': instance.mediumImageUrl,
  'score': instance.score,
  'webscore': instance.webscore,
  'data_range': instance.dataRange,
  'data_min': instance.dataMin,
  'data_max': instance.dataMax,
  'score_range': instance.scoreRange,
  'score_min': instance.scoreMin,
  'score_max': instance.scoreMax,
  'ewg_verified': instance.ewgVerified,
  'verified_date': instance.verifiedDate,
  'retailers': instance.retailers,
  'web_url': instance.webUrl,
  'ingredient_preferences': instance.ingredientPreferenceIndicator,
};
