import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_nutrient_fact_model.freezed.dart';

@freezed
sealed class FoodDetailNutrientFactModel with _$FoodDetailNutrientFactModel {
  const factory FoodDetailNutrientFactModel({
    @JsonKey(name: 'nutrient_name') String? nutrientName,
    @JsonKey(name: 'nutrient_value') dynamic nutrientValue,
    @JsonKey(name: 'nutrient_uom') String? nutrientUom,
    @JsonKey(name: 'nutrient_dvp') dynamic nutrientDvp,
    @JsonKey(name: 'nutrient_symbol') String? nutrientSymbol,
  }) = _FoodDetailNutrientFactModel;
}