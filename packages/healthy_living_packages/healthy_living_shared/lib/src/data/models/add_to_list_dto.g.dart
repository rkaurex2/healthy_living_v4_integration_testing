// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddToListDTO _$AddToListDTOFromJson(Map<String, dynamic> json) =>
    _AddToListDTO(
      message: json['message'] as String,
      listId: (json['list_id'] as num).toInt(),
    );

Map<String, dynamic> _$AddToListDTOToJson(_AddToListDTO instance) =>
    <String, dynamic>{'message': instance.message, 'list_id': instance.listId};
