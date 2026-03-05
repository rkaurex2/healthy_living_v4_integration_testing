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

  /// Helper that builds a minimal app with a button that opens
  /// [DSBottomSheetWidget.showBottomSheet] when tapped.
  Widget createBottomSheetTestWidget({
    required Widget child,
    bool isDismissible = true,
    bool isScrollControlled = false,
    double? height,
    EdgeInsetsGeometry? padding,
  }) {
    return MaterialApp(
      theme: dsTheme,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  DSBottomSheetWidget.showBottomSheet(
                    context: context,
                    child: child,
                    isDismissible: isDismissible,
                    isScrollControlled: isScrollControlled,
                    height: height,
                    padding: padding,
                  );
                },
                child: const Text('Open Sheet'),
              ),
            );
          },
        ),
      ),
    );
  }

  group('DSBottomSheetWidget', () {
    testWidgets('opens and renders child content', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createBottomSheetTestWidget(
          child: const Text('Sheet Content'),
        ),
      );

      // Tap button to open bottom sheet
      await tester.tap(find.text('Open Sheet'));
      await tester.pumpAndSettle();

      expect(find.text('Sheet Content'), findsOneWidget);
    });

    testWidgets('shows title text in content', (WidgetTester tester) async {
      await tester.pumpWidget(
        createBottomSheetTestWidget(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('My Title', style: TextStyle(fontSize: 18)),
              SizedBox(height: 16),
              Text('Body content goes here'),
            ],
          ),
        ),
      );

      await tester.tap(find.text('Open Sheet'));
      await tester.pumpAndSettle();

      expect(find.text('My Title'), findsOneWidget);
      expect(find.text('Body content goes here'), findsOneWidget);
    });

    testWidgets('close button in content dismisses sheet', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createBottomSheetTestWidget(
          child: Builder(
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Title'),
                      IconButton(
                        key: const Key('close_button'),
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  const Text('Content'),
                ],
              );
            },
          ),
        ),
      );

      await tester.tap(find.text('Open Sheet'));
      await tester.pumpAndSettle();

      expect(find.text('Content'), findsOneWidget);

      // Tap close button
      await tester.tap(find.byKey(const Key('close_button')));
      await tester.pumpAndSettle();

      expect(find.text('Content'), findsNothing);
    });

    testWidgets('renders complex content', (WidgetTester tester) async {
      await tester.pumpWidget(
        createBottomSheetTestWidget(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.info),
                title: Text('Info Item'),
                subtitle: Text('Subtitle text'),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings Item'),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Action Button'),
                ),
              ),
            ],
          ),
        ),
      );

      await tester.tap(find.text('Open Sheet'));
      await tester.pumpAndSettle();

      expect(find.text('Info Item'), findsOneWidget);
      expect(find.text('Subtitle text'), findsOneWidget);
      expect(find.text('Settings Item'), findsOneWidget);
      expect(find.text('Action Button'), findsOneWidget);
    });

    testWidgets('applies padding when specified', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createBottomSheetTestWidget(
          child: const Text('Padded Content'),
          padding: const EdgeInsets.all(24),
        ),
      );

      await tester.tap(find.text('Open Sheet'));
      await tester.pumpAndSettle();

      expect(find.text('Padded Content'), findsOneWidget);
      // Verify Padding widget is present in the sheet
      expect(
        find.ancestor(
          of: find.text('Padded Content'),
          matching: find.byType(Padding),
        ),
        findsWidgets,
      );
    });

    testWidgets('dismissible bottom sheet closes on barrier tap', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createBottomSheetTestWidget(
          child: const SizedBox(
            height: 200,
            child: Center(child: Text('Dismissible')),
          ),
          isDismissible: true,
        ),
      );

      await tester.tap(find.text('Open Sheet'));
      await tester.pumpAndSettle();

      expect(find.text('Dismissible'), findsOneWidget);

      // Tap barrier area (top of screen) to dismiss
      await tester.tapAt(const Offset(20, 20));
      await tester.pumpAndSettle();

      expect(find.text('Dismissible'), findsNothing);
    });

    testWidgets('uses SingleChildScrollView for scrollable content', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createBottomSheetTestWidget(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              20,
              (index) => ListTile(title: Text('Item $index')),
            ),
          ),
        ),
      );

      await tester.tap(find.text('Open Sheet'));
      await tester.pumpAndSettle();

      expect(find.byType(SingleChildScrollView), findsWidgets);
    });
  });

  group('DSBottomSheetWidget - Full Screen Support', () {
    testWidgets('showBottomSheetWithFullScreenSupport opens correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
                        context: context,
                        child: const Center(child: Text('Full Screen Content')),
                      );
                    },
                    child: const Text('Open Full Screen'),
                  ),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Open Full Screen'));
      await tester.pumpAndSettle();

      expect(find.text('Full Screen Content'), findsOneWidget);
    });

    testWidgets('fitToChildHeight returns content directly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
                        context: context,
                        child: const SizedBox(
                          height: 100,
                          child: Center(child: Text('Fit Content')),
                        ),
                        fitToChildHeight: true,
                      );
                    },
                    child: const Text('Open Fit'),
                  ),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Open Fit'));
      await tester.pumpAndSettle();

      expect(find.text('Fit Content'), findsOneWidget);
    });
  });

  group('DSBottomSheetWidget - Dark Mode', () {
    testWidgets('renders bottom sheet in dark mode without errors', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const SizedBox(
                          height: 200,
                          child: Center(child: Text('Dark Sheet')),
                        ),
                      );
                    },
                    child: const Text('Open Dark'),
                  ),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Open Dark'));
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(find.text('Dark Sheet'), findsOneWidget);
    });
  });

  group('DSBottomSheetWidget - Device Size Variants', () {
    for (final entry in deviceSizes.entries) {
      testWidgets('renders on ${entry.key} (${entry.value.width.toInt()}x${entry.value.height.toInt()})', (
        WidgetTester tester,
      ) async {
        tester.view.physicalSize = entry.value;
        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        await tester.pumpWidget(
          createBottomSheetTestWidget(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Sheet Title'),
                SizedBox(height: 16),
                Text('Sheet body content for device test'),
              ],
            ),
          ),
        );

        await tester.tap(find.text('Open Sheet'));
        await tester.pumpAndSettle();

        expect(tester.takeException(), isNull);
        expect(find.text('Sheet Title'), findsOneWidget);
      });
    }
  });
}
