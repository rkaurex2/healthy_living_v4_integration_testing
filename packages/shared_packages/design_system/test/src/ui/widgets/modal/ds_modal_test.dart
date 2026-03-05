import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSModal', () {
    Widget createTestWidget({
      required String title,
      required String primaryButtonText,
      Widget? centerImageWidget,
      String? caption,
      VoidCallback? onClose,
      VoidCallback? onPrimaryPressed,
      String? secondaryButtonText,
      VoidCallback? onSecondaryPressed,
      DSModalPrimaryButtonType primaryButtonType =
          DSModalPrimaryButtonType.dsPrimary,
      DSButtonSize buttonSize = DSButtonSize.large,
    }) {
      return MaterialApp(
        theme: dsTheme,
        localizationsDelegates: const [DesignSystemLocalizations.delegate],
        home: Scaffold(
          body: SingleChildScrollView(
            child: DSModal(
              title: title,
              primaryButtonText: primaryButtonText,
              centerImageWidget: centerImageWidget ??
                  const SizedBox(width: 100, height: 100),
              buttonSize: buttonSize,
              caption: caption,
              onClose: onClose,
              onPrimaryPressed: onPrimaryPressed,
              secondaryButtonText: secondaryButtonText,
              onSecondaryPressed: onSecondaryPressed,
              primaryButtonType: primaryButtonType,
            ),
          ),
        ),
      );
    }

    testWidgets('renders title text', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          title: 'Modal Title',
          primaryButtonText: 'OK',
        ),
      );

      expect(find.text('Modal Title'), findsOneWidget);
    });

    testWidgets('renders primary button with text', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          title: 'Title',
          primaryButtonText: 'Confirm',
        ),
      );

      expect(find.text('Confirm'), findsOneWidget);
      expect(find.byType(DSButtonPrimary), findsOneWidget);
    });

    testWidgets('renders center image widget', (WidgetTester tester) async {
      final imageWidget = Container(
        key: const Key('center_image'),
        width: 80,
        height: 80,
        color: Colors.blue,
      );

      await tester.pumpWidget(
        createTestWidget(
          title: 'Title',
          primaryButtonText: 'OK',
          centerImageWidget: imageWidget,
        ),
      );

      expect(find.byKey(const Key('center_image')), findsOneWidget);
    });

    testWidgets('calls onPrimaryPressed when primary button tapped', (
      WidgetTester tester,
    ) async {
      int tapCount = 0;

      await tester.pumpWidget(
        createTestWidget(
          title: 'Title',
          primaryButtonText: 'Confirm',
          onPrimaryPressed: () => tapCount++,
        ),
      );

      await tester.tap(find.text('Confirm'));
      await tester.pumpAndSettle();

      expect(tapCount, equals(1));
    });

    testWidgets(
      'renders secondary button when secondaryButtonText is provided',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          createTestWidget(
            title: 'Title',
            primaryButtonText: 'Confirm',
            secondaryButtonText: 'Cancel',
            onSecondaryPressed: () {},
          ),
        );

        expect(find.text('Cancel'), findsOneWidget);
      },
    );

    testWidgets('does not render secondary button when text is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          title: 'Title',
          primaryButtonText: 'OK',
          secondaryButtonText: null,
        ),
      );

      // Only one button: the primary
      final primaryButtons = find.byType(DSButtonPrimary);
      expect(primaryButtons, findsOneWidget);
    });

    testWidgets('renders caption text when provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          title: 'Title',
          primaryButtonText: 'OK',
          caption: 'This is a caption',
        ),
      );

      expect(find.text('This is a caption'), findsOneWidget);
    });

    testWidgets('renders with DSModalPrimaryButtonType.dsSecondary', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          title: 'Title',
          primaryButtonText: 'Secondary Style',
          primaryButtonType: DSModalPrimaryButtonType.dsSecondary,
        ),
      );

      expect(find.text('Secondary Style'), findsOneWidget);
      expect(find.byType(DSButtonSecondary), findsOneWidget);
    });
  });
}
