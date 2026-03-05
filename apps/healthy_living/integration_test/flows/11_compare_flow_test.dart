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
import '../pages/compare/compare_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<void> signInAndSearch(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.signIn(
      TestAccounts.standardEmail,
      TestAccounts.standardPassword,
    );
    final home = HomePage(tester);
    await home.tapFindTab();
    final search = SearchPage(tester);
    await search.enterSearch(TestSearchTerms.valid);
    await search.waitForResults();
  }

  // ── 11a: Add to Compare ─────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 11 — 11a: Add to Compare', () {
    testWidgets('add product from search three-dot menu', (tester) async {
      await signInAndSearch(tester);
      final search = SearchPage(tester);
      await search.tapThreeDots();
      await search.tapCompareFromMenu();
      await tester.pumpAndSettle();
      // Compare screen should appear with the product
      final compare = ComparePage(tester);
      await compare.waitForCompareScreen();
      await compare.verifyProductCount(1);
    });

    testWidgets('add product from product detail', (tester) async {
      await signInAndSearch(tester);
      // Tap first product card to open detail
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      await detail.tapCompare();
      await tester.pumpAndSettle();
      // Compare screen should appear
      final compare = ComparePage(tester);
      await compare.waitForCompareScreen();
      await compare.verifyProductCount(1);
    });
  });

  // ── 11b: Compare View ───────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 11 — 11b: Compare View', () {
    testWidgets('compare screen shows products side by side', (tester) async {
      await signInAndSearch(tester);
      final search = SearchPage(tester);

      // Add first product via three-dot menu
      await search.tapThreeDots();
      await search.tapCompareFromMenu();
      await tester.pumpAndSettle();

      // Go back to search results
      await tester.pageBack();
      await tester.pumpAndSettle();

      // Add second product via three-dot menu
      await search.tapThreeDots();
      await search.tapCompareFromMenu();
      await tester.pumpAndSettle();

      // Compare screen should show 2 products side by side
      final compare = ComparePage(tester);
      await compare.waitForCompareScreen();
      await compare.verifyProductCount(2);
    });
  });

  // ── 11c: Remove from Compare ────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 11 — 11c: Remove from Compare', () {
    testWidgets('dismiss product from compare', (tester) async {
      await signInAndSearch(tester);
      final search = SearchPage(tester);

      // Add a product to compare
      await search.tapThreeDots();
      await search.tapCompareFromMenu();
      await tester.pumpAndSettle();

      final compare = ComparePage(tester);
      await compare.waitForCompareScreen();
      await compare.verifyProductCount(1);

      // Dismiss the product
      await compare.dismissProduct();
      await tester.pumpAndSettle();

      // Compare screen should update — product removed
      expect(find.byKey(TestKeys.compareProductCard), findsNothing);
    });
  });
}
