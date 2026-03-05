// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cleaner_details_attribute_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CleanerDetailsAttributeRequestModel
_$CleanerDetailsAttributeRequestModelFromJson(
  Map<String, dynamic> json,
) => _CleanerDetailsAttributeRequestModel(
  id:
      json['crowd_sourced_product_submission[cleaner_details_attributes][id]']
          as String?,
  directionsText:
      json['crowd_sourced_product_submission[cleaner_details_attributes][directions_text]']
          as String?,
  warningsText:
      json['crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]']
          as String?,
  usageInstructions:
      json['crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]']
          as String?,
  destroy:
      json['crowd_sourced_product_submission[cleaner_details_attributes][_destroy]']
          as bool? ??
      false,
);

Map<String, dynamic> _$CleanerDetailsAttributeRequestModelToJson(
  _CleanerDetailsAttributeRequestModel instance,
) => <String, dynamic>{
  if (instance.id case final value?)
    'crowd_sourced_product_submission[cleaner_details_attributes][id]': value,
  if (instance.directionsText case final value?)
    'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]':
        value,
  if (instance.warningsText case final value?)
    'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]':
        value,
  if (instance.usageInstructions case final value?)
    'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]':
        value,
  'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]':
      instance.destroy,
};
