// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sunscreen_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SunscreenDetailsDTO _$SunscreenDetailsDTOFromJson(Map<String, dynamic> json) =>
    _SunscreenDetailsDTO(
      uvbProtection: json['uvb_protection'] as String,
      uvaProtection: json['uva_protection'] as String?,
      uvabBalance: json['uvab_balance'] as String?,
      sunscreenStabilityName: json['sunscreen_stability'] as String?,
      healthHazardName: json['health_hazard'] as String?,
      otherConcerns: json['other_concerns'] as String?,
    );

Map<String, dynamic> _$SunscreenDetailsDTOToJson(
  _SunscreenDetailsDTO instance,
) => <String, dynamic>{
  'uvb_protection': instance.uvbProtection,
  'uva_protection': instance.uvaProtection,
  'uvab_balance': instance.uvabBalance,
  'sunscreen_stability': instance.sunscreenStabilityName,
  'health_hazard': instance.healthHazardName,
  'other_concerns': instance.otherConcerns,
};
