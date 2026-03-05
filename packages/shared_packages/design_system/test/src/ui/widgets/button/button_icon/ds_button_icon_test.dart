import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSButtonIcon', () {
    Widget createTestWidget({
      String iconPath = DSIcons.icClose,
      VoidCallback? onPressed,
      DSButtonIconSizeEnum size = DSButtonIconSizeEnum.large,
      DSButtonIconType type = DSButtonIconType.fill,
      DSButtonState state = DSButtonState.normal,
    }) {
      return MaterialApp(
        theme: dsTheme,
        home: Scaffold(
          body: DSButtonIcon(
            iconPath: iconPath,
            onPressed: onPressed,
            size: size,
            type: type,
            state: state,
          ),
        ),
      );
    }

    testWidgets('renders icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(onPressed: () {}),
      );

      expect(find.byType(DSButtonIcon), findsOneWidget);
      expect(find.byType(DSImage), findsOneWidget);

      final DSImage imageWidget = tester.widget<DSImage>(
        find.byType(DSImage),
      );
      expect(imageWidget.path, DSIcons.icClose);
    });

    testWidgets('calls onPressed when tapped', (WidgetTester tester) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(onPressed: () => tapCount++),
      );

      await tester.tap(find.byType(DSButtonIcon));
      await tester.pumpAndSettle();

      expect(tapCount, equals(1));
    });

    testWidgets('does NOT call onPressed when disabled', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(
          onPressed: () => tapCount++,
          state: DSButtonState.disabled,
        ),
      );

      await tester.tap(find.byType(DSButtonIcon));
      await tester.pumpAndSettle();

      expect(tapCount, equals(0));
    });

    testWidgets('shows CircularProgressIndicator when loading', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          onPressed: () {},
          state: DSButtonState.loading,
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.byType(DSImage), findsNothing);
    });

    testWidgets('does not call onPressed when loading', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(
          onPressed: () => tapCount++,
          state: DSButtonState.loading,
        ),
      );

      await tester.tap(find.byType(DSButtonIcon));
      await tester.pump();

      expect(tapCount, equals(0));
    });

    testWidgets('renders with outline type', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          onPressed: () {},
          type: DSButtonIconType.outline,
        ),
      );

      expect(find.byType(DSButtonIcon), findsOneWidget);
      expect(find.byType(AnimatedContainer), findsOneWidget);
    });

    testWidgets('renders with ghost type', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          onPressed: () {},
          type: DSButtonIconType.ghost,
        ),
      );

      expect(find.byType(DSButtonIcon), findsOneWidget);
    });

    testWidgets('CircularProgressIndicator has correct stroke properties', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          onPressed: () {},
          state: DSButtonState.loading,
        ),
      );

      final CircularProgressIndicator indicator = tester
          .widget<CircularProgressIndicator>(
        find.byType(CircularProgressIndicator),
      );
      expect(indicator.strokeWidth, 4);
      expect(indicator.strokeCap, StrokeCap.round);
    });
  });
}
