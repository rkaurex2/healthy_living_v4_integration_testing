import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:healthy_living_scan/src/analytics/scan_analytics.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ScanAnalytics)
class DefaultScanAnalytics implements ScanAnalytics {
  final AnalyticsService _analytics;

  DefaultScanAnalytics(this._analytics);

  @override
  Future<void> logSearchStart({required String source}) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.searchStart,
      parameters: {AnalyticsParameters.source: source},
    );
  }

  @override
  Future<void> logScanStart({required String source}) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.scanStart,
      parameters: {AnalyticsParameters.source: source},
    );
  }

  @override
  Future<void> logBarcodeSearch({required String searchTerm}) async {
    await _analytics.logSearch(
      searchTerm: searchTerm,
      parameters: {AnalyticsParameters.method: StringConstants.camera, AnalyticsParameters.source: AppRoutes.scan.eventName},
    );
  }

  @override
  Future<void> logBarcodeSearchResult({
    required String searchTerm,
    required int resultCount,
    required GeneralProductListItemUIModel product,
  }) async {
    await _analytics.logViewSearchResults(
      searchTerm: searchTerm,
      parameters: {AnalyticsParameters.resultCount: resultCount, AnalyticsParameters.method: StringConstants.camera, AnalyticsParameters.source: AppRoutes.scan.eventName},
    );

    // OPTIONAL: also log items for richer ecommerce reports
    await _analytics.logViewItemList(
      itemListId: AnalyticsEvents.scanSuccess,
      itemListName: searchTerm,
      items: [
        AnalyticsEventItem(
          itemId: product.productId.toString(),
          itemName: product.productName,
          itemCategory: product.categoryType,
          itemBrand: product.brandName,
          itemCategory2: product.categoryType,
          itemVariant:
              (product.isEWGVerified
                  ? StringConstants.ewgVerified
                  : StringConstants.ewgNotVerified),
        ),
      ],
    );
  }

  @override
  Future<void> logBarcodeResultClick({
    required GeneralProductListItemUIModel product,
  }) async {
    await _analytics.logSelectItem(
      itemListName: AnalyticsEvents.scanResultsSelectItem,
      items: [
        AnalyticsEventItem(
          itemId: product.productId.toString(),
          itemName: product.productName,
          itemCategory: product.categoryType,
          itemBrand: product.brandName,
          itemCategory2: product.categoryType,
          itemVariant:
              (product.isEWGVerified
                  ? StringConstants.ewgVerified
                  : StringConstants.ewgNotVerified),
        ),
      ],
    );
  }

  @override
  Future<void> logScanFail({required String searchTerm, required String reason}) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.scanFail,
      parameters: {
        AnalyticsParameters.reason: reason,
        AnalyticsParameters.upcCode: searchTerm,
      },
    );
  }
}
