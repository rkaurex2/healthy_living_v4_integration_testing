// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubstanceDTO _$SubstanceDTOFromJson(Map<String, dynamic> json) =>
    _SubstanceDTO(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SubstanceDTOToJson(_SubstanceDTO instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
