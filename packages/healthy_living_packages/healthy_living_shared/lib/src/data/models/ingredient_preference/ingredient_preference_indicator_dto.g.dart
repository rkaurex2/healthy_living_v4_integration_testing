// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_preference_indicator_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IngredientPreferenceIndicatorDTO _$IngredientPreferenceIndicatorDTOFromJson(
  Map<String, dynamic> json,
) => _IngredientPreferenceIndicatorDTO(
  hasAvoid: json['has_avoid'] as bool? ?? false,
  hasPrefer: json['has_prefer'] as bool? ?? false,
  avoidCount: (json['avoid_count'] as num?)?.toInt(),
  preferCount: (json['prefer_count'] as num?)?.toInt(),
  avoidedIngredients:
      (json['avoided_ingredients'] as List<dynamic>?)
          ?.map(
            (e) => IngredientPreferenceIngredientDTO.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  preferredIngredients:
      (json['preferred_ingredients'] as List<dynamic>?)
          ?.map(
            (e) => IngredientPreferenceIngredientDTO.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$IngredientPreferenceIndicatorDTOToJson(
  _IngredientPreferenceIndicatorDTO instance,
) => <String, dynamic>{
  'has_avoid': instance.hasAvoid,
  'has_prefer': instance.hasPrefer,
  'avoid_count': instance.avoidCount,
  'prefer_count': instance.preferCount,
  'avoided_ingredients': instance.avoidedIngredients,
  'preferred_ingredients': instance.preferredIngredients,
};

_IngredientPreferenceIngredientDTO _$IngredientPreferenceIngredientDTOFromJson(
  Map<String, dynamic> json,
) => _IngredientPreferenceIngredientDTO(
  name: json['name'] as String?,
  source: json['source'] as String?,
  listName: json['list_name'] as String?,
);

Map<String, dynamic> _$IngredientPreferenceIngredientDTOToJson(
  _IngredientPreferenceIngredientDTO instance,
) => <String, dynamic>{
  'name': instance.name,
  'source': instance.source,
  'list_name': instance.listName,
};
