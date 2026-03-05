// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_detail_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodDetailResponseDTO _$FoodDetailResponseDTOFromJson(
  Map<String, dynamic> json,
) => _FoodDetailResponseDTO(
  productType: json['product_type'] as String?,
  productId: (json['product_id'] as num?)?.toInt(),
  productSize: json['product_size'] as String?,
  upcs: (json['upcs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  name: json['name'] as String?,
  brandName: json['brand_name'] as String?,
  categoryDisplayName: json['category_display_name'] as String?,
  categoryLinkName: json['category_link_name'] as String?,
  categoryGroups:
      (json['category_groups'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  webUrl: json['web_url'] as String?,
  discontinued: json['discontinued'] as bool?,
  scores:
      json['scores'] == null
          ? null
          : FoodDetailScoresDTO.fromJson(
            json['scores'] as Map<String, dynamic>,
          ),
  findings:
      (json['page_details'] as List<dynamic>?)
          ?.map(
            (e) => FoodDetailPageDetailsDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  addedSugarIngredients: json['added_sugar_ingredients'] as String?,
  imageUrl: json['image_url'] as String?,
  asin: json['asin'] as String?,
  labelIngredients: json['label_ingredients'] as String?,
  avoidFacts:
      (json['avoid_facts'] as List<dynamic>?)
          ?.map(
            (e) =>
                FoodDetailNutrientFactDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  calories:
      json['calories'] == null
          ? null
          : FoodDetailNutrientFactDTO.fromJson(
            json['calories'] as Map<String, dynamic>,
          ),
  servingInfo:
      json['serving_info'] == null
          ? null
          : FoodDetailServingInfoDTO.fromJson(
            json['serving_info'] as Map<String, dynamic>,
          ),
  quickFacts:
      (json['quick_facts'] as List<dynamic>?)
          ?.map(
            (e) =>
                FoodDetailNutrientFactDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  nutrients:
      (json['nutrients'] as List<dynamic>?)
          ?.map(
            (e) =>
                FoodDetailNutrientFactDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  lastUpdated: json['last_updated'] as String?,
  labelWarning: json['label_warnings'] as String?,
  labelDirection: json['label_directions'] as String?,
  certifications:
      (json['certifications'] as List<dynamic>?)
          ?.map((e) => CertificationsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  ingredientPreferenceIndicator:
      json['ingredient_preference_labels'] == null
          ? null
          : IngredientPreferenceIndicatorDTO.fromJson(
            json['ingredient_preference_labels'] as Map<String, dynamic>,
          ),
  retailers:
      (json['retailers'] as List<dynamic>?)
          ?.map((e) => RetailerDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$FoodDetailResponseDTOToJson(
  _FoodDetailResponseDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'product_id': instance.productId,
  'product_size': instance.productSize,
  'upcs': instance.upcs,
  'name': instance.name,
  'brand_name': instance.brandName,
  'category_display_name': instance.categoryDisplayName,
  'category_link_name': instance.categoryLinkName,
  'category_groups': instance.categoryGroups,
  'web_url': instance.webUrl,
  'discontinued': instance.discontinued,
  'scores': instance.scores,
  'page_details': instance.findings,
  'added_sugar_ingredients': instance.addedSugarIngredients,
  'image_url': instance.imageUrl,
  'asin': instance.asin,
  'label_ingredients': instance.labelIngredients,
  'avoid_facts': instance.avoidFacts,
  'calories': instance.calories,
  'serving_info': instance.servingInfo,
  'quick_facts': instance.quickFacts,
  'nutrients': instance.nutrients,
  'last_updated': instance.lastUpdated,
  'label_warnings': instance.labelWarning,
  'label_directions': instance.labelDirection,
  'certifications': instance.certifications,
  'ingredient_preference_labels': instance.ingredientPreferenceIndicator,
  'retailers': instance.retailers,
};
