// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_business_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchBusinessResponseDTO _$SearchBusinessResponseDTOFromJson(
  Map<String, dynamic> json,
) => _SearchBusinessResponseDTO(
  id: (json['id'] as num?)?.toInt(),
  asParam: json['as_param'] as String?,
  name: json['name'] as String?,
  logoUrl: json['logo_url'] as String?,
);

Map<String, dynamic> _$SearchBusinessResponseDTOToJson(
  _SearchBusinessResponseDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'as_param': instance.asParam,
  'name': instance.name,
  'logo_url': instance.logoUrl,
};
