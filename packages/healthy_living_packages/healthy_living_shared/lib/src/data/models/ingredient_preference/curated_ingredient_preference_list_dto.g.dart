// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curated_ingredient_preference_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CuratedIngredientPreferenceListDTO
_$CuratedIngredientPreferenceListDTOFromJson(Map<String, dynamic> json) =>
    _CuratedIngredientPreferenceListDTO(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      category: json['category'] as String?,
      listType: json['list_type'] as String?,
      severityLevel: json['severity_level'] as String?,
      description: json['description'] as String?,
      active: json['active'] as bool?,
      priorityOrder: (json['priority_order'] as num?)?.toInt(),
      itemCount: (json['item_count'] as num?)?.toInt(),
      userSelected: json['user_selected'] as bool?,
      userSelectionId: (json['user_selection_id'] as num?)?.toInt(),
      userSelectionEnabled: json['user_selection_enabled'] as bool?,
      userSelectionPriority: (json['user_selection_priority'] as num?)?.toInt(),
      createdAt:
          json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
      updatedAt:
          json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CuratedIngredientPreferenceListDTOToJson(
  _CuratedIngredientPreferenceListDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'category': instance.category,
  'list_type': instance.listType,
  'severity_level': instance.severityLevel,
  'description': instance.description,
  'active': instance.active,
  'priority_order': instance.priorityOrder,
  'item_count': instance.itemCount,
  'user_selected': instance.userSelected,
  'user_selection_id': instance.userSelectionId,
  'user_selection_enabled': instance.userSelectionEnabled,
  'user_selection_priority': instance.userSelectionPriority,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
