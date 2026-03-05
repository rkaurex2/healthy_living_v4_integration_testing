import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AnalyticsService {
  final FirebaseAnalytics _analytics;

  AnalyticsService(this._analytics);

  // ------------------------
  // Generic event
  // ------------------------
  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    try {
      await _analytics.logEvent(name: name, parameters: parameters);
      debugPrint('[Analytics] screen_view: $name');
    } catch (e) {
      debugPrint('[Analytics] logging event error: $e');
    }
  }

  // ------------------------
  // Screen view
  // ------------------------
  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  }) async {
    try {
      await _analytics.logScreenView(
        screenName: screenName,
        screenClass: screenClass ?? screenName,
      );
      debugPrint('[Analytics] screen_view: $screenName');
    } catch (e) {
      debugPrint('[Analytics] screen_view error: $e');
    }
  }

  // ------------------------
  // VIEW ITEM (Product Detail)
  // ------------------------
  Future<void> logViewItem({
    required String itemId,
    required String itemName,
    required String productType,
    String? brandName,
    String? categoryGroup,
    String? category,
    String? subCategory,
    String? otherCategory,
    bool? isEwgVerified,
    String? score,
  }) async {
    try {
      await _analytics.logViewItem(
        items: [
          AnalyticsEventItem(
            itemId: itemId,
            itemName: itemName,
            itemBrand: brandName,
            itemCategory: productType,
            itemCategory2: categoryGroup,
            itemCategory3: category,
            itemCategory4: subCategory,
            itemCategory5: otherCategory,
            itemVariant:
                isEwgVerified == null
                    ? null
                    : (isEwgVerified
                        ? StringConstants.ewgVerified
                        : StringConstants.ewgNotVerified),
          ),
        ],
        parameters: {if (score != null) AnalyticsParameters.score: score},
      );

      debugPrint('[Analytics] view_item: $itemName ($itemId)');
    } catch (e) {
      debugPrint('[Analytics] view_item error: $e');
    }
  }

  // ------------------------
  // VIEW ITEM LIST (Search / Category / List)
  // ------------------------
  Future<void> logViewItemList({
    required String itemListId,
    required String itemListName,
    required List<AnalyticsEventItem> items,
  }) async {
    try {
      await _analytics.logViewItemList(
        itemListId: itemListId,
        itemListName: itemListName,
        items: items,
      );

      debugPrint('[Analytics] view_item_list: $itemListName');
    } catch (e) {
      debugPrint('[Analytics] view_item_list error: $e');
    }
  }

  // ------------------------
  // SEARCH (Action)
  // ------------------------
  Future<void> logSearch({
    required String searchTerm,
    Map<String, Object>? parameters,
  }) async {
    try {
      await _analytics.logSearch(
        searchTerm: searchTerm,
        parameters: parameters,
      );
      debugPrint('[Analytics] search: $searchTerm');
    } catch (e) {
      debugPrint('[Analytics] search error: $e');
    }
  }

  // ------------------------
  // SEARCH RESULTS (Result)
  // ------------------------
  Future<void> logViewSearchResults({
    required String searchTerm,
    Map<String, Object>? parameters,
  }) async {
    try {
      await _analytics.logViewSearchResults(
        searchTerm: searchTerm,
        parameters: parameters,
      );
      debugPrint('[Analytics] view_search_results: $searchTerm)');
    } catch (e) {
      debugPrint('[Analytics] view_search_results error: $e');
    }
  }

  // ------------------------
  // SELECT ITEM (click from list/search)
  // ------------------------
  Future<void> logSelectItem({
    required String itemListName,
    required List<AnalyticsEventItem> items,
  }) async {
    try {
      await _analytics.logSelectItem(itemListName: itemListName, items: items);
      debugPrint('[Analytics] select_item: $itemListName');
    } catch (e) {
      debugPrint('[Analytics] select_item error: $e');
    }
  }

  // ------------------------
  // User
  // ------------------------
  Future<void> setUserId(String? userId) async {
    await _analytics.setUserId(id: userId);
  }

  Future<void> setUserProperty({
    required String name,
    required String value,
  }) async {
    await _analytics.setUserProperty(name: name, value: value);
  }

  Future<void> clearUser() async {
    await _analytics.setUserId(id: null);
  }
}
