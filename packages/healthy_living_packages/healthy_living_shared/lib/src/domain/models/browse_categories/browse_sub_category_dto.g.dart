// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_sub_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrowseSubCategoryDTO _$BrowseSubCategoryDTOFromJson(
  Map<String, dynamic> json,
) => _BrowseSubCategoryDTO(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  productCount: (json['product_count'] as num?)?.toInt(),
  verifiedProductCount: (json['verified_product_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$BrowseSubCategoryDTOToJson(
  _BrowseSubCategoryDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'product_count': instance.productCount,
  'verified_product_count': instance.verifiedProductCount,
};
