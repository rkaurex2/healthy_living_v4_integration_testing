
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_attribute_model.freezed.dart';
part 'product_image_attribute_model.g.dart';
@freezed
sealed class ProductImageAttributeModel with _$ProductImageAttributeModel {
  const factory ProductImageAttributeModel({
    @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][picture]')
    required String picture,
    @JsonKey(name: 'crowd_sourced_product_submission[product_images_attributes][0][role]')
    required String role,
  }) = _ProductImageAttributeModel;

  factory ProductImageAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImageAttributeModelFromJson(json);
}