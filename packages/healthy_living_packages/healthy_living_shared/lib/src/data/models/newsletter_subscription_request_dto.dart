import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_request_model.dart';

part 'newsletter_subscription_request_dto.freezed.dart';
part 'newsletter_subscription_request_dto.g.dart';

@freezed
sealed class NewsletterSubscriptionRequestDTO
    with _$NewsletterSubscriptionRequestDTO {
  const factory NewsletterSubscriptionRequestDTO({
    required String email,
    required String country,
    required String zip,
  }) = _NewsletterSubscriptionRequestDTO;

  factory NewsletterSubscriptionRequestDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$NewsletterSubscriptionRequestDTOFromJson(json);

  factory NewsletterSubscriptionRequestDTO.fromDomain(
    NewsletterSubscriptionRequestModel model,
  ) => NewsletterSubscriptionRequestDTO(
    email: model.email,
    country: model.country,
    zip: model.zip,
  );
}
