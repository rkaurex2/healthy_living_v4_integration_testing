import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class ListDetailPage extends BasePage {
  const ListDetailPage(super.tester);

  Future<void> waitForProducts() async {
    await tester.pumpAndSettle();
    expect(find.byKey(TestKeys.productCard), findsWidgets);
  }

  Future<void> waitForEmpty() async {
    await tester.pumpAndSettle();
    expect(find.byKey(TestKeys.productCard), findsNothing);
  }

  Future<void> removeProduct() => tap(TestKeys.productCard);
}
