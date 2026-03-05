// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_up_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSignUpDataModel _$UserSignUpDataModelFromJson(Map<String, dynamic> json) =>
    _UserSignUpDataModel(
      email: json['email'] as String,
      country: json['country'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      zipCode: json['zip_code'] as String,
      subscribeNewsletter: json['subscribe_newsletter'] as bool,
      initialLogin: json['intial_login'] as bool?,
    );

Map<String, dynamic> _$UserSignUpDataModelToJson(
  _UserSignUpDataModel instance,
) => <String, dynamic>{
  'email': instance.email,
  'country': instance.country,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'zip_code': instance.zipCode,
  'subscribe_newsletter': instance.subscribeNewsletter,
  'intial_login': instance.initialLogin,
};
