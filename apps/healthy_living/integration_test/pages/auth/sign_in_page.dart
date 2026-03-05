import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class SignInPage extends BasePage {
  const SignInPage(super.tester);

  Future<void> enterEmail(String email) =>
      enterText(TestKeys.signInEmailField, email);
  Future<void> enterPassword(String password) =>
      enterText(TestKeys.signInPasswordField, password);
  Future<void> tapSubmit() => tap(TestKeys.signInSubmitButton);
  Future<void> tapForgotPassword() => tap(TestKeys.forgotPasswordButton);
  Future<void> tapCreateAccount() => tap(TestKeys.createAccountButton);
  Future<void> tapContinueAsGuest() => tap(TestKeys.continueAsGuestButton);
  Future<void> waitForHome() => waitFor(TestKeys.homeScreen);
  Future<void> waitForError() async {
    await tester.pumpAndSettle();
    expect(find.byKey(TestKeys.errorBanner), findsOneWidget);
  }

  Future<void> signIn(String email, String password) async {
    await enterEmail(email);
    await enterPassword(password);
    await tapSubmit();
    await waitForHome();
  }
}
