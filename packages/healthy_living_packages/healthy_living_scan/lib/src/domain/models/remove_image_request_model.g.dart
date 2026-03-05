// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_image_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoveImageRequestModel _$RemoveImageRequestModelFromJson(
  Map<String, dynamic> json,
) => _RemoveImageRequestModel(
  uuid: json['uuid'] as String,
  productImagesAttributes:
      (json['product_images_attributes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          k,
          ProductImagesAttributesRequestModel.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      ),
);

Map<String, dynamic> _$RemoveImageRequestModelToJson(
  _RemoveImageRequestModel instance,
) => <String, dynamic>{
  'uuid': instance.uuid,
  'product_images_attributes': instance.productImagesAttributes,
};
