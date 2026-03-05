import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'accessibility_test_helper.dart';

void main() {
  group('Text Scaling', () {
    for (final scale in [1.0, 1.5, 2.0]) {
      testWidgets(
        'text renders without overflow at ${scale}x scale',
        (WidgetTester tester) async {
          await testTextScale(
            tester,
            const Center(child: Text('Test text at scale')),
            scale: scale,
          );
        },
      );
    }

    for (final scale in [1.0, 1.5, 2.0]) {
      testWidgets(
        'DSText renders without overflow at ${scale}x scale',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              theme: dsTheme,
              home: MediaQuery(
                data: MediaQueryData(textScaler: TextScaler.linear(scale)),
                child: Scaffold(
                  body: Center(
                    child: DSText(
                      text: 'Design system text at $scale',
                      textStyle: DSTextStyleType.primaryButtonLRegular,
                      textColor: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
          expect(tester.takeException(), isNull);
        },
      );
    }

    for (final scale in [1.0, 1.5, 2.0]) {
      testWidgets(
        'button text renders without overflow at ${scale}x scale',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              theme: dsTheme,
              home: MediaQuery(
                data: MediaQueryData(textScaler: TextScaler.linear(scale)),
                child: Scaffold(
                  body: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Scaled Button'),
                    ),
                  ),
                ),
              ),
            ),
          );
          expect(tester.takeException(), isNull);
        },
      );
    }
  });

  group('Dark Mode', () {
    testWidgets('app renders in dark mode without errors', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: const Scaffold(
            body: Center(child: Text('Dark mode')),
          ),
        ),
      );
      expect(tester.takeException(), isNull);
      expect(find.text('Dark mode'), findsOneWidget);
    });

    testWidgets('scaffold with multiple widgets renders in dark mode', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: Scaffold(
            appBar: AppBar(title: const Text('Dark App')),
            body: Column(
              children: [
                const Text('Label'),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Enter text'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      );
      expect(tester.takeException(), isNull);
    });
  });

  group('Orientation', () {
    for (final entry in {
      'portrait': const Size(375, 667),
      'landscape': const Size(667, 375),
    }.entries) {
      testWidgets(
        'renders in ${entry.key}',
        (WidgetTester tester) async {
          tester.view.physicalSize = entry.value;
          tester.view.devicePixelRatio = 1.0;
          addTearDown(tester.view.resetPhysicalSize);
          addTearDown(tester.view.resetDevicePixelRatio);

          await tester.pumpWidget(
            const MaterialApp(
              home: Scaffold(
                body: Center(child: Text('Orientation')),
              ),
            ),
          );
          expect(tester.takeException(), isNull);
        },
      );
    }

    testWidgets('column layout renders in landscape without overflow', (
      WidgetTester tester,
    ) async {
      tester.view.physicalSize = const Size(667, 375);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  10,
                  (i) => ListTile(title: Text('Row $i')),
                ),
              ),
            ),
          ),
        ),
      );
      expect(tester.takeException(), isNull);
    });
  });

  group('Edge Cases', () {
    testWidgets('empty string renders without error', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: Text(''))),
      );
      expect(tester.takeException(), isNull);
    });

    testWidgets('very long text does not crash', (
      WidgetTester tester,
    ) async {
      final longText = 'A' * 1000;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              width: 100,
              child: Text(
                longText,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      );
      expect(tester.takeException(), isNull);
    });

    testWidgets('very long text in DSText does not crash', (
      WidgetTester tester,
    ) async {
      final longText = 'B' * 500;
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          home: Scaffold(
            body: SizedBox(
              width: 100,
              child: DSText(
                text: longText,
                textStyle: DSTextStyleType.primaryButtonLRegular,
                textColor: Colors.black,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      );
      expect(tester.takeException(), isNull);
    });

    testWidgets('null-safe widget tree renders correctly', (
      WidgetTester tester,
    ) async {
      const String? nullText = null;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Text(nullText ?? 'Fallback'),
            ),
          ),
        ),
      );
      expect(find.text('Fallback'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('special characters render without error', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Text(
              'Symbols: \u00A9 \u00AE \u2122 \u20AC \u00A3 \u00A5 \u2764 \u2605',
            ),
          ),
        ),
      );
      expect(tester.takeException(), isNull);
    });
  });

  group('Text Scale with Device Sizes', () {
    const deviceSizes = {
      'iPhone SE': Size(375, 667),
      'iPhone 14': Size(390, 844),
      'iPad': Size(768, 1024),
    };

    for (final device in deviceSizes.entries) {
      for (final scale in [1.0, 1.5, 2.0]) {
        testWidgets(
          'text at ${scale}x scale on ${device.key}',
          (WidgetTester tester) async {
            tester.view.physicalSize = device.value;
            tester.view.devicePixelRatio = 1.0;
            addTearDown(tester.view.resetPhysicalSize);
            addTearDown(tester.view.resetDevicePixelRatio);

            await tester.pumpWidget(
              MaterialApp(
                home: MediaQuery(
                  data: MediaQueryData(
                    textScaler: TextScaler.linear(scale),
                  ),
                  child: const Scaffold(
                    body: Center(
                      child: Text('Multi-device scaled text'),
                    ),
                  ),
                ),
              ),
            );
            expect(tester.takeException(), isNull);
          },
        );
      }
    }
  });
}
