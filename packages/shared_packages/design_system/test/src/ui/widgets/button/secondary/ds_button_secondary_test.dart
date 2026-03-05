import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSButtonSecondary Widget Tests', () {
    Widget createTestWidget({
      required String text,
      VoidCallback? onPressed,
      DSButtonSize size = DSButtonSize.large,
      DSButtonType type = DSButtonType.fill,
      DSButtonState state = DSButtonState.normal,
      String? loadingText,
      double? width,
    }) {
      return MaterialApp(
        theme: dsTheme,
        localizationsDelegates: const [DesignSystemLocalizations.delegate],
        home: Scaffold(
          body: DSButtonSecondary(
            text: text,
            onPressed: onPressed,
            size: size,
            type: type,
            state: state,
            loadingText: loadingText,
            width: width,
          ),
        ),
      );
    }

    testWidgets('should render button text', (WidgetTester tester) async {
      await tester.pumpWidget(createTestWidget(text: 'Secondary Button'));

      expect(find.byType(DSButtonSecondary), findsOneWidget);
      expect(find.text('Secondary Button'), findsOneWidget);
    });

    testWidgets('should call onPressed when tapped', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(
          text: 'Tap Me',
          onPressed: () => tapCount++,
        ),
      );

      await tester.tap(find.byType(DSButtonSecondary));
      await tester.pumpAndSettle();

      expect(tapCount, equals(1));
    });

    testWidgets('should NOT call onPressed when state is disabled', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(
          text: 'Disabled Button',
          onPressed: () => tapCount++,
          state: DSButtonState.disabled,
        ),
      );

      await tester.tap(find.byType(DSButtonSecondary));
      await tester.pumpAndSettle();

      expect(tapCount, equals(0));
    });

    testWidgets('should show loading text when state is loading', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Submit',
          state: DSButtonState.loading,
          loadingText: 'Submitting...',
        ),
      );

      expect(find.text('Submitting...'), findsOneWidget);
      expect(find.text('Submit'), findsNothing);
    });

    testWidgets('DSButtonSecondary.fill() renders correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          localizationsDelegates: const [DesignSystemLocalizations.delegate],
          home: Scaffold(
            body: DSButtonSecondary.fill(text: 'Fill Button'),
          ),
        ),
      );

      expect(find.byType(DSButtonSecondary), findsOneWidget);
      expect(find.text('Fill Button'), findsOneWidget);
    });

    testWidgets('DSButtonSecondary.outline() renders correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          localizationsDelegates: const [DesignSystemLocalizations.delegate],
          home: Scaffold(
            body: DSButtonSecondary.outline(text: 'Outline Button'),
          ),
        ),
      );

      expect(find.byType(DSButtonSecondary), findsOneWidget);
      expect(find.text('Outline Button'), findsOneWidget);
    });

    testWidgets('DSButtonSecondary.ghost() renders correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          localizationsDelegates: const [DesignSystemLocalizations.delegate],
          home: Scaffold(
            body: DSButtonSecondary.ghost(text: 'Ghost Button'),
          ),
        ),
      );

      expect(find.byType(DSButtonSecondary), findsOneWidget);
      expect(find.text('Ghost Button'), findsOneWidget);
    });

    testWidgets('should not call onPressed when onPressed is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(text: 'No Callback'),
      );

      // Should not throw when tapped without callback
      await tester.tap(find.byType(DSButtonSecondary));
      await tester.pumpAndSettle();

      expect(find.byType(DSButtonSecondary), findsOneWidget);
    });
  });
}
