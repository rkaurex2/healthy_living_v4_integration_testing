// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_filter_item_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandFilterItemRequestModel _$BrandFilterItemRequestModelFromJson(
  Map<String, dynamic> json,
) => _BrandFilterItemRequestModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  count: (json['count'] as num).toInt(),
  isSelected: json['isSelected'] as bool,
);

Map<String, dynamic> _$BrandFilterItemRequestModelToJson(
  _BrandFilterItemRequestModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'count': instance.count,
  'isSelected': instance.isSelected,
};
