// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdata_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDataDTO _$UserDataDTOFromJson(Map<String, dynamic> json) => _UserDataDTO(
  email: json['email'] as String?,
  country: json['country'] as String?,
  zipCode: json['zip_code'] as String?,
  subscribeNewsletter: json['subscribe_newsletter'] as bool?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  initialLogin: json['intial_login'] as bool?,
);

Map<String, dynamic> _$UserDataDTOToJson(_UserDataDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'country': instance.country,
      'zip_code': instance.zipCode,
      'subscribe_newsletter': instance.subscribeNewsletter,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'intial_login': instance.initialLogin,
    };
