// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_attribute_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductImageAttributeModel _$ProductImageAttributeModelFromJson(
  Map<String, dynamic> json,
) => _ProductImageAttributeModel(
  picture:
      json['crowd_sourced_product_submission[product_images_attributes][0][picture]']
          as String,
  role:
      json['crowd_sourced_product_submission[product_images_attributes][0][role]']
          as String,
);

Map<String, dynamic> _$ProductImageAttributeModelToJson(
  _ProductImageAttributeModel instance,
) => <String, dynamic>{
  'crowd_sourced_product_submission[product_images_attributes][0][picture]':
      instance.picture,
  'crowd_sourced_product_submission[product_images_attributes][0][role]':
      instance.role,
};
