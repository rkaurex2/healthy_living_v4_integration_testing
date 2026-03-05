// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_pagination_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchPaginationItemDTO _$SearchPaginationItemDTOFromJson(
  Map<String, dynamic> json,
) => _SearchPaginationItemDTO(
  currentPage: (json['current_page'] as num?)?.toInt(),
  totalPages: (json['total_pages'] as num?)?.toInt(),
  totalEntries: (json['total_entries'] as num?)?.toInt(),
);

Map<String, dynamic> _$SearchPaginationItemDTOToJson(
  _SearchPaginationItemDTO instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
  'total_entries': instance.totalEntries,
};
