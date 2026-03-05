import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DsRadio', () {
    late bool capturedValue;
    late int onChangedCallCount;

    void onChanged(bool value) {
      capturedValue = value;
      onChangedCallCount++;
    }

    setUp(() {
      capturedValue = false;
      onChangedCallCount = 0;
    });

    Widget createTestWidget({
      required bool value,
      bool enabled = true,
      String? label,
    }) {
      return MaterialApp(
        theme: dsTheme,
        home: Scaffold(
          body: DsRadio(
            value: value,
            onChanged: onChanged,
            enabled: enabled,
            label: label,
          ),
        ),
      );
    }

    testWidgets('renders radio circle container', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(value: false));

      expect(find.byType(DsRadio), findsOneWidget);
      expect(find.byType(GestureDetector), findsOneWidget);
    });

    testWidgets('shows selected state when value is true', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(value: true));

      // The inner container decoration should have a non-transparent selection
      // color when selected. We verify the widget renders without errors.
      expect(find.byType(DsRadio), findsOneWidget);

      // There should be two nested Container widgets forming the radio circle
      final containers = find.descendant(
        of: find.byType(DsRadio),
        matching: find.byType(Container),
      );
      expect(containers, findsAtLeastNWidgets(2));
    });

    testWidgets('shows unselected state when value is false', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(value: false));

      expect(find.byType(DsRadio), findsOneWidget);

      final containers = find.descendant(
        of: find.byType(DsRadio),
        matching: find.byType(Container),
      );
      expect(containers, findsAtLeastNWidgets(2));
    });

    testWidgets('calls onChanged with toggled value when tapped', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(value: false));

      await tester.tap(find.byType(GestureDetector));

      expect(onChangedCallCount, equals(1));
      expect(capturedValue, isTrue);
    });

    testWidgets('calls onChanged with false when tapped while selected', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(value: true));

      await tester.tap(find.byType(GestureDetector));

      expect(onChangedCallCount, equals(1));
      expect(capturedValue, isFalse);
    });

    testWidgets('does not call onChanged when disabled', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(value: false, enabled: false),
      );

      await tester.tap(find.byType(GestureDetector));

      expect(onChangedCallCount, equals(0));
    });

    testWidgets('shows label text when provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(value: false, label: 'Option A'),
      );

      expect(find.text('Option A'), findsOneWidget);
      expect(find.byType(DSText), findsOneWidget);
    });

    testWidgets('does not show label when not provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(value: false));

      expect(find.byType(DSText), findsNothing);
    });
  });
}
