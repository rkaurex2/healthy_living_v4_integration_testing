// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_scores_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListScoresDTO _$UserListScoresDTOFromJson(Map<String, dynamic> json) =>
    _UserListScoresDTO(
      overall: (json['overall'] as num?)?.toDouble(),
      sortOverall: (json['sort_overall'] as num?)?.toInt(),
      nutrition: (json['nutrition'] as num?)?.toInt(),
      ingredient: (json['ingredient'] as num?)?.toDouble(),
      processing: (json['processing'] as num?)?.toDouble(),
      percentNutrition: (json['percent_nutrition'] as num?)?.toInt(),
      percentIngredient: (json['percent_ingredient'] as num?)?.toInt(),
      percentProcessing: (json['percent_processing'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserListScoresDTOToJson(_UserListScoresDTO instance) =>
    <String, dynamic>{
      'overall': instance.overall,
      'sort_overall': instance.sortOverall,
      'nutrition': instance.nutrition,
      'ingredient': instance.ingredient,
      'processing': instance.processing,
      'percent_nutrition': instance.percentNutrition,
      'percent_ingredient': instance.percentIngredient,
      'percent_processing': instance.percentProcessing,
    };
