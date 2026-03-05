// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_concerns_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthConcernsDTO _$HealthConcernsDTOFromJson(Map<String, dynamic> json) =>
    _HealthConcernsDTO(
      cancerNew: json['cancer_new'] as String?,
      allergyNew: json['allergy_new'] as String?,
      devRepNew: json['dev_rep_new'] as String?,
      useResLevel: json['use_res_level'] as String?,
    );

Map<String, dynamic> _$HealthConcernsDTOToJson(_HealthConcernsDTO instance) =>
    <String, dynamic>{
      'cancer_new': instance.cancerNew,
      'allergy_new': instance.allergyNew,
      'dev_rep_new': instance.devRepNew,
      'use_res_level': instance.useResLevel,
    };
