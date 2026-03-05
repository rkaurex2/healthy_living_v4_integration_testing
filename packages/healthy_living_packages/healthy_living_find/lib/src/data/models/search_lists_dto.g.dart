// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_lists_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchListsDTO _$SearchListsDTOFromJson(Map<String, dynamic> json) =>
    _SearchListsDTO(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      ownerName: json['owner_name'] as String?,
      itemsCount: (json['items_count'] as num?)?.toInt(),
      highlights:
          json['highlights'] == null
              ? null
              : SearchHighlightsDTO.fromJson(
                json['highlights'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$SearchListsDTOToJson(_SearchListsDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'owner_name': instance.ownerName,
      'items_count': instance.itemsCount,
      'highlights': instance.highlights,
    };
