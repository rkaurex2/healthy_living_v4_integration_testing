import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsletter_subscription_request_model.freezed.dart';
part 'newsletter_subscription_request_model.g.dart';

@freezed
sealed class NewsletterSubscriptionRequestModel
    with _$NewsletterSubscriptionRequestModel {
  const factory NewsletterSubscriptionRequestModel({
    required String email,
    required String country,
    required String zip,
  }) = _NewsletterSubscriptionRequestModel;

  factory NewsletterSubscriptionRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$NewsletterSubscriptionRequestModelFromJson(json);
}
