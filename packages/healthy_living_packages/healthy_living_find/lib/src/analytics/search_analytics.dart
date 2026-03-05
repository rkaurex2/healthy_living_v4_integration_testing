import 'package:healthy_living_find/src/domain/models/search_product_model.dart';

abstract interface class SearchAnalytics {
  /// User taps / focuses the search bar
  Future<void> logSearchStart({
    required String source,
  });

  /// User submits a search query
  Future<void> logSearch({
    required String searchTerm,
    required String source,
  });

  /// Search results are shown to the user
  Future<void> logViewSearchResults({
    required String searchTerm,
    required int resultCount,
    required String source,
    List<SearchProductModel>? items,
  });

  /// User clicks a search result
  Future<void> logSearchResultClick({
    required SearchProductModel product,
    required int? position, // GA4 is 1-based
  });

  Future<void> logScanStart({
    required String source,
  });
}
