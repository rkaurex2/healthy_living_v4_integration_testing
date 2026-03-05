import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSSpacingWidget', () {
    Widget createTestWidget(Widget child) {
      return MaterialApp(
        theme: dsTheme,
        home: Scaffold(body: child),
      );
    }

    testWidgets('horizontal creates SizedBox with width', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSSpacingWidget.horizontal(spacing: 16)),
      );

      final SizedBox sizedBox = tester.widget<SizedBox>(
        find.byType(SizedBox),
      );
      expect(sizedBox.width, 16);
      expect(sizedBox.height, isNull);
    });

    testWidgets('vertical creates SizedBox with height', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSSpacingWidget.vertical(spacing: 24)),
      );

      final SizedBox sizedBox = tester.widget<SizedBox>(
        find.byType(SizedBox),
      );
      expect(sizedBox.height, 24);
      expect(sizedBox.width, isNull);
    });

    testWidgets('horizontal with zero spacing creates zero-width SizedBox', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSSpacingWidget.horizontal(spacing: 0)),
      );

      final SizedBox sizedBox = tester.widget<SizedBox>(
        find.byType(SizedBox),
      );
      expect(sizedBox.width, 0);
    });

    testWidgets('vertical with zero spacing creates zero-height SizedBox', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSSpacingWidget.vertical(spacing: 0)),
      );

      final SizedBox sizedBox = tester.widget<SizedBox>(
        find.byType(SizedBox),
      );
      expect(sizedBox.height, 0);
    });

    testWidgets('horizontal with large spacing value', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSSpacingWidget.horizontal(spacing: 100)),
      );

      final SizedBox sizedBox = tester.widget<SizedBox>(
        find.byType(SizedBox),
      );
      expect(sizedBox.width, 100);
    });

    testWidgets('vertical with large spacing value', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSSpacingWidget.vertical(spacing: 100)),
      );

      final SizedBox sizedBox = tester.widget<SizedBox>(
        find.byType(SizedBox),
      );
      expect(sizedBox.height, 100);
    });
  });
}
