import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSDivider', () {
    Widget createTestWidget({
      double? height,
      double? thickness,
      Color? color,
    }) {
      return MaterialApp(
        theme: dsTheme,
        home: Scaffold(
          body: DSDivider(
            height: height,
            thickness: thickness,
            color: color,
          ),
        ),
      );
    }

    testWidgets('renders a Divider widget', (WidgetTester tester) async {
      await tester.pumpWidget(createTestWidget());

      expect(find.byType(Divider), findsOneWidget);
      expect(find.byType(DSDivider), findsOneWidget);
    });

    testWidgets('uses default height of 1 when not specified', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget());

      final Divider divider = tester.widget<Divider>(find.byType(Divider));
      expect(divider.height, 1);
    });

    testWidgets('uses default thickness of 1 when not specified', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget());

      final Divider divider = tester.widget<Divider>(find.byType(Divider));
      expect(divider.thickness, 1);
    });

    testWidgets('uses custom height when provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(height: 10));

      final Divider divider = tester.widget<Divider>(find.byType(Divider));
      expect(divider.height, 10);
    });

    testWidgets('uses custom thickness when provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(thickness: 3));

      final Divider divider = tester.widget<Divider>(find.byType(Divider));
      expect(divider.thickness, 3);
    });

    testWidgets('uses theme default color when custom color not provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget());

      final Divider divider = tester.widget<Divider>(find.byType(Divider));
      expect(divider.color, isNotNull);
    });

    testWidgets('applies custom height and thickness together', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(height: 20, thickness: 5),
      );

      final Divider divider = tester.widget<Divider>(find.byType(Divider));
      expect(divider.height, 20);
      expect(divider.thickness, 5);
    });
  });
}
