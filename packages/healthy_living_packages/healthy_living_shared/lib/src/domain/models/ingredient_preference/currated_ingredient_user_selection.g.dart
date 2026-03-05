// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currated_ingredient_user_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CuratedIngredientUserSelection _$CuratedIngredientUserSelectionFromJson(
  Map<String, dynamic> json,
) => _CuratedIngredientUserSelection(
  listId: json['curated_ingredient_preference_list_id'] as String,
  enabled: json['enabled'] as bool,
  priority: (json['priority'] as num).toInt(),
);

Map<String, dynamic> _$CuratedIngredientUserSelectionToJson(
  _CuratedIngredientUserSelection instance,
) => <String, dynamic>{
  'curated_ingredient_preference_list_id': instance.listId,
  'enabled': instance.enabled,
  'priority': instance.priority,
};
