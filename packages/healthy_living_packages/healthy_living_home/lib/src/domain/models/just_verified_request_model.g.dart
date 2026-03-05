// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'just_verified_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JustVerifiedRequestModel _$JustVerifiedRequestModelFromJson(
  Map<String, dynamic> json,
) => _JustVerifiedRequestModel(
  search: json['search'] as String?,
  page: json['page'] as String?,
  perPage: json['per_page'] as String?,
  sort: json['sort'] as String?,
  direction: json['direction'] as String?,
  limitToEwgv: json['limit_to_ewgv'] as String?,
);

Map<String, dynamic> _$JustVerifiedRequestModelToJson(
  _JustVerifiedRequestModel instance,
) => <String, dynamic>{
  'search': instance.search,
  'page': instance.page,
  'per_page': instance.perPage,
  'sort': instance.sort,
  'direction': instance.direction,
  'limit_to_ewgv': instance.limitToEwgv,
};
