import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsletter_subscription_response_model.freezed.dart';
part 'newsletter_subscription_response_model.g.dart';

@freezed
sealed class NewsletterSubscriptionResponseModel
    with _$NewsletterSubscriptionResponseModel {
  const factory NewsletterSubscriptionResponseModel({
    String? message,
  }) = _NewsletterSubscriptionResponseModel;

  factory NewsletterSubscriptionResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$NewsletterSubscriptionResponseModelFromJson(json);
}
