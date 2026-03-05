// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_aggregations_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryAggregationsDTO _$CategoryAggregationsDTOFromJson(
  Map<String, dynamic> json,
) => _CategoryAggregationsDTO(
  cleaners:
      (json['cleaners'] as List<dynamic>?)
          ?.map(
            (e) => CategoryAggregationDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  personalCare:
      (json['personal_care'] as List<dynamic>?)
          ?.map(
            (e) => CategoryAggregationDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  food:
      (json['food'] as List<dynamic>?)
          ?.map(
            (e) => CategoryAggregationDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$CategoryAggregationsDTOToJson(
  _CategoryAggregationsDTO instance,
) => <String, dynamic>{
  'cleaners': instance.cleaners,
  'personal_care': instance.personalCare,
  'food': instance.food,
};
