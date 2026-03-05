// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_attribute_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductImageAttributeRequestModel _$ProductImageAttributeRequestModelFromJson(
  Map<String, dynamic> json,
) => _ProductImageAttributeRequestModel(
  role:
      json['crowd_sourced_product_submission[product_images_attributes][0][role]']
          as String,
  uuid:
      json['crowd_sourced_product_submission[product_images_attributes][0][uuid]']
          as String,
  upc:
      json['crowd_sourced_product_submission[product_images_attributes][0][upc]']
          as String,
  productType:
      json['crowd_sourced_product_submission[product_images_attributes][0][product_type]']
          as String,
  id:
      json['crowd_sourced_product_submission[product_images_attributes][0][id]']
          as String?,
  label:
      json['crowd_sourced_product_submission[product_images_attributes][0][label]']
          as String?,
  filename:
      json['crowd_sourced_product_submission[product_images_attributes][0][filename]']
          as String?,
  name:
      json['crowd_sourced_product_submission[product_images_attributes][0][name]']
          as String?,
  productName:
      json['crowd_sourced_product_submission[product_images_attributes][0][product_name]']
          as String?,
  destroy:
      json['crowd_sourced_product_submission[product_images_attributes][0][_destroy]']
          as bool? ??
      false,
);

Map<String, dynamic> _$ProductImageAttributeRequestModelToJson(
  _ProductImageAttributeRequestModel instance,
) => <String, dynamic>{
  'crowd_sourced_product_submission[product_images_attributes][0][role]':
      instance.role,
  'crowd_sourced_product_submission[product_images_attributes][0][uuid]':
      instance.uuid,
  'crowd_sourced_product_submission[product_images_attributes][0][upc]':
      instance.upc,
  'crowd_sourced_product_submission[product_images_attributes][0][product_type]':
      instance.productType,
  if (instance.id case final value?)
    'crowd_sourced_product_submission[product_images_attributes][0][id]': value,
  if (instance.label case final value?)
    'crowd_sourced_product_submission[product_images_attributes][0][label]':
        value,
  if (instance.filename case final value?)
    'crowd_sourced_product_submission[product_images_attributes][0][filename]':
        value,
  if (instance.name case final value?)
    'crowd_sourced_product_submission[product_images_attributes][0][name]':
        value,
  if (instance.productName case final value?)
    'crowd_sourced_product_submission[product_images_attributes][0][product_name]':
        value,
  'crowd_sourced_product_submission[product_images_attributes][0][_destroy]':
      instance.destroy,
};
