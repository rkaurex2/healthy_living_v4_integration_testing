// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_detail_scores_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodDetailScoresDTO _$FoodDetailScoresDTOFromJson(Map<String, dynamic> json) =>
    _FoodDetailScoresDTO(
      overall: (json['overall'] as num?)?.toDouble(),
      ingredientScore: (json['ingredient'] as num?)?.toDouble(),
      processingScore: (json['processing'] as num?)?.toDouble(),
      nutritionScore: (json['nutrition'] as num?)?.toDouble(),
      nutritionHazard: json['nutrition_hazard'] as String?,
      ingredientHazard: json['ingredient_hazard'] as String?,
      processingHazard: json['processing_hazard'] as String?,
    );

Map<String, dynamic> _$FoodDetailScoresDTOToJson(
  _FoodDetailScoresDTO instance,
) => <String, dynamic>{
  'overall': instance.overall,
  'ingredient': instance.ingredientScore,
  'processing': instance.processingScore,
  'nutrition': instance.nutritionScore,
  'nutrition_hazard': instance.nutritionHazard,
  'ingredient_hazard': instance.ingredientHazard,
  'processing_hazard': instance.processingHazard,
};
