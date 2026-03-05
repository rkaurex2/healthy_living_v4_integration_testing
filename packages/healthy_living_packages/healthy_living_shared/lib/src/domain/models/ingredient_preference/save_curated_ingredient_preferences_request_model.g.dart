// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_curated_ingredient_preferences_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveCuratedIngredientPreferencesRequestModel
_$SaveCuratedIngredientPreferencesRequestModelFromJson(
  Map<String, dynamic> json,
) => _SaveCuratedIngredientPreferencesRequestModel(
  userSelection: CuratedIngredientUserSelection.fromJson(
    json['curated_ingredient_preference_list_user_selection']
        as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$SaveCuratedIngredientPreferencesRequestModelToJson(
  _SaveCuratedIngredientPreferencesRequestModel instance,
) => <String, dynamic>{
  'curated_ingredient_preference_list_user_selection': instance.userSelection,
};
