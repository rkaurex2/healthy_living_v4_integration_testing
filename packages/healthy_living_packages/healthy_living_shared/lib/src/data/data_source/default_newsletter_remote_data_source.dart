import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/models/newsletter_subscription_request_dto.dart';
import 'package:healthy_living_shared/src/data/models/newsletter_subscription_response_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: NewsletterRemoteDataSource)
class DefaultNewsletterRemoteDataSource implements NewsletterRemoteDataSource {
  final RestClient _restClient;
  static DefaultNewsletterRemoteDataSource? _instance;
  static const _newsletterSubscriptionsEndpoint = "/newsletter_subscriptions";

  DefaultNewsletterRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultNewsletterRemoteDataSource({
    @unauthenticatedApiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultNewsletterRemoteDataSource._internal(restClient);
    return _instance!;
  }

  @override
  Future<NetworkResponse<NewsletterSubscriptionResponseDTO?>>
  subscribeToNewsletter(NewsletterSubscriptionRequestModel request) async {
    final queryParamRequest =
        await IdentifierQueryParamRequest.fromIdentifier();
    final requestDTO = NewsletterSubscriptionRequestDTO.fromDomain(request);

    return await _restClient.post<NewsletterSubscriptionResponseDTO>(
      _newsletterSubscriptionsEndpoint,
      queryParams: queryParamRequest.toJson(),
      body: requestDTO.toJson(),
      fromJson: (json) => NewsletterSubscriptionResponseDTO.fromJson(json),
    );
  }
}
