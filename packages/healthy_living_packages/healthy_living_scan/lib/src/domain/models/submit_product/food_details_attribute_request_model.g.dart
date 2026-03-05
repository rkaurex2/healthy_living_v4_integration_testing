// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_details_attribute_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodDetailsAttributeRequestModel _$FoodDetailsAttributeRequestModelFromJson(
  Map<String, dynamic> json,
) => _FoodDetailsAttributeRequestModel(
  id:
      json['crowd_sourced_product_submission[food_details_attributes][id]']
          as String?,
  nutritionPanelNotes:
      json['crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]']
          as String?,
  nutritionImageIds:
      json['crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]']
          as String?,
  destroy:
      json['crowd_sourced_product_submission[food_details_attributes][_destroy]']
          as bool? ??
      false,
);

Map<String, dynamic> _$FoodDetailsAttributeRequestModelToJson(
  _FoodDetailsAttributeRequestModel instance,
) => <String, dynamic>{
  if (instance.id case final value?)
    'crowd_sourced_product_submission[food_details_attributes][id]': value,
  if (instance.nutritionPanelNotes case final value?)
    'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]':
        value,
  if (instance.nutritionImageIds case final value?)
    'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]':
        value,
  'crowd_sourced_product_submission[food_details_attributes][_destroy]':
      instance.destroy,
};
