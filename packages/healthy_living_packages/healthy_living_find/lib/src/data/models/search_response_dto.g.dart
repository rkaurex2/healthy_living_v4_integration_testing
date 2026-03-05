// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponseDTO _$SearchResponseDTOFromJson(Map<String, dynamic> json) =>
    _SearchResponseDTO(
      results:
          json['results'] == null
              ? null
              : SearchResultsDTO.fromJson(
                json['results'] as Map<String, dynamic>,
              ),
      pagination:
          json['pagination'] == null
              ? null
              : SearchPaginationDTO.fromJson(
                json['pagination'] as Map<String, dynamic>,
              ),
      productTypeCounts: (json['product_type_counts'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toInt())),
      totalSearchTime: json['total_search_time'],
    );

Map<String, dynamic> _$SearchResponseDTOToJson(_SearchResponseDTO instance) =>
    <String, dynamic>{
      'results': instance.results,
      'pagination': instance.pagination,
      'product_type_counts': instance.productTypeCounts,
      'total_search_time': instance.totalSearchTime,
    };
