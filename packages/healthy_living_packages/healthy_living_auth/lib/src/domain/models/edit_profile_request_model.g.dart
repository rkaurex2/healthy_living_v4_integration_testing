// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditProfileRequestModel _$EditProfileRequestModelFromJson(
  Map<String, dynamic> json,
) => _EditProfileRequestModel(
  mobileUser: EditProfileMobileUserRequestModel.fromJson(
    json['mobile_user'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$EditProfileRequestModelToJson(
  _EditProfileRequestModel instance,
) => <String, dynamic>{'mobile_user': instance.mobileUser};
