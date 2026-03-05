import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsletter_event.freezed.dart';

@freezed
sealed class NewsletterEvent with _$NewsletterEvent {
  const factory NewsletterEvent.newsletterInitialized({
    required String email,
    required String zipcode,
    String? country,
  }) = NewsletterInitialized;

  const factory NewsletterEvent.emailTextChanged(String value) =
      EmailTextChanged;

  const factory NewsletterEvent.emailFocusChanged(String value) =
      EmailFocusChanged;

  const factory NewsletterEvent.zipTextChanged(String value) = ZipTextChanged;

  const factory NewsletterEvent.zipFocusChanged(String value) = ZipFocusChanged;

  const factory NewsletterEvent.countryChanged(String value) = CountryChanged;

  const factory NewsletterEvent.subscribePressed() = SubscribePressed;
}
