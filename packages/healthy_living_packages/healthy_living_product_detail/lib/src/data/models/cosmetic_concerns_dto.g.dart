// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cosmetic_concerns_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CosmeticConcernsDTO _$CosmeticConcernsDTOFromJson(Map<String, dynamic> json) =>
    _CosmeticConcernsDTO(
      cancerConcernLevel: json['cancer_new'] as String?,
      developmentalConcernLevel: json['dev_rep_new'] as String?,
      allergyConcernLevel: json['allergy_new'] as String?,
      useRestrictionConcerLevel: json['use_res_level'] as String?,
    );

Map<String, dynamic> _$CosmeticConcernsDTOToJson(
  _CosmeticConcernsDTO instance,
) => <String, dynamic>{
  'cancer_new': instance.cancerConcernLevel,
  'dev_rep_new': instance.developmentalConcernLevel,
  'allergy_new': instance.allergyConcernLevel,
  'use_res_level': instance.useRestrictionConcerLevel,
};
