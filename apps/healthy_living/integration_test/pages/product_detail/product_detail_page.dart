import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class ProductDetailPage extends BasePage {
  const ProductDetailPage(super.tester);

  Future<void> waitForProduct() => waitFor(TestKeys.productDetailScreen);
  Future<void> tapFindingsTab() => tap(TestKeys.findingsTab);
  Future<void> tapIngredientsTab() => tap(TestKeys.ingredientsTabPD);
  Future<void> tapLabelInfoTab() => tap(TestKeys.labelInfoTab);
  Future<void> tapShare() => tap(TestKeys.shareProductButton);
  Future<void> tapAddToList() => tap(TestKeys.addToListButton);
  Future<void> tapBuyNow() => tap(TestKeys.buyNowButton);
  Future<void> tapCompare() => tap(TestKeys.compareProductsButton);
  bool isHazardBadgeVisible() => isVisible(TestKeys.hazardBadge);
}
