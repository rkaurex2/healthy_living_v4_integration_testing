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
import '../pages/ingredient_preference/ingredient_preference_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<void> signInAndNavigateToPreferences(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.signIn(
      TestAccounts.standardEmail,
      TestAccounts.standardPassword,
    );
    // Navigate to ingredient preferences (accessible from account or settings)
    final home = HomePage(tester);
    await home.tapAccountTab();
    await tester.pumpAndSettle();
  }

  // ── 12a: Preference FTUX ──────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 12 — 12a: Preference FTUX', () {
    testWidgets('skip FTUX shows category selection', (tester) async {
      await signInAndNavigateToPreferences(tester);
      final prefPage = IngredientPreferencePage(tester);
      await prefPage.skipFtux();
      await prefPage.waitForCategories();
    });
  });

  // ── 12b: Category Selection ───────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 12 — 12b: Category Selection', () {
    testWidgets('select category shows avoid and prefer lists', (tester) async {
      await signInAndNavigateToPreferences(tester);
      final prefPage = IngredientPreferencePage(tester);
      await prefPage.skipFtux();
      await prefPage.waitForCategories();
      await prefPage.selectCategory();
      await prefPage.waitForAvoidList();
      await prefPage.waitForPreferList();
    });
  });

  // ── 12c: Avoid List ───────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 12 — 12c: Avoid List', () {
    testWidgets('avoid list shows ingredients to avoid', (tester) async {
      await signInAndNavigateToPreferences(tester);
      final prefPage = IngredientPreferencePage(tester);
      await prefPage.skipFtux();
      await prefPage.waitForCategories();
      await prefPage.selectCategory();
      await prefPage.waitForAvoidList();
      // Verify avoid list has content
      expect(find.byKey(TestKeys.ingredientAvoidList), findsOneWidget);
    });
  });

  // ── 12d: Product Flagging ─────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 12 — 12d: Product Flagging', () {
    testWidgets('product with avoided ingredient shows hazard badge',
        (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.signIn(
        TestAccounts.standardEmail,
        TestAccounts.standardPassword,
      );
      final home = HomePage(tester);
      await home.tapFindTab();
      final search = SearchPage(tester);
      await search.enterSearch(TestProducts.avoidIngProductUpc);
      await search.waitForResults();
      // Tap first product result
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
      expect(detail.isHazardBadgeVisible(), isTrue);
    });
  });
}
