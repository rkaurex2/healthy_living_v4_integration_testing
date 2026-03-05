import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSCheckbox', () {
    late DSCheckboxStatus capturedStatus;
    late int onChangedCallCount;

    void onChanged(DSCheckboxStatus status) {
      capturedStatus = status;
      onChangedCallCount++;
    }

    setUp(() {
      capturedStatus = DSCheckboxStatus.unSelected;
      onChangedCallCount = 0;
    });

    Widget createTestWidget({
      required DSCheckboxStatus status,
      required DSCheckboxState state,
      String? label,
    }) {
      return MaterialApp(
        theme: dsTheme,
        home: Scaffold(
          body: DSCheckbox(
            status: status,
            state: state,
            onChanged: onChanged,
            label: label,
          ),
        ),
      );
    }

    testWidgets('should render checkbox with unselected status', (
      tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.defaultState,
        ),
      );

      expect(find.byType(DSCheckbox), findsOneWidget);
      expect(find.byType(AnimatedContainer), findsOneWidget);
      expect(find.byType(DSImage), findsNothing);
    });

    testWidgets('should render checkbox with selected status and check icon', (
      tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.selected,
          state: DSCheckboxState.defaultState,
        ),
      );

      expect(find.byType(DSCheckbox), findsOneWidget);
      expect(find.byType(DSImage), findsOneWidget);

      final dsImage = tester.widget<DSImage>(find.byType(DSImage));
      expect(dsImage.path, equals(DSIcons.icCheck));
    });

    testWidgets(
      'should render checkbox with multiselect status and minus icon',
      (tester) async {
        await tester.pumpWidget(
          createTestWidget(
            status: DSCheckboxStatus.multiselect,
            state: DSCheckboxState.defaultState,
          ),
        );

        expect(find.byType(DSCheckbox), findsOneWidget);
        expect(find.byType(DSImage), findsOneWidget);

        final dsImage = tester.widget<DSImage>(find.byType(DSImage));
        expect(dsImage.path, equals(DSIcons.icMinus));
      },
    );

    testWidgets('should render checkbox with label', (tester) async {
      const testLabel = 'Test Label';

      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.defaultState,
          label: testLabel,
        ),
      );

      expect(find.byType(DSText), findsOneWidget);

      final dsText = tester.widget<DSText>(find.byType(DSText));
      expect(dsText.text, equals(testLabel));
      expect(dsText.textStyle, equals(DSTextStyleType.primaryButtonLMedium));
      expect(dsText.maxLines, equals(1));
      expect(dsText.overflow, equals(TextOverflow.ellipsis));
    });

    testWidgets('should not render label when label is null', (tester) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.defaultState,
          label: null,
        ),
      );

      expect(find.byType(DSText), findsNothing);
    });

    testWidgets('should not render label when label is empty', (tester) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.defaultState,
          label: '',
        ),
      );

      expect(find.byType(DSText), findsNothing);
    });

    testWidgets(
      'should call onChanged when tapped from unselected to selected',
      (tester) async {
        await tester.pumpWidget(
          createTestWidget(
            status: DSCheckboxStatus.unSelected,
            state: DSCheckboxState.defaultState,
          ),
        );

        await tester.tap(find.byType(GestureDetector));

        expect(onChangedCallCount, equals(1));
        expect(capturedStatus, equals(DSCheckboxStatus.selected));
      },
    );

    testWidgets(
      'should call onChanged when tapped from selected to unselected',
      (tester) async {
        await tester.pumpWidget(
          createTestWidget(
            status: DSCheckboxStatus.selected,
            state: DSCheckboxState.defaultState,
          ),
        );

        await tester.tap(find.byType(GestureDetector));

        expect(onChangedCallCount, equals(1));
        expect(capturedStatus, equals(DSCheckboxStatus.unSelected));
      },
    );

    testWidgets(
      'should call onChanged when tapped from multiselect to unselected',
      (tester) async {
        await tester.pumpWidget(
          createTestWidget(
            status: DSCheckboxStatus.multiselect,
            state: DSCheckboxState.defaultState,
          ),
        );

        await tester.tap(find.byType(GestureDetector));

        expect(onChangedCallCount, equals(1));
        expect(capturedStatus, equals(DSCheckboxStatus.unSelected));
      },
    );

    testWidgets('should not call onChanged when tapped in disabled state', (
      tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.disabled,
        ),
      );

      await tester.tap(find.byType(GestureDetector));

      expect(onChangedCallCount, equals(0));
    });

    testWidgets('should have proper layout structure', (tester) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.selected,
          state: DSCheckboxState.defaultState,
          label: 'Test Label',
        ),
      );

      expect(find.byType(GestureDetector), findsOneWidget);
      expect(find.byType(Row), findsOneWidget);
      expect(find.byType(AnimatedContainer), findsOneWidget);
      expect(find.byType(DSSpacingWidget), findsOneWidget);
      expect(find.byType(Flexible), findsOneWidget);

      final row = tester.widget<Row>(find.byType(Row));
      expect(row.mainAxisSize, equals(MainAxisSize.min));
    });

    testWidgets('should have proper AnimatedContainer properties', (
      tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.selected,
          state: DSCheckboxState.defaultState,
        ),
      );

      final animatedContainer = tester.widget<AnimatedContainer>(
        find.byType(AnimatedContainer),
      );
      expect(
        animatedContainer.duration,
        equals(const Duration(milliseconds: 150)),
      );
      expect(animatedContainer.alignment, equals(Alignment.center));
    });

    testWidgets('should update status when widget is rebuilt with new status', (
      tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.defaultState,
        ),
      );

      expect(find.byType(DSImage), findsNothing);

      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.selected,
          state: DSCheckboxState.defaultState,
        ),
      );

      expect(find.byType(DSImage), findsOneWidget);

      final dsImage = tester.widget<DSImage>(find.byType(DSImage));
      expect(dsImage.path, equals(DSIcons.icCheck));
    });

    testWidgets('should handle state changes properly', (tester) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.defaultState,
        ),
      );

      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.pressed,
        ),
      );

      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.disabled,
        ),
      );

      expect(find.byType(DSCheckbox), findsOneWidget);
    });

    testWidgets('should handle multiple rapid taps correctly', (tester) async {
      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.defaultState,
        ),
      );

      await tester.tap(find.byType(GestureDetector));
      await tester.tap(find.byType(GestureDetector));
      await tester.tap(find.byType(GestureDetector));

      expect(onChangedCallCount, equals(3));
    });

    testWidgets('should maintain label text properties', (tester) async {
      const longLabel =
          'This is a very long label that should be truncated with ellipsis';

      await tester.pumpWidget(
        createTestWidget(
          status: DSCheckboxStatus.unSelected,
          state: DSCheckboxState.defaultState,
          label: longLabel,
        ),
      );

      final dsText = tester.widget<DSText>(find.byType(DSText));
      expect(dsText.text, equals(longLabel));
      expect(dsText.maxLines, equals(1));
      expect(dsText.overflow, equals(TextOverflow.ellipsis));
    });

    testWidgets('should handle all status transitions correctly', (
      tester,
    ) async {
      final statusTransitions = [
        DSCheckboxStatus.unSelected,
        DSCheckboxStatus.selected,
        DSCheckboxStatus.multiselect,
        DSCheckboxStatus.unSelected,
      ];

      for (final status in statusTransitions) {
        await tester.pumpWidget(
          createTestWidget(status: status, state: DSCheckboxState.defaultState),
        );

        expect(find.byType(DSCheckbox), findsOneWidget);

        if (status == DSCheckboxStatus.unSelected) {
          expect(find.byType(DSImage), findsNothing);
        } else {
          expect(find.byType(DSImage), findsOneWidget);
        }
      }
    });

    testWidgets('should handle all state variations', (tester) async {
      final states = [
        DSCheckboxState.defaultState,
        DSCheckboxState.pressed,
        DSCheckboxState.disabled,
      ];

      for (final state in states) {
        await tester.pumpWidget(
          createTestWidget(status: DSCheckboxStatus.selected, state: state),
        );

        expect(find.byType(DSCheckbox), findsOneWidget);

        await tester.tap(find.byType(GestureDetector));

        if (state == DSCheckboxState.disabled) {
          expect(onChangedCallCount, equals(0));
        } else {
          expect(onChangedCallCount, greaterThan(0));
        }

        // Reset for next iteration
        onChangedCallCount = 0;
      }
    });
  });
}
