import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_images_attributes_request_model.freezed.dart';
part 'product_images_attributes_request_model.g.dart';


@freezed
sealed class ProductImagesAttributesRequestModel with _$ProductImagesAttributesRequestModel {
  const factory ProductImagesAttributesRequestModel({
    int? id,
    @JsonKey(name: '_destroy') bool? destroy,
  }) = _ProductImagesAttributesRequestModel;

  factory ProductImagesAttributesRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesAttributesRequestModelFromJson(json);
}