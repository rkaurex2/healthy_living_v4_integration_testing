import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSText', () {
    Widget createTestWidget(Widget child) {
      return MaterialApp(
        theme: dsTheme,
        home: Scaffold(body: child),
      );
    }

    testWidgets('renders text content', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          DSText(
            text: 'Hello World',
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: Colors.black,
          ),
        ),
      );

      expect(find.text('Hello World'), findsOneWidget);
      expect(find.byType(Text), findsOneWidget);
    });

    testWidgets('returns SizedBox.shrink when text is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          DSText(
            text: null,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: Colors.black,
          ),
        ),
      );

      expect(find.byType(SizedBox), findsOneWidget);
      expect(find.byType(Text), findsNothing);
    });

    testWidgets('returns SizedBox.shrink when text is empty', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          DSText(
            text: '',
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: Colors.black,
          ),
        ),
      );

      expect(find.byType(SizedBox), findsOneWidget);
      expect(find.byType(Text), findsNothing);
    });

    testWidgets('shows text with correct color', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          DSText(
            text: 'Colored Text',
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: Colors.red,
          ),
        ),
      );

      final DSText dsText = tester.widget<DSText>(find.byType(DSText));
      expect(dsText.textColor, Colors.red);
    });

    testWidgets('.rich() constructor renders InlineSpan content', (
      WidgetTester tester,
    ) async {
      const testSpan = TextSpan(
        text: 'Rich ',
        children: [
          TextSpan(
            text: 'Text',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );

      await tester.pumpWidget(
        createTestWidget(
          DSText.rich(
            textSpan: testSpan,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: Colors.black,
          ),
        ),
      );

      expect(find.byType(Text), findsOneWidget);

      final Text textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.textSpan, isNotNull);
    });

    testWidgets('applies textAlign property', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          DSText(
            text: 'Centered',
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: Colors.black,
            textAlign: TextAlign.center,
          ),
        ),
      );

      final Text textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.textAlign, TextAlign.center);
    });

    testWidgets('applies maxLines and overflow properties', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          DSText(
            text: 'Long text that might overflow',
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: Colors.black,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      );

      final Text textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.maxLines, 1);
      expect(textWidget.overflow, TextOverflow.ellipsis);
    });

    testWidgets('.rich() takes precedence when textSpan is set', (
      WidgetTester tester,
    ) async {
      const testSpan = TextSpan(text: 'Span Text');

      await tester.pumpWidget(
        createTestWidget(
          DSText.rich(
            textSpan: testSpan,
            text: 'Regular Text',
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: Colors.black,
          ),
        ),
      );

      // Text.rich should be used since textSpan is not null
      final Text textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.textSpan, isNotNull);
    });
  });
}
