// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrowseCategoryDTO _$BrowseCategoryDTOFromJson(Map<String, dynamic> json) =>
    _BrowseCategoryDTO(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      productCount: (json['product_count'] as num?)?.toInt(),
      verifiedProductCount: (json['verified_product_count'] as num?)?.toInt(),
      subCategories:
          (json['sub_categories'] as List<dynamic>?)
              ?.map(
                (e) => BrowseSubCategoryDTO.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$BrowseCategoryDTOToJson(_BrowseCategoryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_count': instance.productCount,
      'verified_product_count': instance.verifiedProductCount,
      'sub_categories': instance.subCategories,
    };
