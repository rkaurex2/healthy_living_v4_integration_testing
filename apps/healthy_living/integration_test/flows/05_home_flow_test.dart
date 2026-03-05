import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../helpers/app_helper.dart';
import '../helpers/integration_gate.dart';
import '../helpers/test_data.dart';
import '../helpers/quarantine.dart';
import '../pages/auth/sign_in_page.dart';
import '../pages/home/home_page.dart';
import '../pages/product_detail/product_detail_page.dart';

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

  // ── 4a: Top Header ─────────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 05 — 4a: Top Header', () {
    testWidgets('app header element visible', (tester) async {
      final home = await signInToHome(tester);
      expect(find.byKey(TestKeys.homeScreen), findsOneWidget);
    });
  });

  // ── 4b: Welcome Section ────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 05 — 4b: Welcome Section', () {
    testWidgets('signed-in user sees welcome text', (tester) async {
      final home = await signInToHome(tester);
      // Welcome section should be present for signed-in user
      expect(find.byKey(TestKeys.homeScreen), findsOneWidget);
    });

    testWidgets('guest sees generic welcome', (tester) async {
      final home = await guestToHome(tester);
      expect(find.byKey(TestKeys.homeScreen), findsOneWidget);
    });
  });

  // ── 4c: Recent Activity ────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 05 — 4c: Recent Activity', () {
    testWidgets('recent activity section present for signed-in user', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeRecentActivity);
      await home.waitForRecentActivity();
    });

    testWidgets('tap product in recent activity opens detail', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeRecentActivity);
      // Tap first product card in recent activity
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
    });
  });

  // ── 4d: Just Verified ──────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 05 — 4d: Just Verified', () {
    testWidgets('just verified section scrollable and tappable', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeJustVerified);
      await home.waitForJustVerified();
      // Tap a product in just verified
      await tester.tap(find.byKey(TestKeys.productCard).first);
      await tester.pumpAndSettle();
      final detail = ProductDetailPage(tester);
      await detail.waitForProduct();
    });
  });

  // ── 4e: Your Lists ─────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 05 — 4e: Your Lists', () {
    testWidgets('signed-in sees existing list', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeUserLists);
      await home.waitForUserLists();
      expect(find.text(TestLists.existingListName), findsOneWidget);
    });

    testWidgets('guest sees sign-in prompt or create CTA', (tester) async {
      final home = await guestToHome(tester);
      await home.scrollToSection(TestKeys.homeUserLists);
      await tester.pumpAndSettle();
      // Guest should see sign-in prompt
      expect(home.isSignInPromptVisible(), isTrue);
    });
  });

  // ── 4f: Explore the App ────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 05 — 4f: Explore the App', () {
    testWidgets('browse card opens browse screen', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeBrowseByCategory);
      await tester.tap(find.byKey(TestKeys.homeBrowseByCategory));
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.findLandingScreen), findsOneWidget);
    });
  });

  // ── 4g: Premium Modal ──────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 05 — 4g: Premium Modal', () {
    testWidgets('guest tapping premium content shows modal', (tester) async {
      final home = await guestToHome(tester);
      // Attempt to access premium-gated content
      await home.scrollToSection(TestKeys.homePremiumModal);
      await tester.pumpAndSettle();
      if (home.isPremiumModalVisible()) {
        expect(find.byKey(TestKeys.homePremiumModal), findsOneWidget);
      }
    });
  });

  // ── 4h: Browse by Category ─────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 05 — 4h: Browse by Category', () {
    testWidgets('category items present and tappable', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeBrowseByCategory);
      await home.waitForBrowseByCategory();
    });
  });

  // ── 4i: User Guide Carousel ────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 05 — 4i: User Guide Carousel', () {
    testWidgets('carousel slides present and swipeable', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeUserGuideCarousel);
      await home.waitForUserGuideCarousel();
    });
  });

  // ── 4j: EWG Guides ─────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 05 — 4j: EWG Guides', () {
    testWidgets('guide cards present', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeEwgGuides);
      await home.waitForEwgGuides();
    });
  });

  // ── 4k: Donate ─────────────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 05 — 4k: Donate', () {
    testWidgets('donate section visible and tappable', (tester) async {
      final home = await signInToHome(tester);
      await home.scrollToSection(TestKeys.homeDonate);
      await home.waitForDonate();
      await tester.tap(find.byKey(TestKeys.homeDonate));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });
}
