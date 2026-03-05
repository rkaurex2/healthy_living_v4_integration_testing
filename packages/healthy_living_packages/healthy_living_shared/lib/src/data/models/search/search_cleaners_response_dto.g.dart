// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cleaners_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchCleanersResponseDTO _$SearchCleanersResponseDTOFromJson(
  Map<String, dynamic> json,
) => _SearchCleanersResponseDTO(
  currentPage: (json['current_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  totalEntries: (json['total_entries'] as num?)?.toInt(),
  cleaners:
      (json['cleaners'] as List<dynamic>?)
          ?.map(
            (e) => SearchCleanerProductResponseDTO.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$SearchCleanersResponseDTOToJson(
  _SearchCleanersResponseDTO instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'total_entries': instance.totalEntries,
  'cleaners': instance.cleaners,
};
