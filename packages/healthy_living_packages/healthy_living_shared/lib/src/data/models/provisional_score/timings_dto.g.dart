// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimingsDTO _$TimingsDTOFromJson(Map<String, dynamic> json) => _TimingsDTO(
  labels:
      (json['labels'] as List<dynamic>?)
          ?.map((e) => LabelTimingDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  llmSeconds: (json['llm_seconds'] as num?)?.toDouble(),
  ocrSeconds: (json['ocr_seconds'] as num?)?.toDouble(),
  totalSeconds: (json['total_seconds'] as num?)?.toDouble(),
  stitchSeconds: (json['stitch_seconds'] as num?)?.toDouble(),
);

Map<String, dynamic> _$TimingsDTOToJson(_TimingsDTO instance) =>
    <String, dynamic>{
      'labels': instance.labels,
      'llm_seconds': instance.llmSeconds,
      'ocr_seconds': instance.ocrSeconds,
      'total_seconds': instance.totalSeconds,
      'stitch_seconds': instance.stitchSeconds,
    };
