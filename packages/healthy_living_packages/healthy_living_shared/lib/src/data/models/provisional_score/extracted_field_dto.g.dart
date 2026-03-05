// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extracted_field_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExtractedFieldDTO _$ExtractedFieldDTOFromJson(Map<String, dynamic> json) =>
    _ExtractedFieldDTO(
      value: json['value'] as String?,
      ocrValue: json['ocr_value'] as String?,
      confidence: (json['confidence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ExtractedFieldDTOToJson(_ExtractedFieldDTO instance) =>
    <String, dynamic>{
      'value': instance.value,
      'ocr_value': instance.ocrValue,
      'confidence': instance.confidence,
    };
