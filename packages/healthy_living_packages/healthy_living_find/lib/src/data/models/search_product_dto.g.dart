// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchProductDTO _$SearchProductDTOFromJson(Map<String, dynamic> json) =>
    _SearchProductDTO(
      id: (json['id'] as num?)?.toInt(),
      skinDeepId: (json['skindeep_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      subtype: json['subtype'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      brandName: json['brand_name'] as String?,
      categoryName: json['category_name'],
      categoryGroupName: json['category_group_name'],
      subCategoryName: json['sub_category_name'],
      score: json['score'],
      numericWebscore: json['numeric_webscore'] as num?,
      ewgVerified: json['ewg_verified'] as bool?,
      imageUrl: json['image_url'] as String?,
      mobileImageUrl: json['mobile_image_url'] as String?,
      highlights:
          json['highlights'] == null
              ? null
              : SearchHighlightsDTO.fromJson(
                json['highlights'] as Map<String, dynamic>,
              ),
      ingredientPreferenceIndicator:
          json['ingredient_preference_labels'] == null
              ? null
              : IngredientPreferenceIndicatorDTO.fromJson(
                json['ingredient_preference_labels'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$SearchProductDTOToJson(_SearchProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skindeep_id': instance.skinDeepId,
      'type': instance.type,
      'subtype': instance.subtype,
      'name': instance.name,
      'description': instance.description,
      'brand_name': instance.brandName,
      'category_name': instance.categoryName,
      'category_group_name': instance.categoryGroupName,
      'sub_category_name': instance.subCategoryName,
      'score': instance.score,
      'numeric_webscore': instance.numericWebscore,
      'ewg_verified': instance.ewgVerified,
      'image_url': instance.imageUrl,
      'mobile_image_url': instance.mobileImageUrl,
      'highlights': instance.highlights,
      'ingredient_preference_labels': instance.ingredientPreferenceIndicator,
    };
