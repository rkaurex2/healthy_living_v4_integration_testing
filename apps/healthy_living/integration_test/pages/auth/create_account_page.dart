import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class CreateAccountPage extends BasePage {
  const CreateAccountPage(super.tester);

  Future<void> enterEmail(String email) =>
      enterText(TestKeys.createAccEmailField, email);
  Future<void> enterPassword(String password) =>
      enterText(TestKeys.createAccPasswordField, password);
  Future<void> submit() => tap(TestKeys.createAccSubmitButton);
  Future<void> waitForHome() => waitFor(TestKeys.homeScreen);
}
