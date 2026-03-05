import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_submission_request_model.freezed.dart';
part 'product_submission_request_model.g.dart';

@freezed
sealed class ProductSubmissionRequestModel
    with _$ProductSubmissionRequestModel {
  const factory ProductSubmissionRequestModel({
    @JsonKey(name: 'uuid', includeIfNull: false) required String uuid,
    @JsonKey(name: 'crowd_sourced_product_submission[upc]') required String upc,
    @JsonKey(name: 'crowd_sourced_product_submission[product_type]')
    required String productType,
    @JsonKey(name: 'crowd_sourced_product_submission[uuid]')
    required String crowdSourcedUUID,
    @JsonKey(
      name:
          'crowd_sourced_product_submission[product_images_attributes][0][role]',
    )
    required String pictureRole,
    required String picture,
    @JsonKey(name: 'name', includeIfNull: false) String? name,
    @JsonKey(name: 'description', includeIfNull: false) String? description,
    @JsonKey(name: 'trigger_ocr') @Default(false) bool triggerOcr,
  }) = _ProductSubmissionRequestModel;

  factory ProductSubmissionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSubmissionRequestModelFromJson(json);
}
