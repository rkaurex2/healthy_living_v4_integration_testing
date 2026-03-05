import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class AccountPage extends BasePage {
  const AccountPage(super.tester);

  Future<void> waitForScreen() => waitFor(TestKeys.accountScreen);
  Future<void> tapEditProfile() => tap(TestKeys.editProfileButton);
  Future<void> tapChangePassword() => tap(TestKeys.changePasswordButton);
  Future<void> tapSignOut() => tap(TestKeys.signOutButton);
  Future<void> tapDeleteAccount() => tap(TestKeys.deleteAccountButton);
  Future<void> confirmDelete() => tap(TestKeys.confirmDeleteButton);
  Future<void> waitForAuthScreen() => waitFor(TestKeys.signInEmailField);
  Future<void> tapNewsletterLink() => tap(TestKeys.newsletterLink);
  Future<void> tapTerms() => tap(TestKeys.termsLink);
  Future<void> tapPrivacy() => tap(TestKeys.privacyLink);
  Future<void> tapCopyId() => tap(TestKeys.copyIdButton);
  bool isSubscriptionVisible() => isVisible(TestKeys.subscriptionSection);
  bool isPremiumBannerVisible() => isVisible(TestKeys.premiumBannerAccount);
}
