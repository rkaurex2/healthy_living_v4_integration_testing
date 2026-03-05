// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListDTO _$UserListDTOFromJson(Map<String, dynamic> json) => _UserListDTO(
  id: (json['id'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  name: json['name'] as String?,
  listName: json['list_name'] as String?,
  itemsCount: (json['items_count'] as num?)?.toInt(),
  skippedItems:
      (json['skipped_items'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
  url: json['url'] as String?,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => UserListItemsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$UserListDTOToJson(_UserListDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'name': instance.name,
      'list_name': instance.listName,
      'items_count': instance.itemsCount,
      'skipped_items': instance.skippedItems,
      'url': instance.url,
      'items': instance.items,
    };
