// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsed_substance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParsedSubstanceDTO _$ParsedSubstanceDTOFromJson(Map<String, dynamic> json) =>
    _ParsedSubstanceDTO(
      name: json['name'] as String,
      score: json['score'] as String,
      ingredId: (json['ingred_id'] as num).toInt(),
      origText: json['orig_text'] as String,
      substanceId: (json['substance_id'] as num).toInt(),
      ewgVerifiedNotscore: json['ewg_verified_notscore'] as String?,
      concerns: json['concerns'] as String?,
    );

Map<String, dynamic> _$ParsedSubstanceDTOToJson(_ParsedSubstanceDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'score': instance.score,
      'ingred_id': instance.ingredId,
      'orig_text': instance.origText,
      'substance_id': instance.substanceId,
      'ewg_verified_notscore': instance.ewgVerifiedNotscore,
      'concerns': instance.concerns,
    };
