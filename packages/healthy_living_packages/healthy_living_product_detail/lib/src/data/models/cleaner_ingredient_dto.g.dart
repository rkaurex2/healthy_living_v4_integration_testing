// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cleaner_ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CleanerIngredientDTO _$CleanerIngredientDTOFromJson(
  Map<String, dynamic> json,
) => _CleanerIngredientDTO(
  id: (json['id'] as num).toInt(),
  chemicalName: json['chemical_name'] as String?,
  grade: json['grade'] as String?,
  score: (json['score'] as num?)?.toDouble(),
  substances:
      (json['substances'] as List<dynamic>?)
          ?.map((e) => SubstanceDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CleanerIngredientDTOToJson(
  _CleanerIngredientDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'chemical_name': instance.chemicalName,
  'grade': instance.grade,
  'score': instance.score,
  'substances': instance.substances,
};
