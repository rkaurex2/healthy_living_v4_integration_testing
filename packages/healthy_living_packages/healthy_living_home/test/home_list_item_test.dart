// REWRITTEN: Previously entirely commented out and referenced a non-existent
// model (ProductItemUIModel). The correct model is GeneralProductListItemUIModel.
//
// Key corrections from original:
//   - Model: GeneralProductListItemUIModel (not ProductItemUIModel)
//   - Fields: brandName + productName (not title + description)
//   - Root widget: InkWell (not Container — old test asserted findsNothing)
//   - brandName style: DSTextStyleType.primaryCaption, maxLines: 1
//   - productName style: DSTextStyleType.primaryCaptionSemibold, maxLines: 2

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_home/src/ui/widgets/horizontal_product_list_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

// ---------------------------------------------------------------------------
// Test helpers
// ---------------------------------------------------------------------------

GeneralProductListItemUIModel _createItem({
  int productId = 1,
  String imageUrl = 'https://example.com/img.jpg',
  String brandName = 'Test Brand',
  String productName = 'Test Product',
  String productType = 'beauty',
  bool isEWGVerified = false,
  String score = '3',
  String categoryType = 'cosmetics',
}) {
  return GeneralProductListItemUIModel(
    productId: productId,
    imageUrl: imageUrl,
    brandName: brandName,
    productName: productName,
    productType: productType,
    isEWGVerified: isEWGVerified,
    score: score,
    categoryType: categoryType,
  );
}

Widget _buildTestWidget({
  required Widget child,
  double? width,
  bool wrapWithScaffold = true,
}) {
  Widget testWidget = child;

  if (width != null) {
    testWidget = SizedBox(width: width, child: testWidget);
  }

  if (wrapWithScaffold) {
    testWidget = Scaffold(body: testWidget);
  }

  return MaterialApp(
    theme: dsTheme,
    home: testWidget,
    debugShowCheckedModeBanner: false,
  );
}

Finder _findDSTextByText(String text) {
  return find.byWidgetPredicate(
    (widget) => widget is DSText && widget.text == text,
  );
}

void main() {
  group('HorizontalProductListItem Widget Tests', () {
    // -----------------------------------------------------------------------
    // Basic rendering
    // -----------------------------------------------------------------------
    testWidgets('renders correctly with basic product item', (
      WidgetTester tester,
    ) async {
      final item = _createItem();

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      expect(find.byType(HorizontalProductListItem), findsOneWidget);
      expect(find.byType(DSSpacingWidget), findsOneWidget);
    });

    testWidgets('displays brandName text correctly', (
      WidgetTester tester,
    ) async {
      final item = _createItem(brandName: 'Acme Corp');

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      expect(find.text('Acme Corp'), findsOneWidget);
    });

    testWidgets('displays productName text correctly', (
      WidgetTester tester,
    ) async {
      final item = _createItem(productName: 'Super Shampoo');

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      expect(find.text('Super Shampoo'), findsOneWidget);
    });

    testWidgets('displays both brandName and productName simultaneously', (
      WidgetTester tester,
    ) async {
      final item = _createItem(brandName: 'EWG Corp', productName: 'Clean Cream');

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      expect(find.text('EWG Corp'), findsOneWidget);
      expect(find.text('Clean Cream'), findsOneWidget);
    });

    // -----------------------------------------------------------------------
    // EWG verified badge
    // -----------------------------------------------------------------------
    testWidgets('renders EWG verified icon when isEWGVerified is true', (
      WidgetTester tester,
    ) async {
      final item = _createItem(
        brandName: 'EWG Verified Product',
        isEWGVerified: true,
      );

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      // DSImage.asset is used for the EWG badge; should find 2 DSImages total
      // (one network image + one asset badge)
      expect(find.byType(DSImage), findsNWidgets(2));
      expect(find.text('EWG Verified Product'), findsOneWidget);
    });

    testWidgets(
        'does not render EWG verified icon when isEWGVerified is false', (
      WidgetTester tester,
    ) async {
      final item = _createItem(isEWGVerified: false);

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      // Only the network image should be present (no badge)
      expect(find.byType(DSImage), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is DSImage &&
              widget.toString().contains('icEWGVerified'),
        ),
        findsNothing,
      );
    });

    // -----------------------------------------------------------------------
    // Text styles and properties
    // -----------------------------------------------------------------------
    testWidgets('applies correct text styles and properties', (
      WidgetTester tester,
    ) async {
      final item = _createItem(
        brandName: 'Test Brand',
        productName: 'Test Product',
      );

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      final brandTextFinder = _findDSTextByText('Test Brand');
      final productTextFinder = _findDSTextByText('Test Product');

      expect(brandTextFinder, findsOneWidget);
      expect(productTextFinder, findsOneWidget);

      final brandWidget = tester.widget<DSText>(brandTextFinder);
      final productWidget = tester.widget<DSText>(productTextFinder);

      // brandName: primaryCaption, maxLines 1
      expect(brandWidget.textStyle, DSTextStyleType.primaryCaption);
      expect(brandWidget.maxLines, 1);
      expect(brandWidget.overflow, TextOverflow.ellipsis);

      // productName: primaryCaptionSemibold, maxLines 2
      expect(productWidget.textStyle, DSTextStyleType.primaryCaptionSemibold);
      expect(productWidget.maxLines, 2);
      expect(productWidget.overflow, TextOverflow.ellipsis);
    });

    // -----------------------------------------------------------------------
    // Layout structure
    // -----------------------------------------------------------------------
    testWidgets('has correct layout structure', (WidgetTester tester) async {
      final item = _createItem();

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      // Column exists and has crossAxisAlignment.start
      expect(find.byType(Column), findsWidgets);

      final column = tester.widget<Column>(
        find
            .descendant(
              of: find.byType(HorizontalProductListItem),
              matching: find.byType(Column),
            )
            .first,
      );
      expect(column.crossAxisAlignment, CrossAxisAlignment.start);

      // Container with BoxDecoration exists for the image area
      final containers = tester.widgetList<Container>(
        find.descendant(
          of: find.byType(HorizontalProductListItem),
          matching: find.byType(Container),
        ),
      );
      expect(
        containers.where((c) => c.decoration is BoxDecoration),
        isNotEmpty,
      );
    });

    testWidgets('root widget is InkWell (not Container)', (
      WidgetTester tester,
    ) async {
      final item = _createItem();

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      // InkWell is the direct root of HorizontalProductListItem
      expect(find.byType(InkWell), findsWidgets);
    });

    testWidgets('SizedBox dimensions are 104w x 164h', (
      WidgetTester tester,
    ) async {
      final item = _createItem();

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      final sizedBox = tester.widget<SizedBox>(
        find
            .descendant(
              of: find.byType(HorizontalProductListItem),
              matching: find.byType(SizedBox),
            )
            .first,
      );
      expect(sizedBox.width, equals(104.0));
      expect(sizedBox.height, equals(164.0));
    });

    // -----------------------------------------------------------------------
    // Long text (ellipsis overflow)
    // -----------------------------------------------------------------------
    testWidgets('handles long text with ellipsis', (
      WidgetTester tester,
    ) async {
      final longTextItem = _createItem(
        brandName:
            'This is a very long product brand name that should be truncated',
        productName:
            'This is a very long product description that should be truncated after two lines of text to ensure proper layout',
      );

      await tester.pumpWidget(
        _buildTestWidget(
          child: HorizontalProductListItem(item: longTextItem),
          width: 104, // Constrain width to force text overflow
        ),
      );

      expect(
        find.textContaining('This is a very long product brand name'),
        findsOneWidget,
      );
      expect(
        find.textContaining('This is a very long product description'),
        findsOneWidget,
      );
    });

    // -----------------------------------------------------------------------
    // Tap callback
    // -----------------------------------------------------------------------
    testWidgets('calls onTap callback when tapped', (
      WidgetTester tester,
    ) async {
      bool tapped = false;
      final item = _createItem();

      await tester.pumpWidget(
        _buildTestWidget(
          child: HorizontalProductListItem(
            item: item,
            onTap: () => tapped = true,
          ),
        ),
      );

      await tester.tap(find.byType(InkWell).first);
      expect(tapped, isTrue);
    });

    testWidgets('does not crash when onTap is null', (
      WidgetTester tester,
    ) async {
      final item = _createItem();

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      await tester.tap(find.byType(InkWell).first, warnIfMissed: false);
      await tester.pump();

      expect(find.byType(HorizontalProductListItem), findsOneWidget);
    });

    // -----------------------------------------------------------------------
    // Widget key
    // -----------------------------------------------------------------------
    testWidgets('widget key is properly set', (WidgetTester tester) async {
      const testKey = Key('test_home_list_item');
      final item = _createItem();

      await tester.pumpWidget(
        _buildTestWidget(
          child: HorizontalProductListItem(key: testKey, item: item),
        ),
      );

      expect(find.byKey(testKey), findsOneWidget);
    });

    // -----------------------------------------------------------------------
    // Theme and scaffold variations
    // -----------------------------------------------------------------------
    testWidgets('renders with custom theme', (WidgetTester tester) async {
      final item = _createItem(brandName: 'Theme Brand', productName: 'Theme Product');

      await tester.pumpWidget(
        MaterialApp(
          theme: DSThemeData.create(
            colorTheme: DSColorThemeExtension(),
          ),
          home: Scaffold(
            body: HorizontalProductListItem(item: item),
          ),
        ),
      );

      expect(find.byType(HorizontalProductListItem), findsOneWidget);
      expect(find.text('Theme Brand'), findsOneWidget);
    });

    testWidgets('renders without scaffold wrapper', (
      WidgetTester tester,
    ) async {
      final item = _createItem();

      await tester.pumpWidget(
        _buildTestWidget(
          child: Material(child: HorizontalProductListItem(item: item)),
          wrapWithScaffold: false,
        ),
      );

      expect(find.byType(HorizontalProductListItem), findsOneWidget);
      expect(find.byType(Scaffold), findsNothing);
    });

    // -----------------------------------------------------------------------
    // Helper methods
    // -----------------------------------------------------------------------
    testWidgets('uses DSText finder helper to locate brand and product names',
        (WidgetTester tester) async {
      final item = _createItem(
        brandName: 'Helper Brand',
        productName: 'Helper Product',
      );

      await tester.pumpWidget(
        _buildTestWidget(child: HorizontalProductListItem(item: item)),
      );

      expect(_findDSTextByText('Helper Brand'), findsOneWidget);
      expect(_findDSTextByText('Helper Product'), findsOneWidget);

      // With minimal wrapper (no Scaffold)
      await tester.pumpWidget(
        MaterialApp(
          theme: dsTheme,
          home: Directionality(
            textDirection: TextDirection.ltr,
            child: Material(
              child: HorizontalProductListItem(item: item),
            ),
          ),
        ),
      );

      expect(find.byType(HorizontalProductListItem), findsOneWidget);
      expect(find.byType(Material), findsOneWidget);
    });
  });
}
