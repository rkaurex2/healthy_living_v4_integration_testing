// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsletter_subscription_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewsletterSubscriptionRequestModel
_$NewsletterSubscriptionRequestModelFromJson(Map<String, dynamic> json) =>
    _NewsletterSubscriptionRequestModel(
      email: json['email'] as String,
      country: json['country'] as String,
      zip: json['zip'] as String,
    );

Map<String, dynamic> _$NewsletterSubscriptionRequestModelToJson(
  _NewsletterSubscriptionRequestModel instance,
) => <String, dynamic>{
  'email': instance.email,
  'country': instance.country,
  'zip': instance.zip,
};
