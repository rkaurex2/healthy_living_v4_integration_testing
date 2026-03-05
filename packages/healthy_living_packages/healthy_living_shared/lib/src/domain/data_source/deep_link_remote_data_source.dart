import 'package:healthy_living_shared/src/domain/models/deep_link_product_request.dart';

abstract interface class DeepLinkRemoteDataSource {
  Future<bool> getProductDeeplink(
    DeepLinkProductRequest productRequest, {
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  });

  Future<bool> getMyListDeeplink({
    required String listId,
    required String listName,
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  });
}