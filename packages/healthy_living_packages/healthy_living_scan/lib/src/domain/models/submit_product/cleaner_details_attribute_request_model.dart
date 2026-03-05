import 'package:freezed_annotation/freezed_annotation.dart';

part 'cleaner_details_attribute_request_model.freezed.dart';
part 'cleaner_details_attribute_request_model.g.dart';

@freezed
sealed class CleanerDetailsAttributeRequestModel with _$CleanerDetailsAttributeRequestModel {
  const factory CleanerDetailsAttributeRequestModel({
    @JsonKey(
      name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]',
      includeIfNull: false,
    )
    String? id,
    @JsonKey(
      name:
          'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]',
      includeIfNull: false,
    )
    String? directionsText,
    @JsonKey(
      name:
          'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]',
      includeIfNull: false,
    )
    String? warningsText,
    @JsonKey(
      name:
          'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]',
      includeIfNull: false,
    )
    String? usageInstructions,
    @JsonKey(
      name:
          'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]',
    )
    @Default(false)
    bool destroy,
  }) = _CleanerDetailsAttributeRequestModel;

  factory CleanerDetailsAttributeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CleanerDetailsAttributeRequestModelFromJson(json);
}
