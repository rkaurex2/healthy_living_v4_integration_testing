// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_history_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetHistoryResponseDTO _$GetHistoryResponseDTOFromJson(
  Map<String, dynamic> json,
) => _GetHistoryResponseDTO(
  id: (json['id'] as num?)?.toInt(),
  listName: json['list_name'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  page: (json['page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  totalEntries: (json['total_entries'] as num?)?.toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => HistoryItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$GetHistoryResponseDTOToJson(
  _GetHistoryResponseDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'list_name': instance.listName,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'page': instance.page,
  'per_page': instance.perPage,
  'total_entries': instance.totalEntries,
  'items': instance.items,
};
