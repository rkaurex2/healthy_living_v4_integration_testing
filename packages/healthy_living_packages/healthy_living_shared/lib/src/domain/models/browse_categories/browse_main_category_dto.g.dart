// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_main_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrowseMainCategoryDTO _$BrowseMainCategoryDTOFromJson(
  Map<String, dynamic> json,
) => _BrowseMainCategoryDTO(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  productCount: (json['product_count'] as num?)?.toInt(),
  verifiedProductCount: (json['verified_product_count'] as num?)?.toInt(),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => BrowseCategoryDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$BrowseMainCategoryDTOToJson(
  _BrowseMainCategoryDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'product_count': instance.productCount,
  'verified_product_count': instance.verifiedProductCount,
  'categories': instance.categories,
};
