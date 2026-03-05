import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_scores_dto.freezed.dart';
part 'food_detail_scores_dto.g.dart';

@freezed
sealed class FoodDetailScoresDTO with _$FoodDetailScoresDTO {
  const factory FoodDetailScoresDTO({
    double? overall,
    @JsonKey(name: 'ingredient') double? ingredientScore,
    @JsonKey(name: 'processing') double? processingScore,
    @JsonKey(name: 'nutrition') double? nutritionScore,
    @JsonKey(name: 'nutrition_hazard') String? nutritionHazard,
    @JsonKey(name: 'ingredient_hazard') String? ingredientHazard,
    @JsonKey(name: 'processing_hazard') String? processingHazard,
  }) = _FoodDetailScoresDTO;

  factory FoodDetailScoresDTO.fromJson(Map<String, dynamic> json) =>
      _$FoodDetailScoresDTOFromJson(json);
}