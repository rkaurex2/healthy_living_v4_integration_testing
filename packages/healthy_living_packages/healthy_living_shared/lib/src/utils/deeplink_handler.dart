import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/repository/deep_link_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

@injectable
class DeepLinkHandler {
  final DeepLinkRepository _deepLinkRepository;
  final AnalyticsService _analytics;

  DeepLinkHandler(this._deepLinkRepository, this._analytics);

  Future<void> shareProductLink(
    DeepLinkProductRequest productRequest, {
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) async {
    try {
      final result = await _deepLinkRepository.getProductDeeplink(
        productRequest,
        messageText: messageText,
        messageTitle: messageTitle,
        sharingTitle: sharingTitle,
      );

      if (result == false) {
        debugPrint(
          "Failed to generate deep link for ${productRequest.productName}",
        );
        return;
      } else {
        /// GA4 event (Share Product)
        await _analytics.logEvent(
          name: AnalyticsEvents.productShared,
          parameters: {
            AnalyticsParameters.productId: productRequest.productId,
            AnalyticsParameters.productName: productRequest.productName,
            AnalyticsParameters.productCategory: productRequest.category.value,
          },
        );
      }
    } catch (e, stackTrace) {
      debugPrint("Error while sharing product link: $e");
      debugPrint("$stackTrace");
    }
  }

  Future<void> shareListLink({
    required String listId,
    required String listName,
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) async {
    try {
      final result = await _deepLinkRepository.getMyListDeeplink(
        listId: listId,
        listName: listName,
        messageText: messageText,
        messageTitle: messageTitle,
        sharingTitle: sharingTitle,
      );

      if (result == false) {
        debugPrint("Failed to generate deep link for $listName");
        return;
      } else {
        /// GA4 event (Share List)
        await _analytics.logEvent(
          name: AnalyticsEvents.listShared,
          parameters: {
            AnalyticsParameters.listId: listId,
            AnalyticsParameters.listName: listName,
          },
        );
      }
    } catch (e, stackTrace) {
      debugPrint("Error while sharing list link: $e");
      debugPrint("$stackTrace");
    }
  }
}
