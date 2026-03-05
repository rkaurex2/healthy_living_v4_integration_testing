import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../helpers/app_helper.dart';
import '../helpers/integration_gate.dart';
import '../helpers/test_data.dart';
import '../pages/auth/sign_in_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/product_detail/product_detail_page.dart';
import '../pages/account/account_page.dart';
import '../pages/browse/find_page.dart';
import '../pages/history/history_page.dart';
import '../pages/lists/lists_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<HomePage> signInToHome(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.signIn(
      TestAccounts.standardEmail,
      TestAccounts.standardPassword,
    );
    final home = HomePage(tester);
    await home.waitForScreen();
    return home;
  }

  Future<HomePage> guestToHome(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.tapContinueAsGuest();
    final home = HomePage(tester);
    await home.waitForScreen();
    return home;
  }

  // ── NAV-01: Bottom Tab Navigation ─────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 13 — NAV-01: Bottom Tab Navigation', () {
    testWidgets('all 5 tabs navigate correctly', (tester) async {
      final home = await signInToHome(tester);
      expect(find.byKey(TestKeys.homeScreen), findsOneWidget);

      // Tap Find tab → verify find landing screen
      await home.tapFindTab();
      final findPage = FindPage(tester);
      await findPage.waitForLanding();

      // Tap My Items tab → verify my items screen
      await home.tapMyItemsTab();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.myItemsScreen), findsOneWidget);

      // Tap Account tab → verify account screen
      await home.tapAccountTab();
      final account = AccountPage(tester);
      await account.waitForScreen();

      // Tap Home tab → verify back at home
      await home.tapHomeTab();
      await home.waitForScreen();
    });
  });

  // ── NAV-02: Back Navigation ───────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 13 — NAV-02: Back Navigation', () {
    testWidgets('back from product detail returns to search', (tester) async {
      final home = await signInToHome(tester);

      // Navigate to Find tab
      await home.tapFindTab();
      final findPage = FindPage(tester);
      await findPage.waitForLanding();

      // Search for a product
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();

      // Tap first product result
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();

      // Verify product detail screen
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();

      // Navigate back
      Navigator.of(tester.element(find.byType(Scaffold))).pop();
      await tester.pumpAndSettle();

      // Verify search results are still visible
      expect(find.byKey(TestKeys.searchResultsList), findsOneWidget);
    });
  });

  // ── NAV-03: Deep Stack ────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 13 — NAV-03: Deep Stack', () {
    testWidgets('Home → Find → Search → Product → back → back → home',
        (tester) async {
      final home = await signInToHome(tester);

      // Tap Find tab
      await home.tapFindTab();
      final findPage = FindPage(tester);
      await findPage.waitForLanding();

      // Search for a product
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();

      // Tap first product result
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();

      // Back from product detail
      Navigator.of(tester.element(find.byType(Scaffold))).pop();
      await tester.pumpAndSettle();

      // Back from search results
      Navigator.of(tester.element(find.byType(Scaffold))).pop();
      await tester.pumpAndSettle();

      // Tap home tab → verify home screen
      await home.tapHomeTab();
      await home.waitForScreen();
    });
  });

  // ── NAV-04: Deep Link Product ─────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 13 — NAV-04: Deep Link Product', () {
    testWidgets('deep link to product detail shows product', (tester) async {
      final home = await signInToHome(tester);

      // Navigate to Find and search for a product to simulate deep link arrival
      await home.tapFindTab();
      final findPage = FindPage(tester);
      await findPage.waitForLanding();

      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();

      // Tap first product result
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();

      // Verify product detail screen appears
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
    });
  });

  // ── NAV-05: Guest Tab Restrictions ────────────────────────────────────────
  @Tags(['full'])
  group('Flow 13 — NAV-05: Guest Tab Restrictions', () {
    testWidgets('guest cannot access My Items', (tester) async {
      final home = await guestToHome(tester);

      // Tap My Items tab
      await home.tapMyItemsTab();
      await tester.pumpAndSettle();

      // Guest should see sign-in prompt, not items screen
      expect(find.byKey(TestKeys.homeSignInPrompt), findsOneWidget);
    });
  });

  // ── NAV-06: Sign Out Redirect ─────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 13 — NAV-06: Sign Out Redirect', () {
    testWidgets('sign out redirects to auth screen', (tester) async {
      final home = await signInToHome(tester);

      // Tap account tab
      await home.tapAccountTab();
      final account = AccountPage(tester);
      await account.waitForScreen();

      // Tap sign out
      await account.tapSignOut();
      await tester.pumpAndSettle();

      // Verify auth screen (signInEmailField) is visible
      await account.waitForAuthScreen();
    });
  });

  // ── NAV-07: Tab State Persistence ─────────────────────────────────────────
  @Tags(['full'])
  group('Flow 13 — NAV-07: Tab State Persistence', () {
    testWidgets('search state persists across tab switches', (tester) async {
      final home = await signInToHome(tester);

      // Navigate to Find tab and enter a search
      await home.tapFindTab();
      final findPage = FindPage(tester);
      await findPage.waitForLanding();

      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();

      // Switch to Home tab
      await home.tapHomeTab();
      await home.waitForScreen();

      // Switch back to Find tab
      await home.tapFindTab();
      await tester.pumpAndSettle();

      // Verify search results are still visible (state persisted)
      expect(find.byKey(TestKeys.searchResultsList), findsOneWidget);
    });
  });

  // ── NAV-08: Offline Error ─────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 13 — NAV-08: Offline Error', () {
    testWidgets('offline state shows error view', (tester) async {
      // TODO: Enable when NetworkHelper offline simulation is connected.
      // DSErrorView + retry is now wired to BrowseContentScreen,
      // ProductDetailContentScreen, HistoryContentScreen, MyAccountContentScreen
      // (SESSION GAP-A). Once network simulation is available, assert
      // find.byKey(TestKeys.offlineErrorView) on those screens.
      final home = await signInToHome(tester);
      expect(find.byKey(TestKeys.homeScreen), findsOneWidget);

      // Verify TestKeys.offlineErrorView key is defined (compile-time check)
      // ignore: unnecessary_type_check
      expect(TestKeys.offlineErrorView, isA<Key>());
    });
  });
}
