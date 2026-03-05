// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cleaner_details_scores_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CleanerDetailsScoresDTO _$CleanerDetailsScoresDTOFromJson(
  Map<String, dynamic> json,
) => _CleanerDetailsScoresDTO(
  asthmaScore: json['asthma_score'] as String?,
  skinScore: json['skin_score'] as String?,
  devreproScore: json['devrepro_score'] as String?,
  cancerScore: json['cancer_score'] as String?,
  environmentScore: json['environment_score'] as String?,
);

Map<String, dynamic> _$CleanerDetailsScoresDTOToJson(
  _CleanerDetailsScoresDTO instance,
) => <String, dynamic>{
  'asthma_score': instance.asthmaScore,
  'skin_score': instance.skinScore,
  'devrepro_score': instance.devreproScore,
  'cancer_score': instance.cancerScore,
  'environment_score': instance.environmentScore,
};
