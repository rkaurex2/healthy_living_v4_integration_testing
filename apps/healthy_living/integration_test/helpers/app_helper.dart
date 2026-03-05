import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_living/src/ui/screens/main_screen.dart';

import '../pages/auth/sign_in_page.dart';
import '../pages/auth/create_account_page.dart';

Future<void> pumpApp(WidgetTester tester) async {
  await tester.pumpWidget(const ProviderScope(child: MainScreen()));
  await tester.pumpAndSettle();
}

/// Creates a fresh disposable test account for the delete-account test.
/// Uses a timestamped email so each run gets a unique account — no manual setup needed.
Future<String> createDisposableTestAccount(WidgetTester tester) async {
  final email =
      'disposable_${DateTime.now().millisecondsSinceEpoch}@test.ewg.org';
  const password = 'TestPass123!';
  await pumpApp(tester);
  final signIn = SignInPage(tester);
  await signIn.tapCreateAccount();
  final create = CreateAccountPage(tester);
  await create.enterEmail(email);
  await create.enterPassword(password);
  await create.submit();
  await create.waitForHome();
  return email;
}
