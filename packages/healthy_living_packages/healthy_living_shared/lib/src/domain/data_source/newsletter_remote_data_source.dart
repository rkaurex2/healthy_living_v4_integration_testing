import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_request_model.dart';
import 'package:healthy_living_shared/src/data/models/newsletter_subscription_response_dto.dart';
import 'package:network/network.dart';

abstract interface class NewsletterRemoteDataSource {
  Future<NetworkResponse<NewsletterSubscriptionResponseDTO?>>
  subscribeToNewsletter(NewsletterSubscriptionRequestModel request);
}
