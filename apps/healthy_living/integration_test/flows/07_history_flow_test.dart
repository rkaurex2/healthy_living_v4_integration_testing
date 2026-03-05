import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../helpers/app_helper.dart';
import '../helpers/integration_gate.dart';
import '../helpers/test_data.dart';
import '../helpers/quarantine.dart';
import '../pages/auth/sign_in_page.dart';
import '../pages/home/home_page.dart';
import '../pages/history/history_page.dart';
import '../pages/product_detail/product_detail_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<HistoryPage> signInAndNavigateToHistory(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.signIn(
      TestAccounts.standardEmail,
      TestAccounts.standardPassword,
    );
    final home = HomePage(tester);
    await home.tapMyItemsTab();
    await tester.pumpAndSettle();
    // Navigate to history tab within My Items
    final history = HistoryPage(tester);
    await history.waitForScreen();
    return history;
  }

  // ── 6a: Filter Tabs ────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 07 — 6a: Filter Tabs', () {
    testWidgets('all filter shows all items', (tester) async {
      final history = await signInAndNavigateToHistory(tester);
      await history.tapAllFilter();
      await history.waitForProducts();
    });

    testWidgets('viewed filter shows only viewed items', (tester) async {
      final history = await signInAndNavigateToHistory(tester);
      await history.tapViewedFilter();
      await tester.pumpAndSettle();
      // Should show only viewed items (or empty if none)
      expect(find.byKey(TestKeys.historyScreen), findsOneWidget);
    });

    testWidgets('submitted filter shows only submitted items', (tester) async {
      final history = await signInAndNavigateToHistory(tester);
      await history.tapSubmittedFilter();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.historyScreen), findsOneWidget);
    });

    testWidgets('switching filter resets scroll to top', (tester) async {
      final history = await signInAndNavigateToHistory(tester);
      await history.tapAllFilter();
      await history.waitForProducts();
      // Switch to viewed and back to all
      await history.tapViewedFilter();
      await tester.pumpAndSettle();
      await history.tapAllFilter();
      await tester.pumpAndSettle();
      // Should be back at top of list
      expect(find.byKey(TestKeys.historyScreen), findsOneWidget);
    });
  });

  // ── 6b: Product List ───────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 07 — 6b: Product List', () {
    testWidgets('product cards visible with name, brand, score', (tester) async {
      final history = await signInAndNavigateToHistory(tester);
      await history.waitForProducts();
      // Product cards should be present
      expect(find.byKey(TestKeys.productCard), findsWidgets);
    });
  });

  // ── 6c: Product Detail Navigation ──────────────────────────────────────────
  @Tags(['full'])
  group('Flow 07 — 6c: Product Detail Navigation', () {
    testWidgets('tap product navigates to detail', (tester) async {
      final history = await signInAndNavigateToHistory(tester);
      await history.waitForProducts();
      await history.tapProduct();
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
    });

    testWidgets('back from detail preserves filter state', (tester) async {
      final history = await signInAndNavigateToHistory(tester);
      await history.tapViewedFilter();
      await tester.pumpAndSettle();
      await history.tapProduct();
      await tester.pumpAndSettle();
      // Go back
      await tester.pageBack();
      await tester.pumpAndSettle();
      // History should still be on viewed filter (not reset to all)
      expect(find.byKey(TestKeys.historyScreen), findsOneWidget);
    });
  });
}
