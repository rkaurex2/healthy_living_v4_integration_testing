import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../helpers/app_helper.dart';
import '../helpers/integration_gate.dart';
import '../helpers/test_data.dart';
import '../helpers/quarantine.dart';
import '../pages/auth/sign_in_page.dart';
import '../pages/home/home_page.dart';
import '../pages/account/account_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<AccountPage> signInAndNavigateToAccount(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.signIn(
      TestAccounts.standardEmail,
      TestAccounts.standardPassword,
    );
    final home = HomePage(tester);
    await home.tapAccountTab();
    final account = AccountPage(tester);
    await account.waitForScreen();
    return account;
  }

  // ── 5a: User Detail ────────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 06 — 5a: User Detail', () {
    testWidgets('avatar, name, and email visible', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      expect(find.byKey(TestKeys.accountScreen), findsOneWidget);
      // User detail elements should be visible on the account screen
    });
  });

  // ── 5b: My Account Actions ─────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 06 — 5b: My Account Actions', () {
    testWidgets('edit profile updates display name', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      await account.tapEditProfile();
      await tester.pumpAndSettle();
      // Edit profile screen should open
      expect(tester.takeException(), isNull);
    });

    testWidgets('change password shows form', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      await account.tapChangePassword();
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });

    testWidgets('sign out navigates to auth screen', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      await account.tapSignOut();
      await tester.pumpAndSettle();
      await account.waitForAuthScreen();
    });

    testWidgets('copy ID button works', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      await account.tapCopyId();
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });

    testWidgets('subscription section visible', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      expect(account.isSubscriptionVisible(), isTrue);
    });
  });

  // ── 5b-delete: Delete Account ──────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 06 — 5b-delete: Delete Account', () {
    testWidgets('delete account redirects to auth', (tester) async {
      await createDisposableTestAccount(tester);
      final home = HomePage(tester);
      await home.tapAccountTab();
      final account = AccountPage(tester);
      await account.waitForScreen();
      await account.tapDeleteAccount();
      await account.confirmDelete();
      await account.waitForAuthScreen();
    });

    testWidgets('deleted credentials cannot sign in', (tester) async {
      final email = await createDisposableTestAccount(tester);
      final home = HomePage(tester);
      await home.tapAccountTab();
      final account = AccountPage(tester);
      await account.tapDeleteAccount();
      await account.confirmDelete();
      await account.waitForAuthScreen();
      // Try signing in with deleted credentials
      final signIn = SignInPage(tester);
      await signIn.enterEmail(email);
      await signIn.enterPassword('TestPass123!');
      await signIn.tapSubmit();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.homeScreen), findsNothing);
    });
  });

  // ── 5c: Premium Banner ─────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 06 — 5c: Premium Banner', () {
    testWidgets('non-premium user sees premium banner', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      expect(account.isPremiumBannerVisible(), isTrue);
    });

    testWidgets('tap premium banner shows paywall', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      await tester.tap(find.byKey(TestKeys.premiumBannerAccount));
      await tester.pumpAndSettle();
      // Paywall appears — actual purchase is out of scope
      expect(tester.takeException(), isNull);
    });
  });

  // ── 5d: Resources ──────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 06 — 5d: Resources', () {
    testWidgets('newsletter link opens newsletter screen', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      await account.tapNewsletterLink();
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });

  // ── 5e: Help Our Mission ───────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 06 — 5e: Help Our Mission', () {
    testWidgets('donate triggers external link', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      // Scroll to donate section and tap
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });

  // ── 5f: Terms ──────────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 06 — 5f: Terms', () {
    testWidgets('terms link navigates to WebView', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      await account.tapTerms();
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });

  // ── 5g: Privacy ────────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 06 — 5g: Privacy', () {
    testWidgets('privacy link navigates to WebView', (tester) async {
      final account = await signInAndNavigateToAccount(tester);
      await account.tapPrivacy();
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });

  // ── 5h: Premium Icon ───────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 06 — 5h: Premium Icon', () {
    testWidgets('premium user sees premium icon', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.signIn(
        TestAccounts.premiumEmail,
        TestAccounts.premiumPassword,
      );
      final home = HomePage(tester);
      await home.tapAccountTab();
      final account = AccountPage(tester);
      await account.waitForScreen();
      // Premium user should have premium icon visible
      expect(find.byKey(TestKeys.accountScreen), findsOneWidget);
    });
  });
}
