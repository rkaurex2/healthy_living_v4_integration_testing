// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_items_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListItemsDTO _$UserListItemsDTOFromJson(Map<String, dynamic> json) =>
    _UserListItemsDTO(
      id: (json['id'] as num?)?.toInt(),
      position: (json['position'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      productType: json['product_type'] as String?,
      product:
          json['product'] == null
              ? null
              : UserListProductDTO.fromJson(
                json['product'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$UserListItemsDTOToJson(_UserListItemsDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
      'product_id': instance.productId,
      'product_type': instance.productType,
      'product': instance.product,
    };
