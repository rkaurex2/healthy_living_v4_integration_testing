// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certifications_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CertificationsDTO _$CertificationsDTOFromJson(Map<String, dynamic> json) =>
    _CertificationsDTO(
      id: (json['id'] as num?)?.toInt(),
      asParam: json['as_param'] as String?,
      name: json['name'] as String?,
      logoUrl: json['logo_url'] as String?,
      website: json['website'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CertificationsDTOToJson(_CertificationsDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'as_param': instance.asParam,
      'name': instance.name,
      'logo_url': instance.logoUrl,
      'website': instance.website,
      'description': instance.description,
    };
