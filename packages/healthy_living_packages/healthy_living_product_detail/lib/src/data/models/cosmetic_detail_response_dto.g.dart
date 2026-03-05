// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cosmetic_detail_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CosmeticDetailResponseDTO _$CosmeticDetailResponseDTOFromJson(
  Map<String, dynamic> json,
) => _CosmeticDetailResponseDTO(
  productId: json['product_id'] as String?,
  name: json['name'] as String?,
  url: json['web_url'] as String?,
  brandName: json['brand_name'] as String?,
  category:
      (json['category'] as List<dynamic>?)?.map((e) => e as String).toList(),
  concerns:
      json['concerns'] == null
          ? null
          : CosmeticConcernsDTO.fromJson(
            json['concerns'] as Map<String, dynamic>,
          ),
  ingredients:
      (json['ingredients'] as List<dynamic>?)
          ?.map(
            (e) => CosmeticIngredientDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  retailers:
      (json['retailers'] as List<dynamic>?)
          ?.map((e) => RetailerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  ewgVerified: json['ewg_verified'] as bool?,
  scoreString: json['score'] as String?,
  imageUrl: json['image_url'] as String?,
  asin: json['asin'] as String?,
  sunscreen:
      json['sunscreen'] == null
          ? null
          : SunscreenDetailsDTO.fromJson(
            json['sunscreen'] as Map<String, dynamic>,
          ),
  isKit: json['kit_parent'] as bool?,
  scoreMin: json['score_min'] as String?,
  scoreMax: json['score_max'] as String?,
  kitRating: json['data_range'] as String?,
  kitDetails:
      json['kitDetails'] == null
          ? null
          : KitDetailsDTO.fromJson(json['kitDetails'] as Map<String, dynamic>),
  kitChildProducts:
      (json['child_products'] as List<dynamic>?)
          ?.map(
            (e) => ChildProductDetailsDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  lastUpdated: json['last_updated'] as String?,
  certifications:
      (json['certifications'] as List<dynamic>?)
          ?.map((e) => CertificationsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  labelIngredients: json['label_ingredients'] as String?,
  labelWarning: json['label_warnings'] as String?,
  labelDirection: json['label_directions'] as String?,
  ingredientPreferenceIndicator:
      json['ingredient_preference_labels'] == null
          ? null
          : IngredientPreferenceIndicatorDTO.fromJson(
            json['ingredient_preference_labels'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$CosmeticDetailResponseDTOToJson(
  _CosmeticDetailResponseDTO instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'name': instance.name,
  'web_url': instance.url,
  'brand_name': instance.brandName,
  'category': instance.category,
  'concerns': instance.concerns,
  'ingredients': instance.ingredients,
  'retailers': instance.retailers,
  'ewg_verified': instance.ewgVerified,
  'score': instance.scoreString,
  'image_url': instance.imageUrl,
  'asin': instance.asin,
  'sunscreen': instance.sunscreen,
  'kit_parent': instance.isKit,
  'score_min': instance.scoreMin,
  'score_max': instance.scoreMax,
  'data_range': instance.kitRating,
  'kitDetails': instance.kitDetails,
  'child_products': instance.kitChildProducts,
  'last_updated': instance.lastUpdated,
  'certifications': instance.certifications,
  'label_ingredients': instance.labelIngredients,
  'label_warnings': instance.labelWarning,
  'label_directions': instance.labelDirection,
  'ingredient_preference_labels': instance.ingredientPreferenceIndicator,
};
