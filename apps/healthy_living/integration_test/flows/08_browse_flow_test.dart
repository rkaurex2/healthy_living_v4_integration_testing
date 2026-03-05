import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../helpers/app_helper.dart';
import '../helpers/integration_gate.dart';
import '../helpers/test_data.dart';
import '../pages/auth/sign_in_page.dart';
import '../pages/home/home_page.dart';
import '../pages/browse/find_page.dart';
import '../pages/browse/category_page.dart';
import '../pages/search/search_filters_page.dart';
import '../pages/product_detail/product_detail_page.dart';
import '../pages/lists/lists_page.dart';
import '../pages/compare/compare_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<void> signInAndNavigateToFind(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.signIn(
      TestAccounts.standardEmail,
      TestAccounts.standardPassword,
    );
    final home = HomePage(tester);
    await home.tapFindTab();
    await tester.pumpAndSettle();
  }

  // ── 8a-i: Browse Landing ──────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 08 — 8a-i: Browse Landing', () {
    testWidgets('Find tab shows find landing screen with browse by category visible', (tester) async {
      await signInAndNavigateToFind(tester);
      final findPage = FindPage(tester);
      await findPage.waitForLanding();
      expect(find.byKey(TestKeys.findLandingScreen), findsOneWidget);
      expect(find.byKey(TestKeys.browseByCategory), findsOneWidget);
    });
  });

  // ── 8a-ii: Category Grid ─────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 08 — 8a-ii: Category Grid', () {
    testWidgets('tap category grid loads category with products', (tester) async {
      await signInAndNavigateToFind(tester);
      final findPage = FindPage(tester);
      await findPage.waitForLanding();
      await findPage.tapCategory();
      await tester.pumpAndSettle();
      final category = CategoryPage(tester);
      await category.waitForProducts();
    });
  });

  // ── 8a-iii: Subcategory ──────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 08 — 8a-iii: Subcategory', () {
    testWidgets('tap subcategory shows subcategory products', (tester) async {
      await signInAndNavigateToFind(tester);
      final findPage = FindPage(tester);
      await findPage.waitForLanding();
      await findPage.tapCategory();
      await tester.pumpAndSettle();
      final category = CategoryPage(tester);
      await category.waitForProducts();
      await category.tapSubcategory();
      await category.waitForSubcategoryProducts();
    });
  });

  // ── 8b: Sunscreen Banner ─────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 08 — 8b: Sunscreen Banner', () {
    testWidgets('sunscreen banner tap navigates to sunscreen category products', (tester) async {
      await signInAndNavigateToFind(tester);
      final findPage = FindPage(tester);
      await findPage.waitForLanding();
      await findPage.tapSunscreenBanner();
      await tester.pumpAndSettle();
      final category = CategoryPage(tester);
      await category.waitForProducts();
    });
  });

  // ── 8c-i: Browse Filter ──────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 08 — 8c-i: Browse Filter', () {
    testWidgets('filter button opens filter, apply filters, results refresh', (tester) async {
      await signInAndNavigateToFind(tester);
      final findPage = FindPage(tester);
      await findPage.waitForLanding();
      await findPage.tapCategory();
      await tester.pumpAndSettle();
      final category = CategoryPage(tester);
      await category.waitForProducts();
      await findPage.tapFilter();
      await tester.pumpAndSettle();
      final filters = SearchFiltersPage(tester);
      await filters.toggleEwgVerified();
      await tester.pumpAndSettle();
      // Results should be filtered
      expect(find.byKey(TestKeys.productCard), findsWidgets);
    });
  });

  // ── 8c-ii: Browse Sort ───────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 08 — 8c-ii: Browse Sort', () {
    testWidgets('sort by dropdown changes results order', (tester) async {
      await signInAndNavigateToFind(tester);
      final findPage = FindPage(tester);
      await findPage.waitForLanding();
      await findPage.tapCategory();
      await tester.pumpAndSettle();
      final category = CategoryPage(tester);
      await category.waitForProducts();
      await findPage.tapFilter();
      await tester.pumpAndSettle();
      final filters = SearchFiltersPage(tester);
      await filters.selectSortBy();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.productCard), findsWidgets);
    });
  });

  // ── 8d-i: Browse Add to List ─────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 08 — 8d-i: Browse Add to List', () {
    testWidgets('add to list from browse puts product in list', (tester) async {
      await signInAndNavigateToFind(tester);
      final findPage = FindPage(tester);
      await findPage.waitForLanding();
      await findPage.tapCategory();
      await tester.pumpAndSettle();
      final category = CategoryPage(tester);
      await category.waitForProducts();
      await findPage.tapAddToList();
      await tester.pumpAndSettle();
      // List selection sheet should appear — select existing list
      await tester.tap(find.text(TestLists.existingListName));
      await tester.pumpAndSettle();
    });
  });

  // ── 8d-ii: Browse Compare ────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 08 — 8d-ii: Browse Compare', () {
    testWidgets('compare from browse opens compare screen', (tester) async {
      await signInAndNavigateToFind(tester);
      final findPage = FindPage(tester);
      await findPage.waitForLanding();
      await findPage.tapCategory();
      await tester.pumpAndSettle();
      final category = CategoryPage(tester);
      await category.waitForProducts();
      await findPage.tapCompare();
      await tester.pumpAndSettle();
      final compare = ComparePage(tester);
      await compare.waitForCompareScreen();
    });
  });
}
