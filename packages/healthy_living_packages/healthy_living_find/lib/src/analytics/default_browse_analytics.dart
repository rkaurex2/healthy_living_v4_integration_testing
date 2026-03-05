import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:healthy_living_find/src/analytics/browse_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BrowseAnalytics)
class DefaultBrowseAnalytics implements BrowseAnalytics {
  final AnalyticsService _analytics;

  DefaultBrowseAnalytics(this._analytics);

  @override
  Future<void> logBrowseProductType({
    required String productType,
    required List<BrowseMainCategoryModel> categories,
  }) async {
    await _analytics.logViewItemList(
      itemListId: '${AnalyticsEvents.browse}_${_normalize(productType)}',
      itemListName: '${AnalyticsEvents.browse} - $productType',
      items:
          categories.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            return AnalyticsEventItem(
              itemId: item.id.toString(),
              itemName: item.name,
              index: index+1, // GA4 expects 1-based index
              parameters: {
                AnalyticsParameters.productCount: item.productCount.toString(),
                AnalyticsParameters.verifiedProductCount:
                    item.verifiedProductCount.toString(),
              },
            );
          }).toList(),
    );
  }

  @override
  Future<void> logBrowseCategoryGroup({
    required String productType,
    required String categoryGroupId,
    required List<SearchProductModel> items,
    bool isEWGVerified = false,
  }) async {
    await _logViewItemList(
      listId:
          isEWGVerified
              ? '${AnalyticsEvents.browseVerifiedCategoryGroupId}_$categoryGroupId'
              : '${AnalyticsEvents.browseCategoryGroupId}_$categoryGroupId',
      listName:
          isEWGVerified
              ? '${AnalyticsEvents.browse} - ${AnalyticsEvents.verified} - ${items.first.categoryGroupName ?? ""}'
              : '${AnalyticsEvents.browse} - ${items.first.categoryGroupName ?? ""}',
      productType: productType,
      items: items,
    );
  }

  @override
  Future<void> logBrowseCategory({
    required String productType,
    required String categoryId,
    required List<SearchProductModel> items,
    bool isEWGVerified = false,
  }) async {
    await _logViewItemList(
      listId:
          isEWGVerified
              ? '${AnalyticsEvents.browseVerifiedCategory}_$categoryId'
              : '${AnalyticsEvents.browseCategory}_$categoryId',
      listName:
          isEWGVerified
              ? '${AnalyticsEvents.browse} - ${AnalyticsEvents.verified} - ${items.first.categoryName ?? ""}'
              : '${AnalyticsEvents.browse} - ${items.first.categoryName ?? ""}',
      productType: productType,
      items: items,
    );
  }

  @override
  Future<void> logBrowseSubCategory({
    required String productType,
    required String subCategoryId,
    required List<SearchProductModel> items,
    bool isEWGVerified = false,
  }) async {
    await _logViewItemList(
      listId:
          isEWGVerified
              ? '${AnalyticsEvents.browseVerifiedSubcategory}_$subCategoryId'
              : '${AnalyticsEvents.browseSubcategory}_$subCategoryId',
      listName:
          isEWGVerified
              ? '${AnalyticsEvents.browse} - ${AnalyticsEvents.verified} - ${items.first.subCategoryName ?? ""}'
              : '${AnalyticsEvents.browse} - ${items.first.subCategoryName ?? ""}',
      productType: productType,
      items: items,
    );
  }

  @override
  Future<void> logBrowseVerified({
    required List<SearchProductModel> items,
  }) async {
    await _logViewItemList(
      listId: '${AnalyticsEvents.browse}_${AnalyticsEvents.verified}',
      listName: '${AnalyticsEvents.browse} - ${AnalyticsEvents.verified}',
      isVerified: true,
      items: items,
    );
  }

  Future<void> _logViewItemList({
    required String listId,
    required String listName,
    required List<SearchProductModel> items,
    String? productType,
    String? categoryGroup,
    String? category,
    String? subCategory,
    bool isVerified = false,
  }) async {
    if (!items.isValidList) {
      await _analytics.logViewItemList(
        itemListId: listId,
        itemListName: listName,
        items: [],
      );
      return;
    }

    await _analytics.logViewItemList(
      itemListId: listId,
      itemListName: listName,
      items:
          items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            return AnalyticsEventItem(
              itemId: item.id.toString(),
              itemName: item.name,
              itemBrand: item.brandName,
              itemCategory:
                  productType.isValidValue ? productType : item.subtype,
              itemCategory2:
                  categoryGroup.isValidValue
                      ? categoryGroup
                      : item.categoryGroupName,
              itemCategory3:
                  category.isValidValue ? category : item.categoryName,
              itemCategory4:
                  subCategory.isValidValue ? subCategory : item.subCategoryName,
              index: index+1, // GA4 expects 1-based index
              itemVariant:
                  item.ewgVerified == null
                      ? null
                      : (item.ewgVerified!
                          ? StringConstants.ewgVerified
                          : StringConstants.ewgNotVerified),
              parameters: {AnalyticsParameters.score: _score(item)},
            );
          }).toList(),
    );
  }

  String _normalize(String value) => value.replaceAll(' ', '_');

  String _score(SearchProductModel product) {
    switch (ProductCategory.fromName(product.subtype)) {
      case ProductCategory.food:
        return product.foodScore.toString();
      case ProductCategory.cleaner:
        return product.cleanersScore.toString();
      case ProductCategory.personalCare:
      case ProductCategory.sunscreen:
        return product.personalCareScore.toString();
      default:
        return "";
    }
  }
}
