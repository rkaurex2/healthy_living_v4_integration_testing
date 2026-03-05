// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curated_ingredient_preference_lists_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CuratedIngredientPreferenceListsResponseDTO
_$CuratedIngredientPreferenceListsResponseDTOFromJson(
  Map<String, dynamic> json,
) => _CuratedIngredientPreferenceListsResponseDTO(
  curatedIngredientPreferenceLists:
      (json['curated_ingredient_preference_lists'] as List<dynamic>?)
          ?.map(
            (e) => CuratedIngredientPreferenceListDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  meta:
      json['meta'] == null
          ? null
          : CuratedIngredientPreferenceMetaDto.fromJson(
            json['meta'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$CuratedIngredientPreferenceListsResponseDTOToJson(
  _CuratedIngredientPreferenceListsResponseDTO instance,
) => <String, dynamic>{
  'curated_ingredient_preference_lists':
      instance.curatedIngredientPreferenceLists,
  'meta': instance.meta,
};
