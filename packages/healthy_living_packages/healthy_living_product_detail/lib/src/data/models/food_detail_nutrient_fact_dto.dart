import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_nutrient_fact_dto.freezed.dart';

part 'food_detail_nutrient_fact_dto.g.dart';

@freezed
sealed class FoodDetailNutrientFactDTO with _$FoodDetailNutrientFactDTO {
  const factory FoodDetailNutrientFactDTO({
    @JsonKey(name: 'nutrient_name') String? nutrientName,
    @JsonKey(name: 'nutrient_value') dynamic nutrientValue,
    @JsonKey(name: 'nutrient_uom') String? nutrientUom,
    @JsonKey(name: 'nutrient_dvp') dynamic nutrientDvp,
    @JsonKey(name: 'nutrient_symbol') String? nutrientSymbol,
  }) = _FoodDetailNutrientFactDTO;

  factory FoodDetailNutrientFactDTO.fromJson(Map<String, dynamic> json) =>
      _$FoodDetailNutrientFactDTOFromJson(json);
}
