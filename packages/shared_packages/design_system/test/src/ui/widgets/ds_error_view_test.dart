import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSErrorView', () {
    Widget createTestWidget({
      VoidCallback? onRetry,
      String? message,
      String? retryLabel,
    }) {
      return MaterialApp(
        theme: dsTheme,
        localizationsDelegates: const [DesignSystemLocalizations.delegate],
        home: Scaffold(
          body: DSErrorView(
            onRetry: onRetry ?? () {},
            message: message ??
                'Something went wrong. Please check your connection and try again.',
            retryLabel: retryLabel ?? 'Try Again',
          ),
        ),
      );
    }

    testWidgets('should render warning icon', (WidgetTester tester) async {
      await tester.pumpWidget(createTestWidget());

      final dsImageFinder = find.byType(DSImage);
      expect(dsImageFinder, findsOneWidget);

      final DSImage imageWidget = tester.widget<DSImage>(dsImageFinder);
      expect(imageWidget.path, DSIcons.icWarning);
      expect(imageWidget.width, 48);
      expect(imageWidget.height, 48);
    });

    testWidgets('should show default error message', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget());

      expect(
        find.text(
          'Something went wrong. Please check your connection and try again.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('should show custom error message when provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(message: 'Network error occurred'),
      );

      expect(find.text('Network error occurred'), findsOneWidget);
      expect(
        find.text(
          'Something went wrong. Please check your connection and try again.',
        ),
        findsNothing,
      );
    });

    testWidgets('should show retry button with default "Try Again" label', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget());

      expect(find.text('Try Again'), findsOneWidget);
      expect(find.byType(DSButtonPrimary), findsOneWidget);
    });

    testWidgets('should show custom retry label', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget(retryLabel: 'Reload'));

      expect(find.text('Reload'), findsOneWidget);
      expect(find.text('Try Again'), findsNothing);
    });

    testWidgets('should call onRetry when retry button is tapped', (
      WidgetTester tester,
    ) async {
      int retryCount = 0;

      await tester.pumpWidget(
        createTestWidget(onRetry: () => retryCount++),
      );

      await tester.tap(find.byKey(const Key('retry_button')));
      await tester.pumpAndSettle();

      expect(retryCount, equals(1));
    });

    testWidgets('should have key "offline_error_view"', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget());

      expect(find.byKey(const Key('offline_error_view')), findsOneWidget);
    });

    testWidgets('retry button should have key "retry_button"', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(createTestWidget());

      expect(find.byKey(const Key('retry_button')), findsOneWidget);
    });
  });
}
