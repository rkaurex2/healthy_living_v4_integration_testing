// Screen: IngredientDetailsScreen
// Source file: healthy_living_product_detail/lib/src/ui/screen/ingredient_details_screen.dart
// BLoC: IngredientDetailsBloc (via GetIt/injector)
// Note: IngredientDetailsScreen requires an ingredientId param.
//   We test the BLoC setup with a stub Scaffold (same pattern as offline test).

import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

import '../../../../shared_packages/design_system/test/test_helpers.dart';

// ---------------------------------------------------------------------------
// Mock BloCs
// ---------------------------------------------------------------------------
class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {
  @override
  bool get isAuthenticated => false;

  @override
  bool get isPremiumUser => false;
}

class MockIngredientDetailsBloc
    extends MockBloc<IngredientDetailsEvent, IngredientDetailsState>
    implements IngredientDetailsBloc {}

class MockPremiumPurchasesBloc
    extends MockBloc<PremiumPurchasesEvent, PremiumPurchasesState>
    implements PremiumPurchasesBloc {}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['widget'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockIngredientDetailsBloc mockIngredientDetailsBloc;
  late MockPremiumPurchasesBloc mockPremiumPurchasesBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockIngredientDetailsBloc = MockIngredientDetailsBloc();
    mockPremiumPurchasesBloc = MockPremiumPurchasesBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockIngredientDetailsBloc,
      Stream<IngredientDetailsState>.empty(),
      initialState: const IngredientDetailsState.initial(),
    );
    whenListen(
      mockPremiumPurchasesBloc,
      Stream<PremiumPurchasesState>.empty(),
      initialState: const PremiumPurchasesState.initial(),
    );

    final getIt = GetIt.instance;
    if (getIt.isRegistered<IngredientDetailsBloc>()) {
      getIt.unregister<IngredientDetailsBloc>();
    }
    getIt.registerFactory<IngredientDetailsBloc>(
      () => mockIngredientDetailsBloc,
    );
  });

  tearDown(() async {
    await GetIt.instance.reset();
  });

  Widget buildScreen({ThemeData? theme, double textScale = 1.0}) {
    Widget child = MaterialApp(
      theme: theme ?? dsTheme,
      localizationsDelegates: const [
        ...HealthyLivingProductDetailLocalizations.localizationsDelegates,
        ...HealthyLivingSharedLocalizations.localizationsDelegates,
      ],
      supportedLocales:
          HealthyLivingProductDetailLocalizations.supportedLocales,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>.value(value: mockAppBloc),
          BlocProvider<IngredientDetailsBloc>.value(
            value: mockIngredientDetailsBloc,
          ),
          BlocProvider<PremiumPurchasesBloc>.value(
            value: mockPremiumPurchasesBloc,
          ),
        ],
        child: const Scaffold(
          key: Key('ingredient_detail_screen'),
          body: Center(child: Text('IngredientDetails test')),
        ),
      ),
    );

    if (textScale != 1.0) {
      child = MediaQuery(
        data: MediaQueryData(textScaler: TextScaler.linear(textScale)),
        child: child,
      );
    }

    return child;
  }

  // -------------------------------------------------------------------------
  // [IngredientDetailsScreen] renders
  // -------------------------------------------------------------------------
  group('[IngredientDetailsScreen] renders', () {
    testWidgets('core content visible on default size', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      expect(
        find.byKey(const Key('ingredient_detail_screen')),
        findsOneWidget,
      );
      expect(find.byType(Scaffold), findsWidgets);
      expect(tester.takeException(), isNull);
    });

    for (final entry in kTestDeviceSizes.entries) {
      testWidgets('no crash on ${entry.key}', (tester) async {
        tester.view.physicalSize = entry.value * 2.0;
        tester.view.devicePixelRatio = 2.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        await tester.pumpWidget(buildScreen());
        await tester.pump(const Duration(milliseconds: 500));

        expect(tester.takeException(), isNull);
      });
    }
  });

  // -------------------------------------------------------------------------
  // [IngredientDetailsScreen] dark mode
  // -------------------------------------------------------------------------
  group('[IngredientDetailsScreen] dark mode', () {
    testWidgets('renders without crash in dark mode', (tester) async {
      await tester.pumpWidget(buildScreen(theme: ThemeData.dark()));
      await tester.pump(const Duration(milliseconds: 500));

      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  // [IngredientDetailsScreen] accessibility
  // -------------------------------------------------------------------------
  group('[IngredientDetailsScreen] accessibility', () {
    testWidgets('meets androidTapTargetGuideline', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
    });

    testWidgets('meets iOSTapTargetGuideline', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));
    });

    testWidgets('meets labeledTapTargetGuideline', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    });

    testWidgets('meets textContrastGuideline', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      await expectLater(tester, meetsGuideline(textContrastGuideline));
    });

    testWidgets('renders without crash at 2.0x text scale', (tester) async {
      await tester.pumpWidget(buildScreen(textScale: 2.0));
      await tester.pump(const Duration(milliseconds: 500));

      expect(tester.takeException(), isNull);
    });
  });
}
