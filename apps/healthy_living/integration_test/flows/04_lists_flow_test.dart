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
import '../pages/lists/lists_page.dart';
import '../pages/lists/list_detail_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  Future<void> signInAndNavigateToLists(WidgetTester tester) async {
    await pumpApp(tester);
    final signIn = SignInPage(tester);
    await signIn.signIn(
      TestAccounts.standardEmail,
      TestAccounts.standardPassword,
    );
    final home = HomePage(tester);
    await home.tapMyItemsTab();
    await tester.pumpAndSettle();
  }

  // ── 3a: Create List ────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 04 — 3a: Create List', () {
    testWidgets('create new list with name', (tester) async {
      await signInAndNavigateToLists(tester);
      final lists = ListsPage(tester);
      await lists.tapCreateList();
      await lists.enterListName(TestLists.newListName);
      await tester.pumpAndSettle();
      // Confirm creation
      await tester.tap(find.byKey(TestKeys.confirmDeleteButton));
      await tester.pumpAndSettle();
      expect(find.text(TestLists.newListName), findsOneWidget);
    });
  });

  // ── 3b: Add Products to List ───────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 04 — 3b: Add Products to List', () {
    testWidgets('add product to list via search', (tester) async {
      await signInAndNavigateToLists(tester);
      // Navigate to search to add product
      final home = HomePage(tester);
      await home.tapFindTab();
      final search = SearchPage(tester);
      await search.enterSearch(TestSearchTerms.valid);
      await search.waitForResults();
      await search.tapThreeDots();
      await search.tapAddToListFromMenu();
      await tester.pumpAndSettle();
      await tester.tap(find.text(TestLists.newListName));
      await tester.pumpAndSettle();
      // Navigate back to lists and verify
      await home.tapMyItemsTab();
      await tester.pumpAndSettle();
      final lists = ListsPage(tester);
      await lists.tapList();
      final detail = ListDetailPage(tester);
      await detail.waitForProducts();
    });
  });

  // ── 3c: Rename List ────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 04 — 3c: Rename List', () {
    testWidgets('rename list updates header', (tester) async {
      await signInAndNavigateToLists(tester);
      final lists = ListsPage(tester);
      await lists.tapRename();
      await lists.enterListName(TestLists.renamedListName);
      await tester.pumpAndSettle();
      expect(find.text(TestLists.renamedListName), findsOneWidget);
    });
  });

  // ── 3d: Remove Products from List ──────────────────────────────────────────
  @Tags(['full'])
  group('Flow 04 — 3d: Remove Products from List', () {
    testWidgets('remove product shows empty state', (tester) async {
      await signInAndNavigateToLists(tester);
      final lists = ListsPage(tester);
      await lists.tapList();
      final detail = ListDetailPage(tester);
      await detail.removeProduct();
      await tester.pumpAndSettle();
      // After removing the only product, should show empty state
      await detail.waitForEmpty();
    });
  });

  // ── 3e: Delete List ────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 04 — 3e: Delete List', () {
    testWidgets('delete list removes from screen', (tester) async {
      await signInAndNavigateToLists(tester);
      final lists = ListsPage(tester);
      await lists.tapDelete();
      await lists.confirmDelete();
      await tester.pumpAndSettle();
      expect(find.text(TestLists.renamedListName), findsNothing);
    });
  });

  // ── 3f: View List Screen ───────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 04 — 3f: View List Screen', () {
    testWidgets('lists screen shows existing list', (tester) async {
      await signInAndNavigateToLists(tester);
      await tester.pumpAndSettle();
      expect(find.text(TestLists.existingListName), findsOneWidget);
    });
  });

  // ── 3g: View List Detail ───────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 04 — 3g: View List Detail', () {
    testWidgets('tap list shows products in detail', (tester) async {
      await signInAndNavigateToLists(tester);
      final lists = ListsPage(tester);
      await tester.tap(find.text(TestLists.existingListName));
      await tester.pumpAndSettle();
      final detail = ListDetailPage(tester);
      await detail.waitForProducts();
    });
  });

  // ── 3h: Share List ─────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 04 — 3h: Share List', () {
    testWidgets('share list triggers share sheet', (tester) async {
      await signInAndNavigateToLists(tester);
      final lists = ListsPage(tester);
      await lists.tapShare();
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });
}
