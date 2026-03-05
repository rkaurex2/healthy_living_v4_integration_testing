import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_scores_model.freezed.dart';

@freezed
sealed class FoodDetailScoresModel with _$FoodDetailScoresModel {
  const factory FoodDetailScoresModel({
    double? overall,
    @JsonKey(name: 'ingredient') double? ingredientScore,
    @JsonKey(name: 'processing') double? processingScore,
    @JsonKey(name: 'nutrition') double? nutritionScore,
    @JsonKey(name: 'nutrition_hazard') String? nutritionHazard,
    @JsonKey(name: 'ingredient_hazard') String? ingredientHazard,
    @JsonKey(name: 'processing_hazard') String? processingHazard,
  }) = _FoodDetailScoresModel;
}
