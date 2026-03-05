// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_attribute_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IngredientAttributeRequestModel _$IngredientAttributeRequestModelFromJson(
  Map<String, dynamic> json,
) => _IngredientAttributeRequestModel(
  name:
      json['crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]']
          as String,
  position:
      (json['crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]']
              as num)
          .toInt(),
  id:
      json['crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]']
          as String?,
  amountValue:
      json['crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]']
          as String?,
  amountUnit:
      json['crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]']
          as String?,
  notes:
      json['crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]']
          as String?,
  destroy:
      json['crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]']
          as bool? ??
      false,
);

Map<String, dynamic> _$IngredientAttributeRequestModelToJson(
  _IngredientAttributeRequestModel instance,
) => <String, dynamic>{
  'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]':
      instance.name,
  'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]':
      instance.position,
  if (instance.id case final value?)
    'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]':
        value,
  if (instance.amountValue case final value?)
    'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]':
        value,
  if (instance.amountUnit case final value?)
    'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]':
        value,
  if (instance.notes case final value?)
    'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]':
        value,
  'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]':
      instance.destroy,
};
