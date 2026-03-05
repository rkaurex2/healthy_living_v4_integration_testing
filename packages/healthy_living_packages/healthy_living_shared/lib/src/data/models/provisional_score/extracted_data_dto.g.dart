// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extracted_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExtractedDataDTO _$ExtractedDataDTOFromJson(Map<String, dynamic> json) =>
    _ExtractedDataDTO(
      productName:
          json['product_name'] == null
              ? null
              : ExtractedFieldDTO.fromJson(
                json['product_name'] as Map<String, dynamic>,
              ),
      brandName:
          json['brand_name'] == null
              ? null
              : ExtractedFieldDTO.fromJson(
                json['brand_name'] as Map<String, dynamic>,
              ),
      ingredients:
          json['ingredients'] == null
              ? null
              : ExtractedFieldDTO.fromJson(
                json['ingredients'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$ExtractedDataDTOToJson(_ExtractedDataDTO instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'brand_name': instance.brandName,
      'ingredients': instance.ingredients,
    };
