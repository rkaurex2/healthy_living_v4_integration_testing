// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cleaner_formulation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CleanerFormulationDTO _$CleanerFormulationDTOFromJson(
  Map<String, dynamic> json,
) => _CleanerFormulationDTO(
  disclosureScore: json['disclosure_score_in_words'] as String?,
  scores:
      json['scores'] == null
          ? null
          : CleanerDetailsScoresDTO.fromJson(
            json['scores'] as Map<String, dynamic>,
          ),
  ingredients:
      (json['ingredients'] as List<dynamic>?)
          ?.map((e) => CleanerIngredientDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CleanerFormulationDTOToJson(
  _CleanerFormulationDTO instance,
) => <String, dynamic>{
  'disclosure_score_in_words': instance.disclosureScore,
  'scores': instance.scores,
  'ingredients': instance.ingredients,
};
