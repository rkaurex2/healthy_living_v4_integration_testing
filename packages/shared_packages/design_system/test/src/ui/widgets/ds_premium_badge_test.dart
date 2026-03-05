import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSPremiumBadge', () {
    Widget createTestWidget(Widget child) {
      return MaterialApp(
        theme: dsTheme,
        localizationsDelegates: const [DesignSystemLocalizations.delegate],
        home: Scaffold(body: child),
      );
    }

    testWidgets('.transparent() renders "PREMIUM" text', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSPremiumBadge.transparent()),
      );

      expect(find.text('PREMIUM'), findsOneWidget);
      expect(find.byType(DSPremiumBadge), findsOneWidget);
    });

    testWidgets('.orange() renders "PREMIUM" text', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSPremiumBadge.orange()),
      );

      expect(find.text('PREMIUM'), findsOneWidget);
      expect(find.byType(DSPremiumBadge), findsOneWidget);
    });

    testWidgets('crown icon shows when showPremiumCrown is true (default)', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSPremiumBadge.transparent()),
      );

      final dsImages = find.byType(DSImage);
      expect(dsImages, findsOneWidget);

      final DSImage image = tester.widget<DSImage>(dsImages);
      expect(image.path, DSIcons.icPremiumCrown);
    });

    testWidgets('crown icon hidden when showPremiumCrown is false', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          DSPremiumBadge.transparent(showPremiumCrown: false),
        ),
      );

      expect(find.byType(DSImage), findsNothing);
    });

    testWidgets('.orange() with showPremiumCrown false hides crown', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          DSPremiumBadge.orange(showPremiumCrown: false),
        ),
      );

      expect(find.text('PREMIUM'), findsOneWidget);
      expect(find.byType(DSImage), findsNothing);
    });

    testWidgets('renders within a Row with mainAxisSize.min', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(DSPremiumBadge.orange()),
      );

      final rowFinder = find.descendant(
        of: find.byType(DSPremiumBadge),
        matching: find.byType(Row),
      );
      expect(rowFinder, findsOneWidget);

      final Row row = tester.widget<Row>(rowFinder);
      expect(row.mainAxisSize, MainAxisSize.min);
    });
  });
}
