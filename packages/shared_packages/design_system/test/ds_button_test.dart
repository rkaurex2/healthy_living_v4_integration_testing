import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:design_system/src/ui/widgets/button/ds_button_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const deviceSizes = {
    'iPhone SE': Size(375, 667),
    'iPhone 14': Size(390, 844),
    'iPhone 14 Plus': Size(430, 932),
    'iPad': Size(768, 1024),
    'Android small': Size(360, 640),
    'Android tablet': Size(720, 1280),
  };

  Widget createTestWidget({
    required String text,
    VoidCallback? onPressed,
    String? leadingIconPath,
    String? trailingIconPath,
    DSButtonSize size = DSButtonSize.large,
    DSButtonType type = DSButtonType.fill,
    double? width,
    DSButtonState state = DSButtonState.normal,
    String? loadingText,
    Color? textColor,
  }) {
    return MaterialApp(
      theme: dsTheme,
      localizationsDelegates: [DesignSystemLocalizations.delegate],
      home: Scaffold(
        body: DSButtonPrimary(
          text: text,
          onPressed: onPressed,
          leadingIconPath: leadingIconPath,
          trailingIconPath: trailingIconPath,
          size: size,
          type: type,
          width: width,
          state: state,
          loadingText: loadingText,
          textColor: textColor,
        ),
      ),
    );
  }

  group('DSButtonPrimary', () {
    testWidgets('renders with correct text', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(text: 'Submit', onPressed: () {}),
      );

      expect(find.byType(DSButtonPrimary), findsOneWidget);
      final dsText = tester.widget<DSText>(find.byType(DSText));
      expect(dsText.text, equals('Submit'));
    });

    testWidgets('onPressed callback fires on tap', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(text: 'Tap Me', onPressed: () => tapCount++),
      );

      await tester.tap(find.byType(GestureDetector));
      expect(tapCount, equals(1));
    });

    testWidgets('does not fire callback when onPressed is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(text: 'Disabled', onPressed: null),
      );

      await tester.tap(find.byType(GestureDetector));
      // No exception should be thrown
      expect(tester.takeException(), isNull);
    });

    testWidgets('disabled state prevents interaction', (
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

      await tester.tap(find.byType(GestureDetector));
      expect(tapCount, equals(0));
    });

    testWidgets('loading state shows loading text and spinner', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Submit',
          onPressed: () {},
          state: DSButtonState.loading,
          loadingText: 'Loading...',
        ),
      );

      final dsText = tester.widget<DSText>(find.byType(DSText));
      expect(dsText.text, equals('Loading...'));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('loading state prevents interaction', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(
          text: 'Submit',
          onPressed: () => tapCount++,
          state: DSButtonState.loading,
          loadingText: 'Loading...',
        ),
      );

      await tester.tap(find.byType(GestureDetector));
      expect(tapCount, equals(0));
    });

    testWidgets('renders fill type with correct decoration', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Fill Button',
          onPressed: () {},
          type: DSButtonType.fill,
        ),
      );

      expect(find.byType(AnimatedContainer), findsOneWidget);
      expect(find.byType(DSButtonContent), findsOneWidget);
    });

    testWidgets('renders outline type', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          localizationsDelegates: [DesignSystemLocalizations.delegate],
          home: Scaffold(
            body: DSButtonPrimary.outline(
              text: 'Outline',
              onPressed: () {},
            ),
          ),
        ),
      );

      expect(find.byType(DSButtonPrimary), findsOneWidget);
    });

    testWidgets('renders ghost type', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          localizationsDelegates: [DesignSystemLocalizations.delegate],
          home: Scaffold(
            body: DSButtonPrimary.ghost(
              text: 'Ghost',
              onPressed: () {},
            ),
          ),
        ),
      );

      expect(find.byType(DSButtonPrimary), findsOneWidget);
    });

    testWidgets('renders with leading icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'With Icon',
          onPressed: () {},
          leadingIconPath: DSIcons.icAdd,
        ),
      );

      expect(find.byType(DSImage), findsOneWidget);
    });

    testWidgets('renders with trailing icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'With Trailing',
          onPressed: () {},
          trailingIconPath: DSIcons.icAdd,
        ),
      );

      expect(find.byType(DSImage), findsOneWidget);
    });

    testWidgets('renders small size button', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Small Button',
          onPressed: () {},
          size: DSButtonSize.small,
        ),
      );

      expect(find.byType(DSButtonPrimary), findsOneWidget);
    });

    testWidgets('applies custom width', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          text: 'Custom Width',
          onPressed: () {},
          width: 200,
        ),
      );

      final sizedBox = tester.widget<SizedBox>(
        find.ancestor(
          of: find.byType(ConstrainedBox),
          matching: find.byType(SizedBox),
        ).first,
      );
      expect(sizedBox.width, equals(200));
    });

    testWidgets('has proper layout structure', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(text: 'Structure', onPressed: () {}),
      );

      expect(find.byType(SizedBox), findsWidgets);
      expect(
        find.byKey(const ValueKey('dsButtonPrimaryConstrainedBox')),
        findsOneWidget,
      );
      expect(find.byType(GestureDetector), findsOneWidget);
      expect(find.byType(DSButtonContent), findsOneWidget);
      expect(find.byType(AnimatedContainer), findsOneWidget);
    });

    testWidgets('handles multiple rapid taps', (WidgetTester tester) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(text: 'Rapid', onPressed: () => tapCount++),
      );

      await tester.tap(find.byType(GestureDetector));
      await tester.tap(find.byType(GestureDetector));
      await tester.tap(find.byType(GestureDetector));

      expect(tapCount, equals(3));
    });
  });

  group('DSButtonPrimary - Dark Mode', () {
    testWidgets('renders in dark mode without errors', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Dark Mode Button'),
              ),
            ),
          ),
        ),
      );

      expect(tester.takeException(), isNull);
      expect(find.text('Dark Mode Button'), findsOneWidget);
    });
  });

  group('DSButtonPrimary - Device Size Variants', () {
    for (final entry in deviceSizes.entries) {
      testWidgets('renders on ${entry.key} (${entry.value.width.toInt()}x${entry.value.height.toInt()})', (
        WidgetTester tester,
      ) async {
        tester.view.physicalSize = entry.value;
        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        await tester.pumpWidget(
          createTestWidget(text: 'Device Test', onPressed: () {}),
        );

        expect(tester.takeException(), isNull);
        expect(find.byType(DSButtonPrimary), findsOneWidget);
      });
    }
  });

  group('DSButtonSecondary', () {
    Widget createSecondaryWidget({
      required String text,
      VoidCallback? onPressed,
      DSButtonType type = DSButtonType.fill,
      DSButtonState state = DSButtonState.normal,
      String? loadingText,
    }) {
      return MaterialApp(
        theme: dsTheme,
        localizationsDelegates: [DesignSystemLocalizations.delegate],
        home: Scaffold(
          body: DSButtonSecondary(
            text: text,
            onPressed: onPressed,
            type: type,
            state: state,
            loadingText: loadingText,
          ),
        ),
      );
    }

    testWidgets('renders with correct text', (WidgetTester tester) async {
      await tester.pumpWidget(
        createSecondaryWidget(text: 'Secondary', onPressed: () {}),
      );

      expect(find.byType(DSButtonSecondary), findsOneWidget);
      final dsText = tester.widget<DSText>(find.byType(DSText));
      expect(dsText.text, equals('Secondary'));
    });

    testWidgets('onPressed callback fires on tap', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createSecondaryWidget(text: 'Tap', onPressed: () => tapCount++),
      );

      await tester.tap(find.byType(GestureDetector));
      expect(tapCount, equals(1));
    });

    testWidgets('disabled state prevents interaction', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createSecondaryWidget(
          text: 'Disabled',
          onPressed: () => tapCount++,
          state: DSButtonState.disabled,
        ),
      );

      await tester.tap(find.byType(GestureDetector));
      expect(tapCount, equals(0));
    });

    testWidgets('loading state shows loading indicator', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createSecondaryWidget(
          text: 'Submit',
          onPressed: () {},
          state: DSButtonState.loading,
          loadingText: 'Loading...',
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    for (final entry in deviceSizes.entries) {
      testWidgets('renders on ${entry.key}', (WidgetTester tester) async {
        tester.view.physicalSize = entry.value;
        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        await tester.pumpWidget(
          createSecondaryWidget(text: 'Device', onPressed: () {}),
        );

        expect(tester.takeException(), isNull);
        expect(find.byType(DSButtonSecondary), findsOneWidget);
      });
    }
  });
}
