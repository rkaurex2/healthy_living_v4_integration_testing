// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_business_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListBusinessDTO _$UserListBusinessDTOFromJson(Map<String, dynamic> json) =>
    _UserListBusinessDTO(
      id: (json['id'] as num?)?.toInt(),
      asParam: json['as_param'] as String?,
      name: json['name'] as String?,
      logoUrl: json['logo_url'] as String?,
    );

Map<String, dynamic> _$UserListBusinessDTOToJson(
  _UserListBusinessDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'as_param': instance.asParam,
  'name': instance.name,
  'logo_url': instance.logoUrl,
};
