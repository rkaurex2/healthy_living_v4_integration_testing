// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provisional_score_ingredients_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProvisionalScoreIngredientsDTO _$ProvisionalScoreIngredientsDTOFromJson(
  Map<String, dynamic> json,
) => _ProvisionalScoreIngredientsDTO(
  parsedSubstances:
      (json['parsed_substances'] as List<dynamic>?)
          ?.map((e) => ParsedSubstanceDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  total: (json['total'] as num?)?.toInt(),
  parsed: (json['parsed'] as num?)?.toInt(),
  unparsed: (json['unparsed'] as num?)?.toInt(),
  unparsedIngredientsString: json['unparsed_ingredients_string'] as String?,
);

Map<String, dynamic> _$ProvisionalScoreIngredientsDTOToJson(
  _ProvisionalScoreIngredientsDTO instance,
) => <String, dynamic>{
  'parsed_substances': instance.parsedSubstances,
  'total': instance.total,
  'parsed': instance.parsed,
  'unparsed': instance.unparsed,
  'unparsed_ingredients_string': instance.unparsedIngredientsString,
};
