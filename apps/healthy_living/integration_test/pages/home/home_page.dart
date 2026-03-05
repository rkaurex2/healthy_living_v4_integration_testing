import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class HomePage extends BasePage {
  const HomePage(super.tester);

  Future<void> waitForScreen() => waitFor(TestKeys.homeScreen);
  Future<void> waitForPremiumModal() => waitFor(TestKeys.homePremiumModal);
  Future<void> waitForRecentActivity() => waitFor(TestKeys.homeRecentActivity);
  Future<void> waitForJustVerified() => waitFor(TestKeys.homeJustVerified);
  Future<void> waitForUserLists() => waitFor(TestKeys.homeUserLists);
  Future<void> waitForBrowseByCategory() => waitFor(TestKeys.homeBrowseByCategory);
  Future<void> waitForDonate() => waitFor(TestKeys.homeDonate);
  Future<void> waitForUserGuideCarousel() => waitFor(TestKeys.homeUserGuideCarousel);
  Future<void> waitForEwgGuides() => waitFor(TestKeys.homeEwgGuides);
  Future<void> waitForSignInPrompt() => waitFor(TestKeys.homeSignInPrompt);

  Future<void> scrollToSection(Key key) => scrollUntilVisible(key);

  Future<void> tapHomeTab() => tap(TestKeys.homeTab);
  Future<void> tapFindTab() => tap(TestKeys.findTab);
  Future<void> tapScanTab() => tap(TestKeys.scanTab);
  Future<void> tapMyItemsTab() => tap(TestKeys.myItemsTab);
  Future<void> tapAccountTab() => tap(TestKeys.accountTab);

  bool isPremiumModalVisible() => isVisible(TestKeys.homePremiumModal);
  bool isSignInPromptVisible() => isVisible(TestKeys.homeSignInPrompt);
}
