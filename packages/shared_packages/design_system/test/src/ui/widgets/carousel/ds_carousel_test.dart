import 'package:design_system/design_system.dart';
import 'package:design_system/src/ui/widgets/carousel/ds_carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSCarousel', () {
    Widget createTestWidget({
      required List<Widget> slidesList,
      double height = 200,
      bool isAutoPlay = false,
      bool isIndicatorOverlap = false,
    }) {
      return MaterialApp(
        theme: dsTheme,
        home: Scaffold(
          body: SizedBox(
            height: height + 50,
            child: DSCarousel(
              slidesList: slidesList,
              height: height,
              isAutoPlay: isAutoPlay,
              isIndicatorOverlap: isIndicatorOverlap,
            ),
          ),
        ),
      );
    }

    Widget buildSlide(String label, Color color) {
      return Container(
        color: color,
        child: Center(child: Text(label)),
      );
    }

    testWidgets('renders slides', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestWidget(
          slidesList: [
            buildSlide('Slide 1', Colors.red),
          ],
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(DSCarousel), findsOneWidget);
      expect(find.text('Slide 1'), findsOneWidget);
    });

    testWidgets('shows indicator when more than 1 slide', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          slidesList: [
            buildSlide('Slide 1', Colors.red),
            buildSlide('Slide 2', Colors.blue),
            buildSlide('Slide 3', Colors.green),
          ],
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(DSCarouselIndicator), findsOneWidget);
    });

    testWidgets('hides indicator when only 1 slide', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          slidesList: [
            buildSlide('Slide 1', Colors.red),
          ],
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(DSCarouselIndicator), findsNothing);
    });

    testWidgets('renders with multiple slides', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          slidesList: [
            buildSlide('Slide 1', Colors.red),
            buildSlide('Slide 2', Colors.blue),
          ],
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(DSCarousel), findsOneWidget);
    });

    testWidgets('renders with indicator overlap mode', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          slidesList: [
            buildSlide('Slide 1', Colors.red),
            buildSlide('Slide 2', Colors.blue),
          ],
          isIndicatorOverlap: true,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(Stack), findsAtLeastNWidgets(1));
      expect(find.byType(DSCarouselIndicator), findsOneWidget);
    });

    testWidgets('renders without indicator overlap mode using Column', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        createTestWidget(
          slidesList: [
            buildSlide('Slide 1', Colors.red),
            buildSlide('Slide 2', Colors.blue),
          ],
          isIndicatorOverlap: false,
        ),
      );
      await tester.pumpAndSettle();

      final columnFinder = find.descendant(
        of: find.byType(DSCarousel),
        matching: find.byType(Column),
      );
      expect(columnFinder, findsAtLeastNWidgets(1));
    });
  });
}
