// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_detail_nutrient_fact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodDetailNutrientFactDTO _$FoodDetailNutrientFactDTOFromJson(
  Map<String, dynamic> json,
) => _FoodDetailNutrientFactDTO(
  nutrientName: json['nutrient_name'] as String?,
  nutrientValue: json['nutrient_value'],
  nutrientUom: json['nutrient_uom'] as String?,
  nutrientDvp: json['nutrient_dvp'],
  nutrientSymbol: json['nutrient_symbol'] as String?,
);

Map<String, dynamic> _$FoodDetailNutrientFactDTOToJson(
  _FoodDetailNutrientFactDTO instance,
) => <String, dynamic>{
  'nutrient_name': instance.nutrientName,
  'nutrient_value': instance.nutrientValue,
  'nutrient_uom': instance.nutrientUom,
  'nutrient_dvp': instance.nutrientDvp,
  'nutrient_symbol': instance.nutrientSymbol,
};
