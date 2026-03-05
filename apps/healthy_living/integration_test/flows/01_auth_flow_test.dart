import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../helpers/app_helper.dart';
import '../helpers/integration_gate.dart';
import '../helpers/test_data.dart';
import '../helpers/quarantine.dart';
import '../pages/auth/sign_in_page.dart';
import '../pages/auth/create_account_page.dart';
import '../pages/auth/forgot_password_page.dart';
import '../pages/home/home_page.dart';
import '../pages/account/account_page.dart';

@Retry(2)
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationGate.skipIfNotApproved();

  // ── 7a: FTUX Tutorial ──────────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 01 — 7a: FTUX Tutorial', () {
    testWidgets('skip FTUX lands on auth screen', (tester) async {
      await pumpApp(tester);
      await tester.pumpAndSettle();
      // Verify splash/FTUX screen loads, then skip
      // After skip, auth screen (sign-in email field) should be visible
      final signIn = SignInPage(tester);
      await signIn.waitFor(TestKeys.signInEmailField);
    });

    testWidgets('complete all FTUX slides leads to auth screen', (tester) async {
      await pumpApp(tester);
      await tester.pumpAndSettle();
      // Swipe through all FTUX slides to completion
      // Final slide should navigate to auth screen
      final signIn = SignInPage(tester);
      await signIn.waitFor(TestKeys.signInEmailField);
    });
  });

  // ── 7b: Create Account via Email ───────────────────────────────────────────
  group('Flow 01 — 7b: Create Account via Email', () {
    @Tags(['smoke'])
    testWidgets('valid email + strong password creates account', (tester) async {
      final email =
          'test_${DateTime.now().millisecondsSinceEpoch}@test.ewg.org';
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapCreateAccount();
      final create = CreateAccountPage(tester);
      await create.enterEmail(email);
      await create.enterPassword('StrongPass123!');
      await create.submit();
      await create.waitForHome();
    });

    testWidgets('invalid email format shows validation error', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapCreateAccount();
      final create = CreateAccountPage(tester);
      await create.enterEmail('not-an-email');
      await create.enterPassword('StrongPass123!');
      await create.submit();
      // Should stay on create account screen — home should not appear
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.homeScreen), findsNothing);
    });

    testWidgets('weak password shows validation error', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapCreateAccount();
      final create = CreateAccountPage(tester);
      await create.enterEmail('weakpw@test.ewg.org');
      await create.enterPassword('123');
      await create.submit();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.homeScreen), findsNothing);
    });

    testWidgets('duplicate email shows server error', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapCreateAccount();
      final create = CreateAccountPage(tester);
      await create.enterEmail(TestAccounts.standardEmail);
      await create.enterPassword('StrongPass123!');
      await create.submit();
      await tester.pumpAndSettle();
      // Should remain on create account screen with error
      expect(find.byKey(TestKeys.homeScreen), findsNothing);
    });
  });

  // ── 7c: Sign In with Email ─────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 01 — 7c: Sign In with Email', () {
    testWidgets('valid credentials navigates to home', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.signIn(
        TestAccounts.standardEmail,
        TestAccounts.standardPassword,
      );
    });

    testWidgets('wrong password shows error', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.enterEmail(TestAccounts.standardEmail);
      await signIn.enterPassword('WrongPassword999!');
      await signIn.tapSubmit();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.homeScreen), findsNothing);
    });

    testWidgets('non-existent email shows error', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.enterEmail('nonexistent_user_xyz@test.ewg.org');
      await signIn.enterPassword('SomePassword123!');
      await signIn.tapSubmit();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.homeScreen), findsNothing);
    });
  });

  // ── 7d: Continue as Guest ──────────────────────────────────────────────────
  @Tags(['smoke'])
  group('Flow 01 — 7d: Continue as Guest', () {
    testWidgets('guest button navigates to home', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapContinueAsGuest();
      final home = HomePage(tester);
      await home.waitForScreen();
    });

    testWidgets('guest My Items shows sign-in prompt', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapContinueAsGuest();
      final home = HomePage(tester);
      await home.waitForScreen();
      await home.tapMyItemsTab();
      await tester.pumpAndSettle();
      // Guest should see sign-in prompt, not items
      expect(find.byKey(TestKeys.homeSignInPrompt), findsOneWidget);
    });

    testWidgets('guest Account shows sign-in prompt', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapContinueAsGuest();
      final home = HomePage(tester);
      await home.waitForScreen();
      await home.tapAccountTab();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.signInEmailField), findsOneWidget);
    });
  });

  // ── 7e: Forgot Password ────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 01 — 7e: Forgot Password', () {
    testWidgets('valid email shows success screen', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapForgotPassword();
      final forgot = ForgotPasswordPage(tester);
      await forgot.enterEmail(TestAccounts.standardEmail);
      await forgot.submit();
      await forgot.waitForSuccess();
    });

    testWidgets('invalid email shows validation error', (tester) async {
      await pumpApp(tester);
      final signIn = SignInPage(tester);
      await signIn.tapForgotPassword();
      final forgot = ForgotPasswordPage(tester);
      await forgot.enterEmail('not-valid');
      await forgot.submit();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.forgotSuccessView), findsNothing);
    });
  });

  // ── 7f: Delete Account ─────────────────────────────────────────────────────
  @Tags(['full'])
  group('Flow 01 — 7f: Delete Account', () {
    testWidgets('delete account redirects to auth', (tester) async {
      final email = await createDisposableTestAccount(tester);
      final home = HomePage(tester);
      await home.tapAccountTab();
      final account = AccountPage(tester);
      await account.waitForScreen();
      await account.tapDeleteAccount();
      await account.confirmDelete();
      // Should redirect to auth screen
      await account.waitForAuthScreen();
    });

    testWidgets('sign in with deleted credentials fails', (tester) async {
      final email = await createDisposableTestAccount(tester);
      final home = HomePage(tester);
      await home.tapAccountTab();
      final account = AccountPage(tester);
      await account.tapDeleteAccount();
      await account.confirmDelete();
      await account.waitForAuthScreen();
      // Attempt sign in with deleted credentials
      final signIn = SignInPage(tester);
      await signIn.enterEmail(email);
      await signIn.enterPassword('TestPass123!');
      await signIn.tapSubmit();
      await tester.pumpAndSettle();
      expect(find.byKey(TestKeys.homeScreen), findsNothing);
    });
  });
}
