// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_category_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchCategoryItemDTO _$SearchCategoryItemDTOFromJson(
  Map<String, dynamic> json,
) => _SearchCategoryItemDTO(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  subtype: json['subtype'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  productCount: (json['product_count'] as num?)?.toInt(),
  imageUrl: json['image_url'] as String?,
  productType: json['product_type'] as String?,
  highlights:
      json['highlights'] == null
          ? null
          : SearchHighlightsDTO.fromJson(
            json['highlights'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$SearchCategoryItemDTOToJson(
  _SearchCategoryItemDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'subtype': instance.subtype,
  'name': instance.name,
  'description': instance.description,
  'product_count': instance.productCount,
  'image_url': instance.imageUrl,
  'product_type': instance.productType,
  'highlights': instance.highlights,
};
