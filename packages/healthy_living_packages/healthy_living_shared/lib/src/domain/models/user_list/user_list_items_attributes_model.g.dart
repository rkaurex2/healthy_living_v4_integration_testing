// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_items_attributes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListItemsAttributesModel _$UserListItemsAttributesModelFromJson(
  Map<String, dynamic> json,
) => _UserListItemsAttributesModel(
  productType: json['product_type'] as String,
  productId: (json['product_id'] as num).toInt(),
  destroy: json['_destroy'] as bool? ?? false,
);

Map<String, dynamic> _$UserListItemsAttributesModelToJson(
  _UserListItemsAttributesModel instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'product_id': instance.productId,
  '_destroy': instance.destroy,
};
