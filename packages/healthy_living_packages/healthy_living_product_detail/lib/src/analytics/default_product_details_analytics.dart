import 'package:healthy_living_product_detail/src/analytics/product_details_analytics.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_detail_basic_information_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductDetailsAnalytics)
class DefaultProductDetailsAnalytics implements ProductDetailsAnalytics {
  final AnalyticsService _analytics;

  DefaultProductDetailsAnalytics(this._analytics);

  @override
  Future<void> logProductDetailView({
    required ProductDetailBasicInformationModel product,
  }) async {
    final categories =
        (product.category ?? const []).toList()
          ..sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));

    final String? subCategory = categories.isNotEmpty ? categories.first : null;

    final String otherCategory =
        categories.length > 1 ? categories.sublist(1).join('; ') : '';

    await _analytics.logViewItem(
      itemId: product.productId,
      itemName: product.name,
      productType: product.productCategory.name,
      brandName: product.brandName,
      category: null,
      categoryGroup: null,
      subCategory: subCategory,
      otherCategory: otherCategory,
      isEwgVerified: product.isEwgVerified,
      score: product.rating.grade,
    );
  }

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
}
