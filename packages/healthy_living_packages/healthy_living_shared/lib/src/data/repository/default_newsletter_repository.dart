import 'package:healthy_living_shared/src/data/models/newsletter_subscription_response_dto.dart';
import 'package:healthy_living_shared/src/domain/data_source/newsletter_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_response_model.dart';
import 'package:healthy_living_shared/src/domain/repository/newsletter_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: NewsletterRepository)
class DefaultNewsletterRepository implements NewsletterRepository {
  final NewsletterRemoteDataSource _newsletterDataSource;
  static DefaultNewsletterRepository? _instance;

  DefaultNewsletterRepository._internal(this._newsletterDataSource);

  @factoryMethod
  factory DefaultNewsletterRepository({
    required NewsletterRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultNewsletterRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<NewsletterSubscriptionResponseModel?>>
  subscribeToNewsletter({
    required NewsletterSubscriptionRequestModel request,
  }) async {
    final response = await _newsletterDataSource.subscribeToNewsletter(request);
    return NetworkResponse<NewsletterSubscriptionResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
