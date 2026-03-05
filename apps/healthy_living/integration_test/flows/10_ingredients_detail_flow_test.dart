import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../helpers/app_helper.dart';
import '../helpers/integration_gate.dart';
import '../helpers/test_data.dart';
import '../pages/auth/sign_in_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<void> navigateToIngredientDetail(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.signIn(
      TestAccounts.standardEmail,
      TestAccounts.standardPassword,
    );
    final home = HomePage(tester);
    await home.tapFindTab();
    final search = SearchPage(tester);
    await search.enterSearch(TestIngredients.searchableName);
    await search.tapIngredientsTab();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(TestKeys.productCard).first);
    await tester.pumpAndSettle();
  }

  // ── 10a: Ingredient Detail ─────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 10 — 10a: Ingredient Detail', () {
    testWidgets('search navigates to ingredient detail', (tester) async {
      await navigateToIngredientDetail(tester);
      expect(find.byKey(TestKeys.ingredientDetailScreen), findsOneWidget);
    });

    testWidgets('more about section visible', (tester) async {
      await navigateToIngredientDetail(tester);
      // Scroll down to reveal the more-about section
      await tester.scrollUntilVisible(
        find.byKey(TestKeys.ingredientMoreAbout),
        200,
      );
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.ingredientMoreAbout), findsOneWidget);
    });
  });

  // ── 10b: Ingredient Products ───────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 10 — 10b: Ingredient Products', () {
    testWidgets('ingredient detail shows related products', (tester) async {
      await navigateToIngredientDetail(tester);
      expect(find.byKey(TestKeys.ingredientDetailScreen), findsOneWidget);
      // Products containing this ingredient should be listed
      expect(find.byKey(TestKeys.productCard), findsWidgets);
    });
  });
}
