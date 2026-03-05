import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class HistoryPage extends BasePage {
  const HistoryPage(super.tester);

  Future<void> waitForScreen() => waitFor(TestKeys.historyScreen);
  Future<void> tapAllFilter() => tap(TestKeys.historyAllFilter);
  Future<void> tapViewedFilter() => tap(TestKeys.historyViewedFilter);
  Future<void> tapSubmittedFilter() => tap(TestKeys.historySubmittedFilter);

  Future<void> waitForProducts() async {
    await tester.pumpAndSettle();
    expect(find.byKey(TestKeys.productCard), findsWidgets);
  }

  Future<void> tapProduct() => tap(TestKeys.productCard);
}
