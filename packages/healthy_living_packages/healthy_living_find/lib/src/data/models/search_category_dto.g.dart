// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchCategoryDTO _$SearchCategoryDTOFromJson(
  Map<String, dynamic> json,
) => _SearchCategoryDTO(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  foodEssentialsAisleId: (json['food_essentials_aisle_id'] as num?)?.toInt(),
  foodEssentialsShelfId: (json['food_essentials_shelf_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$SearchCategoryDTOToJson(_SearchCategoryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'food_essentials_aisle_id': instance.foodEssentialsAisleId,
      'food_essentials_shelf_id': instance.foodEssentialsShelfId,
    };
