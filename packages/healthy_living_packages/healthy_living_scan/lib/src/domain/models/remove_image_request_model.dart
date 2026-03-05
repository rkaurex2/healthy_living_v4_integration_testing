import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_scan/src/domain/models/product_images_attributes_request_model.dart';

part 'remove_image_request_model.freezed.dart';
part 'remove_image_request_model.g.dart';

@freezed
sealed class RemoveImageRequestModel with _$RemoveImageRequestModel {
  const factory RemoveImageRequestModel({
    required String uuid,
    @JsonKey(name: 'product_images_attributes')
    required Map<String, ProductImagesAttributesRequestModel> productImagesAttributes,
  }) = _RemoveImageRequestModel;

  factory RemoveImageRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RemoveImageRequestModelFromJson(json);
}


