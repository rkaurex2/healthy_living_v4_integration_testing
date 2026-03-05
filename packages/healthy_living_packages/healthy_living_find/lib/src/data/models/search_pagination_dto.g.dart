// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchPaginationDTO _$SearchPaginationDTOFromJson(Map<String, dynamic> json) =>
    _SearchPaginationDTO(
      products:
          json['products'] == null
              ? null
              : SearchPaginationItemDTO.fromJson(
                json['products'] as Map<String, dynamic>,
              ),
      ingredients:
          json['ingredients'] == null
              ? null
              : SearchPaginationItemDTO.fromJson(
                json['ingredients'] as Map<String, dynamic>,
              ),
      categories:
          json['categories'] == null
              ? null
              : SearchPaginationItemDTO.fromJson(
                json['categories'] as Map<String, dynamic>,
              ),
      brands:
          json['brands'] == null
              ? null
              : SearchPaginationItemDTO.fromJson(
                json['brands'] as Map<String, dynamic>,
              ),
      lists:
          json['lists'] == null
              ? null
              : SearchPaginationItemDTO.fromJson(
                json['lists'] as Map<String, dynamic>,
              ),
      totalEntries: (json['total_entries'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchPaginationDTOToJson(
  _SearchPaginationDTO instance,
) => <String, dynamic>{
  'products': instance.products,
  'ingredients': instance.ingredients,
  'categories': instance.categories,
  'brands': instance.brands,
  'lists': instance.lists,
  'total_entries': instance.totalEntries,
};
