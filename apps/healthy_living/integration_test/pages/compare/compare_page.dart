import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class ComparePage extends BasePage {
  const ComparePage(super.tester);

  Future<void> waitForCompareScreen() => waitFor(TestKeys.compareScreen);

  Future<void> verifyProductCount(int count) async {
    await tester.pumpAndSettle();
    expect(find.byKey(TestKeys.compareProductCard), findsNWidgets(count));
  }

  Future<void> dismissProduct() => tap(TestKeys.compareProductCard);
}
