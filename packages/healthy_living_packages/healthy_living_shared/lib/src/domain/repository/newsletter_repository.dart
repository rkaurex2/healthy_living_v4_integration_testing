import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_response_model.dart';
import 'package:network/network.dart';

abstract interface class NewsletterRepository {
  Future<NetworkResponse<NewsletterSubscriptionResponseModel?>>
  subscribeToNewsletter({required NewsletterSubscriptionRequestModel request});
}
