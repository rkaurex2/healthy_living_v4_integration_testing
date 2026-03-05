// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_preferences_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IngredientPreferencesFilterModel _$IngredientPreferencesFilterModelFromJson(
  Map<String, dynamic> json,
) => _IngredientPreferencesFilterModel(
  isPreferred: json['isPreferred'] as bool? ?? false,
  isAvoided: json['isAvoided'] as bool? ?? false,
);

Map<String, dynamic> _$IngredientPreferencesFilterModelToJson(
  _IngredientPreferencesFilterModel instance,
) => <String, dynamic>{
  'isPreferred': instance.isPreferred,
  'isAvoided': instance.isAvoided,
};
