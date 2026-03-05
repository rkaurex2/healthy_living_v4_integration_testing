// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cleaner_product_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchCleanerProductResponseDTO _$SearchCleanerProductResponseDTOFromJson(
  Map<String, dynamic> json,
) => _SearchCleanerProductResponseDTO(
  productType: json['product_type'] as String?,
  id: (json['id'] as num?)?.toInt(),
  toParam: json['to_param'] as String?,
  name: json['name'] as String?,
  upcs: (json['upcs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  brandLineId: (json['brand_line_id'] as num?)?.toInt(),
  brandName: json['brand_name'] as String?,
  grade: json['grade'] as String?,
  searchGrade: json['search_grade'] as String?,
  discontinued: json['discontinued'] as bool?,
  browseImageUrl: json['browse_image_url'] as String?,
  mediumImageUrl: json['medium_image_url'] as String?,
  numberOfFormulations: (json['number_of_formulations'] as num?)?.toInt(),
  greenCertified: json['green_certified'] as bool?,
  business:
      json['business'] == null
          ? null
          : SearchBusinessResponseDTO.fromJson(
            json['business'] as Map<String, dynamic>,
          ),
  ingredientPreferenceIndicator:
      json['ingredient_preferences'] == null
          ? null
          : IngredientPreferenceIndicatorDTO.fromJson(
            json['ingredient_preferences'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$SearchCleanerProductResponseDTOToJson(
  _SearchCleanerProductResponseDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'id': instance.id,
  'to_param': instance.toParam,
  'name': instance.name,
  'upcs': instance.upcs,
  'brand_line_id': instance.brandLineId,
  'brand_name': instance.brandName,
  'grade': instance.grade,
  'search_grade': instance.searchGrade,
  'discontinued': instance.discontinued,
  'browse_image_url': instance.browseImageUrl,
  'medium_image_url': instance.mediumImageUrl,
  'number_of_formulations': instance.numberOfFormulations,
  'green_certified': instance.greenCertified,
  'business': instance.business,
  'ingredient_preferences': instance.ingredientPreferenceIndicator,
};
