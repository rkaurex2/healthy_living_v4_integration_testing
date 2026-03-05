// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_list_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateListResultDTO _$CreateListResultDTOFromJson(Map<String, dynamic> json) =>
    _CreateListResultDTO(
      message: json['message'] as String,
      listId: (json['list_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CreateListResultDTOToJson(
  _CreateListResultDTO instance,
) => <String, dynamic>{'message': instance.message, 'list_id': instance.listId};
