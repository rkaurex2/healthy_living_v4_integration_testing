import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/nutrient_detail_dto.dart';

part 'nutrients_dto.freezed.dart';
part 'nutrients_dto.g.dart';

@freezed
sealed class NutrientsDTO with _$NutrientsDTO {
  const factory NutrientsDTO({
    @JsonKey(name: 'has_added_sugar') bool? hasAddedSugar,
    @JsonKey(name: 'servings_per_container') double? servingsPerContainer,
    @JsonKey(name: 'serving_size') String? servingSize,
    @JsonKey(name: 'serving_uom') String? servingUom,
    @JsonKey(name: 'serving_size_2') String? servingSizePartTwo,
    @JsonKey(name: 'serving_uom_2') String? servingUomPartTwo,
    @JsonKey(name: 'serve_description') String? serveDescription,
    NutrientDetailDTO? calcium,
    NutrientDetailDTO? calories,
    @JsonKey(name: 'calories_from_fat') NutrientDetailDTO? caloriesFromFat,
    NutrientDetailDTO? cholesterol,
    @JsonKey(name: 'dietary_fiber') NutrientDetailDTO? dietaryFiber,
    NutrientDetailDTO? iron,
    NutrientDetailDTO? protein,
    @JsonKey(name: 'saturated_fat') NutrientDetailDTO? saturatedFat,
    NutrientDetailDTO? sodium,
    NutrientDetailDTO? sugars,
    @JsonKey(name: 'total_carbohydrate') NutrientDetailDTO? totalCarbohydrate,
    @JsonKey(name: 'total_fat') NutrientDetailDTO? totalFat,
    @JsonKey(name: 'trans_fat') NutrientDetailDTO? transFat,
    @JsonKey(name: 'vitamin_a') NutrientDetailDTO? vitaminA,
    @JsonKey(name: 'vitamin_c') NutrientDetailDTO? vitaminC,
    @JsonKey(name: 'vitamin_d') NutrientDetailDTO? vitaminD,
    @JsonKey(name: 'vitamin_e') NutrientDetailDTO? vitaminE,
    NutrientDetailDTO? copper,
    @JsonKey(name: 'folic_acid') NutrientDetailDTO? folicAcid,
    NutrientDetailDTO? magnesium,
    NutrientDetailDTO? manganese,
    @JsonKey(name: 'monounsuturated_fat') NutrientDetailDTO? monounsuturatedFat,
    NutrientDetailDTO? niacin,
    @JsonKey(name: 'pantothenic_acid') NutrientDetailDTO? pantothenicAcid,
    NutrientDetailDTO? phosphorus,
    @JsonKey(name: 'polyunsuturated_fat') NutrientDetailDTO? polyunsuturatedFat,
    NutrientDetailDTO? potassium,
    NutrientDetailDTO? riboflavin,
    NutrientDetailDTO? selenium,
    NutrientDetailDTO? thiamin,
    @JsonKey(name: 'vitamin_b12') NutrientDetailDTO? vitaminB12,
    @JsonKey(name: 'vitamin_b6') NutrientDetailDTO? vitaminB6,
    NutrientDetailDTO? zinc,
  }) = _NutrientsDTO;

  factory NutrientsDTO.fromJson(Map<String, dynamic> json) =>
      _$NutrientsDTOFromJson(json);
}