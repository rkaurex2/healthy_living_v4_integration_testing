// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) =>
    _UserDataModel(
      email: json['email'] as String,
      country: json['country'] as String,
      zipCode: json['zip_code'] as String,
      subscribeNewsletter: json['subscribe_newsletter'] as bool,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      initialLogin: json['intial_login'] as bool?,
      revenueCat:
          json['revenuecat'] == null
              ? null
              : AuthRevenueCatResponseModel.fromJson(
                json['revenuecat'] as Map<String, dynamic>,
              ),
      entitlements:
          (json['entitlements'] as List<dynamic>?)
              ?.map(
                (e) => EntitlementsResponseModel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
    );

Map<String, dynamic> _$UserDataModelToJson(_UserDataModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'country': instance.country,
      'zip_code': instance.zipCode,
      'subscribe_newsletter': instance.subscribeNewsletter,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'intial_login': instance.initialLogin,
      'revenuecat': instance.revenueCat,
      'entitlements': instance.entitlements,
    };
