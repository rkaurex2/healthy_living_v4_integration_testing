import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class FindPage extends BasePage {
  const FindPage(super.tester);

  Future<void> waitForLanding() => waitFor(TestKeys.findLandingScreen);
  Future<void> tapCategory() => tap(TestKeys.categoryGrid);
  Future<void> tapSunscreenBanner() => tap(TestKeys.sunscreenBanner);
  Future<void> tapFilter() => tap(TestKeys.browseFilterButton);
  Future<void> tapAddToList() => tap(TestKeys.browseAddToList);
  Future<void> tapCompare() => tap(TestKeys.browseCompareProducts);
}
