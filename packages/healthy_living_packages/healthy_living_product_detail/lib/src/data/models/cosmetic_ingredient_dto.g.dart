// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cosmetic_ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CosmeticIngredientDTO _$CosmeticIngredientDTOFromJson(
  Map<String, dynamic> json,
) => _CosmeticIngredientDTO(
  id: (json['ingred_id'] as num?)?.toInt(),
  labelName: json['orig_text'] as String?,
  name: json['name'] as String?,
  concerns: json['concerns'] as String?,
  score: json['score'] as String?,
  substanceId: (json['substance_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$CosmeticIngredientDTOToJson(
  _CosmeticIngredientDTO instance,
) => <String, dynamic>{
  'ingred_id': instance.id,
  'orig_text': instance.labelName,
  'name': instance.name,
  'concerns': instance.concerns,
  'score': instance.score,
  'substance_id': instance.substanceId,
};
