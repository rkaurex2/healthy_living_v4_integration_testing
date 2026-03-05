import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_attribute_request_model.freezed.dart';
part 'product_image_attribute_request_model.g.dart';

@freezed
sealed class ProductImageAttributeRequestModel with _$ProductImageAttributeRequestModel {
  const factory ProductImageAttributeRequestModel({
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][role]',
    )
    required String role,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][uuid]',
    )
    required String uuid,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][upc]',
    )
    required String upc,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][product_type]',
    )
    required String productType,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][id]',
      includeIfNull: false,
    )
    String? id,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][label]',
      includeIfNull: false,
    )
    String? label,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][filename]',
      includeIfNull: false,
    )
    String? filename,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][name]',
      includeIfNull: false,
    )
    String? name,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][product_name]',
      includeIfNull: false,
    )
    String? productName,
    @JsonKey(
      name:
      'crowd_sourced_product_submission[product_images_attributes][0][_destroy]',
    )
    @Default(false)
    bool destroy,
  }) = _ProductImageAttributeRequestModel;

  factory ProductImageAttributeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImageAttributeRequestModelFromJson(json);
}