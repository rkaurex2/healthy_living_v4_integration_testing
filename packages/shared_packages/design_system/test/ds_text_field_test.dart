import 'package:design_system/design_system.dart';
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
    String? label,
    String? caption,
    String? hintText,
    String? leadingIconPath,
    String? trailingIconPath,
    DSTextInputSize size = DSTextInputSize.large,
    DSTextInputState state = DSTextInputState.defaultState,
    TextEditingController? controller,
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    bool enabled = true,
    bool isPasswordInput = false,
    bool enableTextClearIcon = false,
    ThemeData? theme,
  }) {
    return MaterialApp(
      theme: theme ?? dsTheme,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DSTextInput(
            label: label,
            caption: caption,
            hintText: hintText,
            leadingIconPath: leadingIconPath,
            trailingIconPath: trailingIconPath,
            size: size,
            state: state,
            controller: controller,
            focusNode: focusNode,
            onChanged: onChanged,
            enabled: enabled,
            isPasswordInput: isPasswordInput,
            enableTextClearIcon: enableTextClearIcon,
          ),
        ),
      ),
    );
  }

  group('DSTextInput', () {
    testWidgets('renders with hint text', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(hintText: 'Enter your name'),
      );

      expect(find.byType(DSTextInput), findsOneWidget);
      expect(find.text('Enter your name'), findsOneWidget);
    });

    testWidgets('renders with label', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(label: 'Full Name', hintText: 'Enter name'),
      );

      expect(find.byType(DSText), findsOneWidget);
      final dsText = tester.widget<DSText>(find.byType(DSText));
      expect(dsText.text, equals('Full Name'));
    });

    testWidgets('renders with caption', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          label: 'Email',
          caption: 'Please enter a valid email',
          hintText: 'email@example.com',
        ),
      );

      // Label + Caption = 2 DSText widgets
      expect(find.byType(DSText), findsNWidgets(2));
    });

    testWidgets('accepts text input', (WidgetTester tester) async {
      final controller = TextEditingController();

      await tester.pumpWidget(
        createTestWidget(
          hintText: 'Type here',
          controller: controller,
        ),
      );

      await tester.enterText(find.byType(TextFormField), 'Hello World');
      expect(controller.text, equals('Hello World'));
    });

    testWidgets('onChanged callback fires on input', (
      WidgetTester tester,
    ) async {
      String capturedText = '';

      await tester.pumpWidget(
        createTestWidget(
          hintText: 'Type here',
          onChanged: (value) => capturedText = value,
        ),
      );

      await tester.enterText(find.byType(TextFormField), 'Test input');
      expect(capturedText, equals('Test input'));
    });

    testWidgets('error state renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          label: 'Email',
          hintText: 'Enter email',
          caption: 'Invalid email',
          state: DSTextInputState.error,
        ),
      );

      expect(find.byType(DSTextInput), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('warning state renders correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          hintText: 'Enter value',
          caption: 'Warning message',
          state: DSTextInputState.warning,
        ),
      );

      expect(find.byType(DSTextInput), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('success state renders correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          hintText: 'Enter value',
          caption: 'Looks good!',
          state: DSTextInputState.success,
        ),
      );

      expect(find.byType(DSTextInput), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('disabled state prevents input', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          hintText: 'Disabled',
          state: DSTextInputState.disabled,
          enabled: false,
        ),
      );

      final textField = tester.widget<TextFormField>(
        find.byType(TextFormField),
      );
      expect(textField.enabled, isFalse);
    });

    testWidgets('focus and unfocus works correctly', (
      WidgetTester tester,
    ) async {
      final focusNode = FocusNode();

      await tester.pumpWidget(
        createTestWidget(
          hintText: 'Focus test',
          focusNode: focusNode,
        ),
      );

      // Tap to focus
      await tester.tap(find.byType(TextFormField));
      await tester.pumpAndSettle();
      expect(focusNode.hasFocus, isTrue);

      // Unfocus
      focusNode.unfocus();
      await tester.pumpAndSettle();
      expect(focusNode.hasFocus, isFalse);

      focusNode.dispose();
    });

    testWidgets('password input obscures text', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          hintText: 'Password',
          isPasswordInput: true,
        ),
      );

      final editableText = tester.widget<EditableText>(
        find.byType(EditableText),
      );
      expect(editableText.obscureText, isTrue);

      // Toggle password visibility
      await tester.tap(find.byType(GestureDetector).last);
      await tester.pumpAndSettle();

      final updatedEditableText = tester.widget<EditableText>(
        find.byType(EditableText),
      );
      expect(updatedEditableText.obscureText, isFalse);
    });

    testWidgets('renders with trailing icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          hintText: 'With icon',
          trailingIconPath: DSIcons.icAdd,
        ),
      );

      expect(find.byType(DSImage), findsOneWidget);
    });

    testWidgets('renders with leading icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          hintText: 'With icon',
          leadingIconPath: DSIcons.icSearch,
        ),
      );

      expect(find.byType(DSImage), findsOneWidget);
    });

    testWidgets('renders small size variant', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          hintText: 'Small input',
          size: DSTextInputSize.small,
        ),
      );

      expect(find.byType(DSTextInput), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('renders without label when null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(hintText: 'No label'),
      );

      // No DSText should be rendered (only the hint inside TextFormField)
      expect(find.byType(DSText), findsNothing);
    });

    testWidgets('renders without caption when null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          label: 'Name',
          hintText: 'Enter name',
        ),
      );

      // Only label DSText, no caption
      expect(find.byType(DSText), findsOneWidget);
    });
  });

  group('DSTextInput - Dark Mode', () {
    testWidgets('renders in dark mode without errors', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Dark mode input',
                  labelText: 'Label',
                ),
              ),
            ),
          ),
        ),
      );

      expect(tester.takeException(), isNull);
      expect(find.byType(TextFormField), findsOneWidget);
    });
  });

  group('DSTextInput - Device Size Variants', () {
    for (final entry in deviceSizes.entries) {
      testWidgets('renders on ${entry.key} (${entry.value.width.toInt()}x${entry.value.height.toInt()})', (
        WidgetTester tester,
      ) async {
        tester.view.physicalSize = entry.value;
        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        await tester.pumpWidget(
          createTestWidget(
            label: 'Name',
            hintText: 'Enter name',
            caption: 'Required field',
          ),
        );

        expect(tester.takeException(), isNull);
        expect(find.byType(DSTextInput), findsOneWidget);
      });
    }

    for (final entry in deviceSizes.entries) {
      testWidgets('error state renders on ${entry.key}', (
        WidgetTester tester,
      ) async {
        tester.view.physicalSize = entry.value;
        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        await tester.pumpWidget(
          createTestWidget(
            label: 'Email',
            hintText: 'Enter email',
            caption: 'Invalid email address',
            state: DSTextInputState.error,
          ),
        );

        expect(tester.takeException(), isNull);
      });
    }
  });
}
