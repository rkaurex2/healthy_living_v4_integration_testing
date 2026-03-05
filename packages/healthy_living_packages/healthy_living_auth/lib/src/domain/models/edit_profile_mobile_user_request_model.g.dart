// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_mobile_user_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditProfileMobileUserRequestModel _$EditProfileMobileUserRequestModelFromJson(
  Map<String, dynamic> json,
) => _EditProfileMobileUserRequestModel(
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  country: json['country'] as String,
  zipCode: json['zip_code'] as String,
);

Map<String, dynamic> _$EditProfileMobileUserRequestModelToJson(
  _EditProfileMobileUserRequestModel instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'country': instance.country,
  'zip_code': instance.zipCode,
};
