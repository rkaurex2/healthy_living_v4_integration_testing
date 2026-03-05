// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_product_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChildProductDetailsDTO _$ChildProductDetailsDTOFromJson(
  Map<String, dynamic> json,
) => _ChildProductDetailsDTO(
  id: (json['prod_id'] as num?)?.toInt(),
  ewgVerified: json['ewg_verified'] as bool?,
  name: json['name'] as String?,
  ingredients: json['label_ingredients'] as String?,
  grade: (json['webscore'] as num?)?.toInt(),
  dataLevel: json['data_level'] as String?,
);

Map<String, dynamic> _$ChildProductDetailsDTOToJson(
  _ChildProductDetailsDTO instance,
) => <String, dynamic>{
  'prod_id': instance.id,
  'ewg_verified': instance.ewgVerified,
  'name': instance.name,
  'label_ingredients': instance.ingredients,
  'webscore': instance.grade,
  'data_level': instance.dataLevel,
};
