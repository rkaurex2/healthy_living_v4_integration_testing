// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_submission_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductSubmissionRequestModel _$ProductSubmissionRequestModelFromJson(
  Map<String, dynamic> json,
) => _ProductSubmissionRequestModel(
  uuid: json['uuid'] as String,
  upc: json['crowd_sourced_product_submission[upc]'] as String,
  productType: json['crowd_sourced_product_submission[product_type]'] as String,
  crowdSourcedUUID: json['crowd_sourced_product_submission[uuid]'] as String,
  pictureRole:
      json['crowd_sourced_product_submission[product_images_attributes][0][role]']
          as String,
  picture: json['picture'] as String,
  name: json['name'] as String?,
  description: json['description'] as String?,
  triggerOcr: json['trigger_ocr'] as bool? ?? false,
);

Map<String, dynamic> _$ProductSubmissionRequestModelToJson(
  _ProductSubmissionRequestModel instance,
) => <String, dynamic>{
  'uuid': instance.uuid,
  'crowd_sourced_product_submission[upc]': instance.upc,
  'crowd_sourced_product_submission[product_type]': instance.productType,
  'crowd_sourced_product_submission[uuid]': instance.crowdSourcedUUID,
  'crowd_sourced_product_submission[product_images_attributes][0][role]':
      instance.pictureRole,
  'picture': instance.picture,
  if (instance.name case final value?) 'name': value,
  if (instance.description case final value?) 'description': value,
  'trigger_ocr': instance.triggerOcr,
};
