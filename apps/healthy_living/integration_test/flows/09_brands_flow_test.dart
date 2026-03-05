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
    await search.enterSearch(TestBrands.searchable);
    await search.tapBrandsTab();
    await tester.pumpAndSettle();
  }

  // ── 9a: Brand Search ────────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 09 — 9a: Brand Search', () {
    testWidgets('search for brand shows brand cards', (tester) async {
      await signInAndSearch(tester);
      expect(find.byKey(TestKeys.brandCard), findsWidgets);
    });
  });

  // ── 9b: Brand Detail ───────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 09 — 9b: Brand Detail', () {
    testWidgets('tap brand card shows brands screen with products',
        (tester) async {
      await signInAndSearch(tester);
      await tester.tap(find.byKey(TestKeys.brandCard).first);
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.brandsScreen), findsOneWidget);
      expect(find.byKey(TestKeys.productCard), findsWidgets);
    });
  });

  // ── 9c: Brand Product Nav ──────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 09 — 9c: Brand Product Nav', () {
    testWidgets('tap product from brand detail opens product detail',
        (tester) async {
      await signInAndSearch(tester);
      await tester.tap(find.byKey(TestKeys.brandCard).first);
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.brandsScreen), findsOneWidget);
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.productDetailScreen), findsOneWidget);
    });
  });
}
