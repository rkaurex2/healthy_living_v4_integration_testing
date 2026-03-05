// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_viewed_product_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecentlyViewedProductRequestDTO _$RecentlyViewedProductRequestDTOFromJson(
  Map<String, dynamic> json,
) => _RecentlyViewedProductRequestDTO(
  productId: (json['product_id'] as num).toInt(),
  productType: json['product_type'] as String,
);

Map<String, dynamic> _$RecentlyViewedProductRequestDTOToJson(
  _RecentlyViewedProductRequestDTO instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'product_type': instance.productType,
};
