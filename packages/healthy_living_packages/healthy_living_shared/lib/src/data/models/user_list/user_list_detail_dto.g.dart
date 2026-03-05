// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListDetailDTO _$UserListDetailDTOFromJson(Map<String, dynamic> json) =>
    _UserListDetailDTO(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      name: json['list_name'] as String?,
      itemsCount: (json['items_count'] as num?)?.toInt(),
      totalEntries: (json['total_entries'] as num?)?.toInt(),
      url: json['url'] as String?,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => UserListItemsDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$UserListDetailDTOToJson(_UserListDetailDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'list_name': instance.name,
      'items_count': instance.itemsCount,
      'total_entries': instance.totalEntries,
      'url': instance.url,
      'items': instance.items,
    };
