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
import '../pages/search/search_filters_page.dart';
import '../pages/product_detail/product_detail_page.dart';
import '../pages/browse/find_page.dart';
import '../pages/lists/lists_page.dart';
import '../pages/compare/compare_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<void> signInAndNavigateToSearch(WidgetTester tester) async {
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

  // ── 1a-i: All Products Tab ─────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 02 — 1a-i: All Products Tab', () {
    testWidgets('search shows 5 tabs and all-products results', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();
      // Verify all 5 tabs are visible
      expect(find.byKey(TestKeys.searchAllProductsTab), findsOneWidget);
      expect(find.byKey(TestKeys.searchProductsTab), findsOneWidget);
      expect(find.byKey(TestKeys.searchBrandsTab), findsOneWidget);
      expect(find.byKey(TestKeys.searchIngredientsTab), findsOneWidget);
      expect(find.byKey(TestKeys.searchListsTab), findsOneWidget);
    });
  });

  // ── 1a-ii: Products Tab ────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 02 — 1a-ii: Products Tab', () {
    testWidgets('products tab shows results', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.tapProductsTab();
      await search.waitForResults();
    });
  });

  // ── 1a-iii: Brands Tab ────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 02 — 1a-iii: Brands Tab', () {
    testWidgets('brands tab shows brand cards', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.tapBrandsTab();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.brandCard), findsWidgets);
    });
  });

  // ── 1a-iv: Ingredients Tab ─────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 02 — 1a-iv: Ingredients Tab', () {
    testWidgets('ingredients tab shows results', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.tapIngredientsTab();
      await tester.pumpAndSettle();
      // Ingredient results should appear
      expect(find.byKey(TestKeys.searchResultsList), findsOneWidget);
    });

    testWidgets('tap ingredient navigates to detail', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestIngredients.searchableName);
      await search.tapIngredientsTab();
      await tester.pumpAndSettle();
      // Tap first ingredient result → ingredient detail screen
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.ingredientDetailScreen), findsOneWidget);
    });
  });

  // ── 1a-v: Lists Tab ───────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 02 — 1a-v: Lists Tab', () {
    testWidgets('lists tab shows user lists', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.tapListsTab();
      await tester.pumpAndSettle();
      expect(find.text(TestLists.existingListName), findsOneWidget);
    });
  });

  // ── 1b: Filters ────────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 02 — 1b: Filters', () {
    testWidgets('filter sheet opens and filters apply', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();
      await search.tapFilter();
      await tester.pumpAndSettle();
      final filters = SearchFiltersPage(tester);
      await filters.toggleEwgVerified();
      await tester.pumpAndSettle();
      // Results should be filtered
      expect(find.byKey(TestKeys.searchResultsList), findsOneWidget);
    });

    testWidgets('sort by option reorders results', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();
      await search.tapFilter();
      final filters = SearchFiltersPage(tester);
      await filters.selectSortBy();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.searchResultsList), findsOneWidget);
    });
  });

  // ── 1c: No Results ─────────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 02 — 1c: No Results', () {
    testWidgets('invalid search shows no results view', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.noResults);
      await search.waitForNoResults();
    });
  });

  // ── 1d: Three-dot Menu ─────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 02 — 1d: Three-dot Menu', () {
    testWidgets('add to list from menu', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();
      await search.tapThreeDots();
      await search.tapAddToListFromMenu();
      await tester.pumpAndSettle();
      // List selection sheet should appear — select existing list
      await tester.tap(find.text(TestLists.existingListName));
      await tester.pumpAndSettle();
    });

    testWidgets('compare from menu', (tester) async {
      await signInAndNavigateToSearch(tester);
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();
      await search.tapThreeDots();
      await search.tapCompareFromMenu();
      await tester.pumpAndSettle();
      // Product should be added to compare tray
      expect(find.byKey(TestKeys.compareScreen), findsOneWidget);
    });
  });
}
