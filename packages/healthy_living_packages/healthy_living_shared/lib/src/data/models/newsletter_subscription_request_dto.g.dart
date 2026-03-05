// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsletter_subscription_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewsletterSubscriptionRequestDTO _$NewsletterSubscriptionRequestDTOFromJson(
  Map<String, dynamic> json,
) => _NewsletterSubscriptionRequestDTO(
  email: json['email'] as String,
  country: json['country'] as String,
  zip: json['zip'] as String,
);

Map<String, dynamic> _$NewsletterSubscriptionRequestDTOToJson(
  _NewsletterSubscriptionRequestDTO instance,
) => <String, dynamic>{
  'email': instance.email,
  'country': instance.country,
  'zip': instance.zip,
};
