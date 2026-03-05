// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_aggregation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryAggregationDTO _$CategoryAggregationDTOFromJson(
  Map<String, dynamic> json,
) => _CategoryAggregationDTO(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  count: (json['count'] as num?)?.toInt(),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CategoryAggregationDTOToJson(
  _CategoryAggregationDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'count': instance.count,
  'categories': instance.categories,
};
