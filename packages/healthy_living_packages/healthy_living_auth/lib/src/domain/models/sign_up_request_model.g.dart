// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpRequestModel _$SignUpRequestModelFromJson(Map<String, dynamic> json) =>
    _SignUpRequestModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['password_confirmation'] as String,
      country: json['country'] as String,
      zipCode: json['zip_code'] as String,
      subscribeNewsletter: json['subscribe_newsletter'] as bool,
    );

Map<String, dynamic> _$SignUpRequestModelToJson(_SignUpRequestModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.confirmPassword,
      'country': instance.country,
      'zip_code': instance.zipCode,
      'subscribe_newsletter': instance.subscribeNewsletter,
    };
