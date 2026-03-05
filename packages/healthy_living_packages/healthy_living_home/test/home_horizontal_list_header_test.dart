import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

void main() {
  Widget createTestWidget({
    required final String text,
    final String? subText,
    final EdgeInsets? padding,
    final ListTitleHorizontalHeaderType? type,
  }) {
    return MaterialApp(
      theme: dsTheme,
      home: Scaffold(
        body: HeaderTitleType(
          text: text,
          type: type,
          subText: subText,
          padding: padding,
        ),
      ),
    );
  }

  group('HomeHorizontalListHeader', () {
    testWidgets('renders with required text parameter', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(text: 'Test Header'));

      expect(find.text('Test Header'), findsOneWidget);
    });

    testWidgets('renders with text and subText', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(text: 'Test header', subText: 'Sub Title'),
      );

      expect(find.text('Test header'), findsOneWidget);
      expect(find.text('Sub Title'), findsOneWidget);
    });

    testWidgets('does not render subText when null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(text: 'Main Title', subText: null),
      );

      expect(find.text('Main Title'), findsOneWidget);
      expect(find.byType(DSText), findsOneWidget);
    });

    testWidgets('uses default type when not specified', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(text: 'Test Header'));
      expect(find.byType(InkWell), findsNothing);
    });

    testWidgets('shows arrow button when type is withLinkType', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Test Header',
          type: ListTitleHorizontalHeaderType.withLinkType,
        ),
      );
      expect(find.byType(DSButtonIconCircle), findsOneWidget);
    });

    testWidgets('applies custom padding when provided', (
      WidgetTester tester,
    ) async {
      const customPadding = EdgeInsets.all(16.0);

      await tester.pumpWidget(
        createTestWidget(text: 'Test Header', padding: customPadding),
      );

      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.padding, equals(customPadding));
    });

    testWidgets('uses default padding when not provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(text: 'Test Header'));

      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.padding, isNotNull);
    });

    testWidgets('renders with all parameters', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Main Title',
          subText: 'Sub Title',
          padding: EdgeInsets.all(20.0),
          type: ListTitleHorizontalHeaderType.withLinkType,
        ),
      );

      expect(find.text('Main Title'), findsOneWidget);
      expect(find.text('Sub Title'), findsOneWidget);
      expect(find.byType(DSButtonIconCircle), findsOneWidget);
    });

    testWidgets('has correct widget structure', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Test Header',
          subText: 'Sub Title',
          type: ListTitleHorizontalHeaderType.withLinkType,
        ),
      );

      // Check the overall structure
      expect(find.byType(Container), findsAtLeastNWidgets(1));
      expect(find.byType(Column), findsAtLeastNWidgets(1));
      expect(find.byType(Row), findsOneWidget);
      expect(find.byType(Expanded), findsOneWidget);
    });

    testWidgets('DSImage uses correct asset', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Test Header',
          type: ListTitleHorizontalHeaderType.withLinkType,
        ),
      );

      final dsImage = tester.widget<DSImage>(find.byType(DSImage));
      expect(dsImage.path, equals(DSIcons.icArrowRight));
      expect(dsImage.height, equals(20));
      expect(dsImage.width, equals(20));
    });

    testWidgets('shows no arrow button when type is defaultType', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Test Header',
          type: ListTitleHorizontalHeaderType.defaultType,
        ),
      );
      expect(find.byType(InkWell), findsNothing);
      expect(find.byType(DSImage), findsNothing);
    });

    testWidgets('buttonIconCircleSize is ignored when type is defaultType', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Test Header',
          type: ListTitleHorizontalHeaderType.defaultType,
        ),
      );

      // Should not find any InkWell or button-related containers
      expect(find.byType(InkWell), findsNothing);
      expect(find.byType(DSImage), findsNothing);
    });

    testWidgets('renders only text elements when type is defaultType', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Main Title',
          subText: 'Sub Title',
          type: ListTitleHorizontalHeaderType.defaultType,
        ),
      );

      expect(find.text('Main Title'), findsOneWidget);
      expect(find.text('Sub Title'), findsOneWidget);
      expect(find.byType(DSText), findsNWidgets(2));
      expect(find.byType(InkWell), findsNothing);
      expect(find.byType(DSImage), findsNothing);
    });

    testWidgets('applies custom padding correctly for defaultType', (
      WidgetTester tester,
    ) async {
      const customPadding = EdgeInsets.all(24.0);

      await tester.pumpWidget(
        createTestWidget(
          text: 'Test Header',
          type: ListTitleHorizontalHeaderType.defaultType,
          padding: customPadding,
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.padding, equals(customPadding));
    });

    testWidgets('uses default padding for defaultType when not provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Test Header',
          type: ListTitleHorizontalHeaderType.defaultType,
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.padding, isNotNull);
    });

    testWidgets('renders with all relevant parameters for defaultType', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Main Title',
          subText: 'Sub Title',
          padding: EdgeInsets.all(20.0),
          type: ListTitleHorizontalHeaderType.defaultType,
        ),
      );

      expect(find.text('Main Title'), findsOneWidget);
      expect(find.text('Sub Title'), findsOneWidget);
      expect(find.byType(InkWell), findsNothing);
      expect(find.byType(DSImage), findsNothing);
    });

    testWidgets('behaves same as default when explicitly set to defaultType', (
      WidgetTester tester,
    ) async {
      final defaultWidget = createTestWidget(text: 'Test Header');
      final explicitDefaultWidget = createTestWidget(
        text: 'Test Header',
        type: ListTitleHorizontalHeaderType.defaultType,
      );

      await tester.pumpWidget(defaultWidget);
      expect(find.byType(InkWell), findsNothing);
      expect(find.byType(DSImage), findsNothing);

      await tester.pumpWidget(explicitDefaultWidget);
      expect(find.byType(InkWell), findsNothing);
      expect(find.byType(DSImage), findsNothing);
    });
  });

  group('ListTitleHorizontalHeaderType', () {
    test('enum values are correct', () {
      expect(ListTitleHorizontalHeaderType.values.length, equals(2));
      expect(
        ListTitleHorizontalHeaderType.values.contains(
          ListTitleHorizontalHeaderType.withLinkType,
        ),
        isTrue,
      );
      expect(
        ListTitleHorizontalHeaderType.values.contains(
          ListTitleHorizontalHeaderType.defaultType,
        ),
        isTrue,
      );
    });

    group('DSText Widget Tests', () {
      testWidgets('main text has correct properties', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(createTestWidget(text: 'Main Title'));

        final mainTextWidgets = tester
            .widgetList<DSText>(find.byType(DSText))
            .where((widget) => widget.text == 'Main Title');

        expect(mainTextWidgets.length, equals(1));

        final mainText = mainTextWidgets.first;
        expect(mainText.textStyle, equals(DSTextStyleType.secondaryHeadingM));
        expect(mainText.maxLines, equals(1));
        expect(mainText.overflow, equals(TextOverflow.ellipsis));
      });

      testWidgets('subText has correct properties when provided', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          createTestWidget(text: 'Main Title', subText: 'Sub Title'),
        );

        final subTextWidgets = tester
            .widgetList<DSText>(find.byType(DSText))
            .where((widget) => widget.text == 'Sub Title');

        expect(subTextWidgets.length, equals(1));

        final subText = subTextWidgets.first;
        expect(
          subText.textStyle,
          equals(DSTextStyleType.primaryCaptionSemibold),
        );
        expect(subText.lineHeight, equals(1.5));
        expect(subText.maxLines, equals(1));
        expect(subText.overflow, equals(TextOverflow.ellipsis));
      });

      testWidgets('text colors are correctly applied', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          createTestWidget(text: 'Main Title', subText: 'Sub Title'),
        );

        final dsTextWidgets = tester.widgetList<DSText>(find.byType(DSText));

        // Find main text widget
        final mainText = dsTextWidgets.firstWhere(
          (widget) => widget.text == 'Main Title',
        );

        // Find sub text widget
        final subText = dsTextWidgets.firstWhere(
          (widget) => widget.text == 'Sub Title',
        );

        // Note: You might need to adjust these assertions based on your DSText implementation
        expect(mainText.textColor, isNotNull);
        expect(subText.textColor, isNotNull);
      });

      testWidgets('text overflow is handled correctly for long text', (
        WidgetTester tester,
      ) async {
        const longText =
            'This is a very long text that should be truncated with ellipsis when it exceeds the available width';
        const longSubText =
            'This is a very long subtitle that should also be truncated with ellipsis';

        await tester.pumpWidget(
          createTestWidget(text: longText, subText: longSubText),
        );

        final dsTextWidgets = tester.widgetList<DSText>(find.byType(DSText));

        // Verify both text widgets have ellipsis overflow
        for (final textWidget in dsTextWidgets) {
          expect(textWidget.overflow, equals(TextOverflow.ellipsis));
          expect(textWidget.maxLines, equals(1));
        }
      });

      testWidgets('only main text is rendered when subText is null', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          createTestWidget(text: 'Main Title', subText: null),
        );

        final dsTextWidgets = tester.widgetList<DSText>(find.byType(DSText));
        expect(dsTextWidgets.length, equals(1));

        final mainText = dsTextWidgets.first;
        expect(mainText.text, equals('Main Title'));
        expect(mainText.textStyle, equals(DSTextStyleType.secondaryHeadingM));
      });

      testWidgets('both texts are rendered when subText is provided', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          createTestWidget(text: 'Main Title', subText: 'Sub Title'),
        );

        final dsTextWidgets = tester.widgetList<DSText>(find.byType(DSText));
        expect(dsTextWidgets.length, equals(2));

        final texts = dsTextWidgets.map((widget) => widget.text).toList();
        expect(texts.contains('Main Title'), isTrue);
        expect(texts.contains('Sub Title'), isTrue);
      });
    });

    group('Widget Layout and Structure Tests', () {
      testWidgets('text widgets are arranged correctly in Column', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          createTestWidget(text: 'Main Title', subText: 'Sub Title'),
        );

        final expandedWidget = tester.widget<Expanded>(find.byType(Expanded));
        final columnWidget = tester.widget<Column>(
          find.descendant(
            of: find.byWidget(expandedWidget),
            matching: find.byType(Column),
          ),
        );

        expect(
          columnWidget.crossAxisAlignment,
          equals(CrossAxisAlignment.start),
        );
        expect(columnWidget.children.length, greaterThanOrEqualTo(2));
      });

      testWidgets('Row has correct mainAxisAlignment', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          createTestWidget(
            text: 'Test Header',
            type: ListTitleHorizontalHeaderType.withLinkType,
          ),
        );

        final rowWidget = tester.widget<Row>(find.byType(Row));
        expect(
          rowWidget.mainAxisAlignment,
          equals(MainAxisAlignment.spaceBetween),
        );
      });

      testWidgets('Container has correct crossAxisAlignment', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(createTestWidget(text: 'Test Header'));

        final columnWidget = tester.widget<Column>(find.byType(Column).first);
        expect(
          columnWidget.crossAxisAlignment,
          equals(CrossAxisAlignment.start),
        );
      });

      testWidgets('widget hierarchy is correct with withLinkType', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          createTestWidget(
            text: 'Test Header',
            subText: 'Sub Title',
            type: ListTitleHorizontalHeaderType.withLinkType,
          ),
        );
        expect(find.byType(Container), findsAtLeastNWidgets(1));
        expect(find.byType(Column), findsAtLeastNWidgets(1));
        expect(find.byType(Row), findsOneWidget);
        expect(find.byType(Expanded), findsOneWidget);
        expect(find.byType(DSButtonIconCircle), findsOneWidget);
      });

      testWidgets('widget hierarchy is correct with defaultType', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          createTestWidget(
            text: 'Test Header',
            subText: 'Sub Title',
            type: ListTitleHorizontalHeaderType.defaultType,
          ),
        );

        expect(find.byType(Container), findsAtLeastNWidgets(1));
        expect(find.byType(Column), findsAtLeastNWidgets(1));
        expect(find.byType(Row), findsOneWidget);
        expect(find.byType(Expanded), findsOneWidget);
        expect(find.byType(InkWell), findsNothing);
      });
    });
  });
}
