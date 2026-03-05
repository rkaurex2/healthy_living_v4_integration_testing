// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HistoryItemDTO _$HistoryItemDTOFromJson(Map<String, dynamic> json) =>
    _HistoryItemDTO(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      productType: json['product_type'] as String?,
      listType: json['list_type'] as String?,
      product:
          json['product'] == null
              ? null
              : HistoryItemProductDTO.fromJson(
                json['product'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$HistoryItemDTOToJson(_HistoryItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_type': instance.productType,
      'list_type': instance.listType,
      'product': instance.product,
    };
