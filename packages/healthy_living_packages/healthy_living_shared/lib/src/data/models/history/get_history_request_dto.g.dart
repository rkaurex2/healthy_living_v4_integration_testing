// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_history_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetHistoryRequestDTO _$GetHistoryRequestDTOFromJson(
  Map<String, dynamic> json,
) => _GetHistoryRequestDTO(
  page: (json['page'] as num).toInt(),
  historyType: json['history_type'] as String,
  perPage: (json['per_page'] as num).toInt(),
);

Map<String, dynamic> _$GetHistoryRequestDTOToJson(
  _GetHistoryRequestDTO instance,
) => <String, dynamic>{
  'page': instance.page,
  'history_type': instance.historyType,
  'per_page': instance.perPage,
};
