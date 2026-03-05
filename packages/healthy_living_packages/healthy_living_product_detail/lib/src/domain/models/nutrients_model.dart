import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/nutrient_detail_model.dart';

part 'nutrients_model.freezed.dart';

@freezed
sealed class NutrientsModel with _$NutrientsModel {
  const factory NutrientsModel({
    @JsonKey(name: 'has_added_sugar') bool? hasAddedSugar,
    @JsonKey(name: 'servings_per_container') double? servingsPerContainer,
    @JsonKey(name: 'serving_size') String? servingSize,
    @JsonKey(name: 'serving_uom') String? servingUom,
    @JsonKey(name: 'serving_size_2') String? servingSizePartTwo,
    @JsonKey(name: 'serving_uom_2') String? servingUomPartTwo,
    @JsonKey(name: 'serve_description') String? serveDescription,
    NutrientDetailModel? calcium,
    NutrientDetailModel? calories,
    @JsonKey(name: 'calories_from_fat') NutrientDetailModel? caloriesFromFat,
    NutrientDetailModel? cholesterol,
    @JsonKey(name: 'dietary_fiber') NutrientDetailModel? dietaryFiber,
    NutrientDetailModel? iron,
    NutrientDetailModel? protein,
    @JsonKey(name: 'saturated_fat') NutrientDetailModel? saturatedFat,
    NutrientDetailModel? sodium,
    NutrientDetailModel? sugars,
    @JsonKey(name: 'total_carbohydrate') NutrientDetailModel? totalCarbohydrate,
    @JsonKey(name: 'total_fat') NutrientDetailModel? totalFat,
    @JsonKey(name: 'trans_fat') NutrientDetailModel? transFat,
    @JsonKey(name: 'vitamin_a') NutrientDetailModel? vitaminA,
    @JsonKey(name: 'vitamin_c') NutrientDetailModel? vitaminC,
    @JsonKey(name: 'vitamin_d') NutrientDetailModel? vitaminD,
    @JsonKey(name: 'vitamin_e') NutrientDetailModel? vitaminE,
    NutrientDetailModel? copper,
    @JsonKey(name: 'folic_acid') NutrientDetailModel? folicAcid,
    NutrientDetailModel? magnesium,
    NutrientDetailModel? manganese,
    @JsonKey(name: 'monounsuturated_fat') NutrientDetailModel? monounsuturatedFat,
    NutrientDetailModel? niacin,
    @JsonKey(name: 'pantothenic_acid') NutrientDetailModel? pantothenicAcid,
    NutrientDetailModel? phosphorus,
    @JsonKey(name: 'polyunsuturated_fat') NutrientDetailModel? polyunsuturatedFat,
    NutrientDetailModel? potassium,
    NutrientDetailModel? riboflavin,
    NutrientDetailModel? selenium,
    NutrientDetailModel? thiamin,
    @JsonKey(name: 'vitamin_b12') NutrientDetailModel? vitaminB12,
    @JsonKey(name: 'vitamin_b6') NutrientDetailModel? vitaminB6,
    NutrientDetailModel? zinc,
  }) = _NutrientsModel;
}