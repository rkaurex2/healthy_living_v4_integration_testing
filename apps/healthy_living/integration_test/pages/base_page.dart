import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class BasePage {
  final WidgetTester tester;
  const BasePage(this.tester);

  Future<void> waitFor(
    Key key, {
    Duration timeout = const Duration(seconds: 10),
  }) async {
    await tester.pumpAndSettle(timeout);
    expect(find.byKey(key), findsOneWidget);
  }

  Future<void> tap(Key key) async {
    await tester.tap(find.byKey(key));
    await tester.pumpAndSettle();
  }

  Future<void> enterText(Key key, String text) async {
    await tester.enterText(find.byKey(key), text);
    await tester.pumpAndSettle();
  }

  Future<void> scrollUntilVisible(Key key, {double dy = -300}) async {
    await tester.scrollUntilVisible(find.byKey(key), dy);
    await tester.pumpAndSettle();
  }

  Future<void> waitForAbsent(
    Key key, {
    Duration timeout = const Duration(seconds: 10),
  }) async {
    await tester.pumpAndSettle(timeout);
    expect(find.byKey(key), findsNothing);
  }

  bool isVisible(Key key) => find.byKey(key).evaluate().isNotEmpty;
}
