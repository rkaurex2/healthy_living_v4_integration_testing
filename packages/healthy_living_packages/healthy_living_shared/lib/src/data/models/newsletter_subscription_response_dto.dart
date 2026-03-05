import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_response_model.dart';

part 'newsletter_subscription_response_dto.freezed.dart';
part 'newsletter_subscription_response_dto.g.dart';

@freezed
sealed class NewsletterSubscriptionResponseDTO
    with _$NewsletterSubscriptionResponseDTO {
  const factory NewsletterSubscriptionResponseDTO({
    String? message,
  }) = _NewsletterSubscriptionResponseDTO;

  factory NewsletterSubscriptionResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$NewsletterSubscriptionResponseDTOFromJson(json);
}

extension NewsletterSubscriptionResponseDTOExtension
    on NewsletterSubscriptionResponseDTO {
  NewsletterSubscriptionResponseModel toDomain() =>
      NewsletterSubscriptionResponseModel( message: message);
}
