// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_universal_categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrowseUniversalCategoriesDTO _$BrowseUniversalCategoriesDTOFromJson(
  Map<String, dynamic> json,
) => _BrowseUniversalCategoriesDTO(
  personalCare:
      (json['personal_care'] as List<dynamic>?)
          ?.map(
            (e) => BrowseMainCategoryDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  cleaners:
      (json['cleaners'] as List<dynamic>?)
          ?.map(
            (e) => BrowseMainCategoryDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  food:
      (json['food'] as List<dynamic>?)
          ?.map(
            (e) => BrowseMainCategoryDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$BrowseUniversalCategoriesDTOToJson(
  _BrowseUniversalCategoriesDTO instance,
) => <String, dynamic>{
  'personal_care': instance.personalCare,
  'cleaners': instance.cleaners,
  'food': instance.food,
};
