import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class CategoryPage extends BasePage {
  const CategoryPage(super.tester);

  Future<void> waitForProducts() async {
    await tester.pumpAndSettle();
    expect(find.byKey(TestKeys.productCard), findsWidgets);
  }

  Future<void> tapSubcategory() => tap(TestKeys.subcategoryList);

  Future<void> waitForSubcategoryProducts() async {
    await tester.pumpAndSettle();
    expect(find.byKey(TestKeys.productCard), findsWidgets);
  }
}
