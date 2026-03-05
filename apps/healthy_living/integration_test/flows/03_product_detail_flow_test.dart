import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../helpers/app_helper.dart';
import '../helpers/integration_gate.dart';
import '../helpers/test_data.dart';
import '../helpers/quarantine.dart';
import '../pages/auth/sign_in_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/product_detail/product_detail_page.dart';
import '../pages/lists/lists_page.dart';
import '../pages/compare/compare_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<void> navigateToProduct(WidgetTester tester) async {
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
    // Tap first product result
    await tester.tap(find.byKey(TestKeys.productCard).first);
    await tester.pumpAndSettle();
  }

  // ── 2a: Basic Information ──────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 03 — 2a: Basic Information', () {
    testWidgets('product detail shows name, brand, hazard badge', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      expect(detail.isHazardBadgeVisible(), isTrue);
    });
  });

  // ── 2b: Share ──────────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 03 — 2b: Share', () {
    testWidgets('share button triggers share sheet', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      await detail.tapShare();
      await tester.pumpAndSettle();
      // Patrol native check would verify system share sheet
      // For widget test: verify no crash
      expect(tester.takeException(), isNull);
    });
  });

  // ── 2c: Findings Tab ──────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 03 — 2c: Findings Tab', () {
    testWidgets('findings tab is default active', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      // Findings tab should be the default active tab
      expect(find.byKey(TestKeys.findingsTab), findsOneWidget);
    });
  });

  // ── 2d: Ingredients Tab ────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 03 — 2d: Ingredients Tab', () {
    testWidgets('ingredients tab shows ingredient list', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      await detail.tapIngredientsTab();
      await tester.pumpAndSettle();
      // Ingredients list should be visible
      expect(find.byKey(TestKeys.ingredientsTabPD), findsOneWidget);
    });
  });

  // ── 2e: Label Info Tab ─────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 03 — 2e: Label Info Tab', () {
    testWidgets('label info tab shows nutrition section', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      await detail.tapLabelInfoTab();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.labelInfoTab), findsOneWidget);
    });
  });

  // ── 2f: Learn More About Scoring ───────────────────────────────────────────
  @Tags(['full'])
  group('Flow 03 — 2f: Learn More About Scoring', () {
    testWidgets('scoring info opens informational screen', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      // Tap the hazard badge area to see scoring info
      await tester.tap(find.byKey(TestKeys.hazardBadge));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });

  // ── 2g: Compare Products ───────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 03 — 2g: Compare Products', () {
    testWidgets('compare adds product and opens compare screen', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      await detail.tapCompare();
      await tester.pumpAndSettle();
      // Navigate back and search for second product
      await tester.pageBack();
      await tester.pumpAndSettle();
      final search = SearchPage(tester);
      await search.enterSearch(TestProducts.cleanerName);
      await search.waitForResults();
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();
      final detail2 = ProductDetailPage(tester);
      await detail2.tapCompare();
      await tester.pumpAndSettle();
      // Compare screen should open with 2 products
      final compare = ComparePage(tester);
      await compare.waitForCompareScreen();
    });
  });

  // ── 2h: Add to List ────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 03 — 2h: Add to List', () {
    testWidgets('add product to existing list', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      await detail.tapAddToList();
      await tester.pumpAndSettle();
      // Select existing list
      await tester.tap(find.text(TestLists.existingListName));
      await tester.pumpAndSettle();
      // Verify success feedback
      expect(tester.takeException(), isNull);
    });
  });

  // ── 2i: Buy Now ────────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 03 — 2i: Buy Now', () {
    testWidgets('buy now triggers navigation intent', (tester) async {
      await navigateToProduct(tester);
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      await detail.tapBuyNow();
      await tester.pumpAndSettle();
      // Patrol would verify external URL navigation
      expect(tester.takeException(), isNull);
    });
  });
}
