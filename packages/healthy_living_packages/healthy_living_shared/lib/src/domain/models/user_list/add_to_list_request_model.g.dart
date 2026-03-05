// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_list_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddToListRequestModel _$AddToListRequestModelFromJson(
  Map<String, dynamic> json,
) => _AddToListRequestModel(
  userList: UserListRequestModel.fromJson(
    json['user_list'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AddToListRequestModelToJson(
  _AddToListRequestModel instance,
) => <String, dynamic>{'user_list': instance.userList.toJson()};
