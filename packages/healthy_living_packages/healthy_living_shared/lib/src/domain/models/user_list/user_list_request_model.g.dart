// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListRequestModel _$UserListRequestModelFromJson(
  Map<String, dynamic> json,
) => _UserListRequestModel(
  name: json['name'] as String,
  itemsAttributes:
      (json['items_attributes'] as List<dynamic>)
          .map(
            (e) => UserListItemsAttributesModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$UserListRequestModelToJson(
  _UserListRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'items_attributes': instance.itemsAttributes.map((e) => e.toJson()).toList(),
};
