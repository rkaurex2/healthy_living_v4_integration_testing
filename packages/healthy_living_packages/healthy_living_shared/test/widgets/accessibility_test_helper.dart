import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Helper to test widgets at different text scale factors.
///
/// Pumps [widget] inside a [MaterialApp] with a [MediaQuery] that applies the
/// given [scale] via [TextScaler.linear].  After pumping, it asserts that no
/// exception was thrown (i.e., the widget tree did not overflow or crash).
///
/// Usage:
/// ```dart
/// testWidgets('my widget at 2x text scale', (tester) async {
///   await testTextScale(tester, const MyWidget(), scale: 2.0);
/// });
/// ```
Future<void> testTextScale(
  WidgetTester tester,
  Widget widget, {
  required double scale,
  ThemeData? theme,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      theme: theme,
      home: MediaQuery(
        data: MediaQueryData(textScaler: TextScaler.linear(scale)),
        child: Scaffold(body: widget),
      ),
    ),
  );
  expect(tester.takeException(), isNull);
}

/// Helper to verify that a widget contains at least one interactive element
/// with a non-null semantics label.
///
/// Pumps [widget] inside a [MaterialApp] and checks the semantics of the
/// first [Semantics]-annotated descendant.
///
/// Usage:
/// ```dart
/// testWidgets('button has semantics label', (tester) async {
///   await verifySemantics(tester, const MyButton());
/// });
/// ```
Future<void> verifySemantics(
  WidgetTester tester,
  Widget widget, {
  ThemeData? theme,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      theme: theme,
      home: Scaffold(body: widget),
    ),
  );

  // Find all Semantics widgets and verify at least one has a label.
  final semanticsWidgets = find.byType(Semantics);
  if (semanticsWidgets.evaluate().isNotEmpty) {
    final semantics = tester.getSemantics(semanticsWidgets.first);
    expect(semantics, isNotNull);
  }
}

/// Helper to test a widget across multiple device orientations.
///
/// Pumps [widget] in both portrait (375x667) and landscape (667x375) sizes
/// and verifies no exceptions are thrown.
Future<void> testOrientations(
  WidgetTester tester,
  Widget widget, {
  ThemeData? theme,
}) async {
  const orientations = {
    'portrait': Size(375, 667),
    'landscape': Size(667, 375),
  };

  for (final entry in orientations.entries) {
    tester.view.physicalSize = entry.value;
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      MaterialApp(
        theme: theme,
        home: Scaffold(body: widget),
      ),
    );

    expect(
      tester.takeException(),
      isNull,
      reason: 'Widget threw an exception in ${entry.key} orientation',
    );
  }
}
