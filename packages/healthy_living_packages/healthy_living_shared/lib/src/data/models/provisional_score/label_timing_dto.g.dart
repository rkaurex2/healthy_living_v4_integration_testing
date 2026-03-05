// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_timing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabelTimingDTO _$LabelTimingDTOFromJson(Map<String, dynamic> json) =>
    _LabelTimingDTO(
      labelName: json['label_name'] as String?,
      imageCount: (json['image_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LabelTimingDTOToJson(_LabelTimingDTO instance) =>
    <String, dynamic>{
      'label_name': instance.labelName,
      'image_count': instance.imageCount,
    };
