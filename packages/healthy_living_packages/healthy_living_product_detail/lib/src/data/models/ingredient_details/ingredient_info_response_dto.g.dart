// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IngredientInfoResponseDTO _$IngredientInfoResponseDTOFromJson(
  Map<String, dynamic> json,
) => _IngredientInfoResponseDTO(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  countCleaners: (json['count_cleaners'] as num?)?.toInt(),
  countCosmetics: (json['count_cosmetics'] as num?)?.toInt(),
  gradeWorst: json['grade_worst'] as String?,
  gradeBest: json['grade_best'] as String?,
  webscore: (json['webscore'] as num?)?.toInt(),
  webscoreMin: (json['webscore_min'] as num?)?.toInt(),
  skinDeepWebIngredientUrl: json['skin_deep_web_ingredient_url'] as String?,
  cleanerWebIngredientUrl: json['cleaner_web_ingredient_url'] as String?,
);

Map<String, dynamic> _$IngredientInfoResponseDTOToJson(
  _IngredientInfoResponseDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'count_cleaners': instance.countCleaners,
  'count_cosmetics': instance.countCosmetics,
  'grade_worst': instance.gradeWorst,
  'grade_best': instance.gradeBest,
  'webscore': instance.webscore,
  'webscore_min': instance.webscoreMin,
  'skin_deep_web_ingredient_url': instance.skinDeepWebIngredientUrl,
  'cleaner_web_ingredient_url': instance.cleanerWebIngredientUrl,
};
