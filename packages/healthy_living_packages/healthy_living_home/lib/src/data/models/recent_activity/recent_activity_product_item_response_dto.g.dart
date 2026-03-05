// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_activity_product_item_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecentActivityProductItemResponseDTO
_$RecentActivityProductItemResponseDTOFromJson(Map<String, dynamic> json) =>
    _RecentActivityProductItemResponseDTO(
      id: (json['id'] as num?)?.toInt(),
      position: (json['position'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      productType: json['product_type'] as String?,
      product:
          json['product'] == null
              ? null
              : RecentActivityProductResponseDTO.fromJson(
                json['product'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$RecentActivityProductItemResponseDTOToJson(
  _RecentActivityProductItemResponseDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'position': instance.position,
  'product_id': instance.productId,
  'product_type': instance.productType,
  'product': instance.product,
};
