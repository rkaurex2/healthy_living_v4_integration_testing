// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cleaner_detail_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CleanerDetailResponseDTO _$CleanerDetailResponseDTOFromJson(
  Map<String, dynamic> json,
) => _CleanerDetailResponseDTO(
  name: json['name'] as String?,
  productId: (json['id'] as num?)?.toInt(),
  brandName: json['brand_name'] as String?,
  menuItems:
      (json['project_menu_items'] as List<dynamic>?)
          ?.map((e) => MenuItemsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  currentFormulation:
      json['current_formulation'] == null
          ? null
          : CleanerFormulationDTO.fromJson(
            json['current_formulation'] as Map<String, dynamic>,
          ),
  grade: json['grade'] as String?,
  imageUrl: json['medium_image_url'] as String?,
  asin: json['asin'] as String?,
  retailers:
      (json['retailers'] as List<dynamic>?)
          ?.map((e) => RetailerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  lastUpdated: json['last_updated'] as String?,
  certifications:
      (json['green_certs'] as List<dynamic>?)
          ?.map((e) => CertificationsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  animalCertifications:
      (json['does_not_test_on_animals_certs'] as List<dynamic>?)
          ?.map((e) => CertificationsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  productLabels:
      (json['product_labels'] as List<dynamic>?)
          ?.map((e) => ProductLabelsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  ingredientPreferenceIndicator:
      json['ingredient_preference_labels'] == null
          ? null
          : IngredientPreferenceIndicatorDTO.fromJson(
            json['ingredient_preference_labels'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$CleanerDetailResponseDTOToJson(
  _CleanerDetailResponseDTO instance,
) => <String, dynamic>{
  'name': instance.name,
  'id': instance.productId,
  'brand_name': instance.brandName,
  'project_menu_items': instance.menuItems,
  'current_formulation': instance.currentFormulation,
  'grade': instance.grade,
  'medium_image_url': instance.imageUrl,
  'asin': instance.asin,
  'retailers': instance.retailers,
  'last_updated': instance.lastUpdated,
  'green_certs': instance.certifications,
  'does_not_test_on_animals_certs': instance.animalCertifications,
  'product_labels': instance.productLabels,
  'ingredient_preference_labels': instance.ingredientPreferenceIndicator,
};
