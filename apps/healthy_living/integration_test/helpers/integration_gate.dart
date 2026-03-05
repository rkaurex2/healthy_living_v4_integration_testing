// integration_test/helpers/integration_gate.dart
//
// Controls whether integration tests execute or skip.
// Set the INTEGRATION_TESTS_APPROVED environment variable to 'true' to enable.
// Until then, all integration tests skip with a documented reason.
//
// Usage:
//   void main() {
//     IntegrationGate.skipIfNotApproved();
//     // ... test code
//   }

import 'package:flutter_test/flutter_test.dart';

class IntegrationGate {
  /// Call at the top of every integration test main() before any test definitions.
  /// If the gate is not open, all tests in the file are skipped — not failed.
  static void skipIfNotApproved() {
    const approved = String.fromEnvironment(
      'INTEGRATION_TESTS_APPROVED',
      defaultValue: 'false',
    );
    if (approved != 'true') {
      // Using markTestSkipped at the group level isn't possible in Dart test,
      // so we use a global setUp that skips each test individually.
      setUp(() {
        markTestSkipped(
          'Integration tests are pending client sign-off. '
          'Set INTEGRATION_TESTS_APPROVED=true in GitHub Secrets to enable. '
          'Prerequisites: staging environment confirmed, RevenueCat sandbox configured.',
        );
      });
    }
  }
}
