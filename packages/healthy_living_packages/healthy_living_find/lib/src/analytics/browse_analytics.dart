import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

abstract interface class BrowseAnalytics {
  Future<void> logBrowseProductType({
    required String productType,
    required List<BrowseMainCategoryModel> categories,
  });

  Future<void> logBrowseCategoryGroup({
    required String productType,
    required String categoryGroupId,
    required List<SearchProductModel> items,
    bool isEWGVerified,
  });

  Future<void> logBrowseCategory({
    required String productType,
    required String categoryId,
    required List<SearchProductModel> items,
    bool isEWGVerified,
  });

  Future<void> logBrowseSubCategory({
    required String productType,
    required String subCategoryId,
    required List<SearchProductModel> items,
    bool isEWGVerified,
  });

  Future<void> logBrowseVerified({required List<SearchProductModel> items});
}
