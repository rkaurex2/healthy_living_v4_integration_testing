import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class ForgotPasswordPage extends BasePage {
  const ForgotPasswordPage(super.tester);

  Future<void> enterEmail(String email) =>
      enterText(TestKeys.forgotEmailField, email);
  Future<void> submit() => tap(TestKeys.forgotSubmitButton);
  Future<void> waitForSuccess() => waitFor(TestKeys.forgotSuccessView);
}
