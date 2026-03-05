// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_aggregation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandAggregationDTO _$BrandAggregationDTOFromJson(Map<String, dynamic> json) =>
    _BrandAggregationDTO(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BrandAggregationDTOToJson(
  _BrandAggregationDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'count': instance.count,
};
