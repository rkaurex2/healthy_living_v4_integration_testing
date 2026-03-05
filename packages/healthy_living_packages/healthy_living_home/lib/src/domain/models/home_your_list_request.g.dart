// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_your_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeYourListRequest _$HomeYourListRequestFromJson(Map<String, dynamic> json) =>
    _HomeYourListRequest(
      sortBy: json['sort_by'] as String?,
      sortOrder: json['sort_order'] as String?,
    );

Map<String, dynamic> _$HomeYourListRequestToJson(
  _HomeYourListRequest instance,
) => <String, dynamic>{
  'sort_by': instance.sortBy,
  'sort_order': instance.sortOrder,
};
