// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_detail_serving_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodDetailServingInfoDTO _$FoodDetailServingInfoDTOFromJson(
  Map<String, dynamic> json,
) => _FoodDetailServingInfoDTO(
  serveDescription: json['serve_description'] as String?,
  servingSize: json['serving_size'] as String?,
  servingUom: json['serving_uom'] as String?,
  servingSize2: json['serving_size_2'] as String?,
  servingUom2: json['serving_uom_2'] as String?,
);

Map<String, dynamic> _$FoodDetailServingInfoDTOToJson(
  _FoodDetailServingInfoDTO instance,
) => <String, dynamic>{
  'serve_description': instance.serveDescription,
  'serving_size': instance.servingSize,
  'serving_uom': instance.servingUom,
  'serving_size_2': instance.servingSize2,
  'serving_uom_2': instance.servingUom2,
};
