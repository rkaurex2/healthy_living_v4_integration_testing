import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchAnalytics)
class DefaultSearchAnalytics implements SearchAnalytics {
  final AnalyticsService _analytics;

  DefaultSearchAnalytics(this._analytics);

  static const int _maxItems = 2;

  @override
  Future<void> logSearchStart({required String source}) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.searchStart,
      parameters: {AnalyticsParameters.source: source},
    );
  }

  @override
  Future<void> logSearch({
    required String searchTerm,
    required String source,
  }) async {
    await _analytics.logSearch(
      searchTerm: searchTerm,
      parameters: {
        AnalyticsParameters.method: StringConstants.keyboard,
        AnalyticsParameters.source: source,
      },
    );
  }

  @override
  Future<void> logViewSearchResults({
    required String searchTerm,
    required int resultCount,
    required String source,
    List<SearchProductModel>? items,
  }) async {
    await _analytics.logViewSearchResults(
      searchTerm: searchTerm,
      parameters: {
        AnalyticsParameters.resultCount: resultCount,
        AnalyticsParameters.method: StringConstants.keyboard,
        AnalyticsParameters.source: source,
      },
    );

    // OPTIONAL: also log items for richer ecommerce reports
    if (items != null && items.isNotEmpty) {
      await _analytics.logViewItemList(
        itemListId: AnalyticsEvents.searchResults,
        itemListName: searchTerm,
        items:
            items.take(_maxItems).toList().asMap().entries.map((entry) {
              final index = entry.key; // 0-based index
              final item = entry.value;
              return AnalyticsEventItem(
                itemId: item.id.toString(),
                itemName: item.name,
                itemBrand: item.brandName,
                itemCategory: item.subtype,
                itemCategory2:
                    item.categoryGroupName is String?
                        ? item.categoryGroupName
                        : "",
                itemCategory3:
                    item.categoryName is String? ? item.categoryName : "",
                itemCategory4:
                    item.subCategoryName is String? ? item.subCategoryName : "",
                itemVariant:
                    item.ewgVerified == null
                        ? null
                        : (item.ewgVerified!
                            ? StringConstants.ewgVerified
                            : StringConstants.ewgNotVerified),
                index: index + 1, // GA4 expects 1-based index
              );
            }).toList(),
      );
    }
  }

  @override
  Future<void> logSearchResultClick({
    required SearchProductModel product,
    required int? position,
  }) async {
    await _analytics.logSelectItem(
      itemListName: AnalyticsEvents.searchResultsSelectItem,
      items: [
        AnalyticsEventItem(
          itemId: product.id.toString(),
          itemName: product.name,
          itemBrand: product.brandName,
          itemCategory: product.subtype,
          index: position, // GA4 expects 1-based index
          itemCategory2:
              product.categoryGroupName is String?
                  ? product.categoryGroupName
                  : "",
          itemCategory3:
              product.categoryName is String? ? product.categoryGroupName : "",
          itemCategory4:
              product.subCategoryName is String? ? product.subCategoryName : "",
          itemVariant:
              product.ewgVerified == null
                  ? null
                  : (product.ewgVerified!
                      ? StringConstants.ewgVerified
                      : StringConstants.ewgNotVerified),
        ),
      ],
    );
  }

  @override
  Future<void> logScanStart({required String source}) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.scanStart,
      parameters: {AnalyticsParameters.source: source},
    );
  }
}
