// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrient_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NutrientDetailDTO _$NutrientDetailDTOFromJson(Map<String, dynamic> json) =>
    _NutrientDetailDTO(
      nutrientName: json['nutrient_name'] as String?,
      value: const SafeDoubleConverter().fromJson(json['nutrient_value']),
      uom: json['nutrient_uom'] as String?,
      dvp: (json['nutrient_dvp'] as num?)?.toDouble(),
      symbol: json['nutrient_symbol'] as String?,
    );

Map<String, dynamic> _$NutrientDetailDTOToJson(_NutrientDetailDTO instance) =>
    <String, dynamic>{
      'nutrient_name': instance.nutrientName,
      'nutrient_value': const SafeDoubleConverter().toJson(instance.value),
      'nutrient_uom': instance.uom,
      'nutrient_dvp': instance.dvp,
      'nutrient_symbol': instance.symbol,
    };
