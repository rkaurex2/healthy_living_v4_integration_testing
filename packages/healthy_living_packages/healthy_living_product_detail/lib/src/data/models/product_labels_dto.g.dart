// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_labels_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductLabelsDTO _$ProductLabelsDTOFromJson(Map<String, dynamic> json) =>
    _ProductLabelsDTO(
      directions: json['directions'] as String?,
      ingredients: json['ingredients'] as String?,
      warnings: json['warnings'] as String?,
    );

Map<String, dynamic> _$ProductLabelsDTOToJson(_ProductLabelsDTO instance) =>
    <String, dynamic>{
      'directions': instance.directions,
      'ingredients': instance.ingredients,
      'warnings': instance.warnings,
    };
