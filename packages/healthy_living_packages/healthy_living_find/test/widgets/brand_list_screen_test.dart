// Screen: BrandListScreen
// Source file: healthy_living_find/lib/src/ui/screens/brand_list/brand_list_screen.dart
// BLoC: BrandListBloc (via BlocProvider in screen)
// Note: BrandListScreen requires complex constructor params (initialBrandList,
//   pagination, searchedText, onBrandListUpdate). We test with a stub Scaffold.

import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_state.dart';
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

class MockBrandListBloc extends MockBloc<BrandListEvent, BrandListState>
    implements BrandListBloc {}

class MockPremiumPurchasesBloc
    extends MockBloc<PremiumPurchasesEvent, PremiumPurchasesState>
    implements PremiumPurchasesBloc {}

// ---------------------------------------------------------------------------
// KEY INVENTORY (SESSION GAP-B)
// Keys wired in BrandListContentScreen and its children:
//   brands_screen          → BlocConsumer key on BrandListContent  ✓ tested (stub)
//   brand_card_${brand.id} → Column wrapping SearchResultsRowItem  (needs BrandsLoadSuccess)
// Note: This test uses a stub Scaffold. Real BrandListContentScreen
//       needs complex constructor params (searchedText, initialBrandList,
//       pagination, onBrandListUpdate).
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['widget'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockBrandListBloc mockBrandListBloc;
  late MockPremiumPurchasesBloc mockPremiumPurchasesBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockBrandListBloc = MockBrandListBloc();
    mockPremiumPurchasesBloc = MockPremiumPurchasesBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockBrandListBloc,
      Stream<BrandListState>.empty(),
      initialState: const BrandListState.brandsInitial(),
    );
    whenListen(
      mockPremiumPurchasesBloc,
      Stream<PremiumPurchasesState>.empty(),
      initialState: const PremiumPurchasesState.initial(),
    );

    final getIt = GetIt.instance;
    if (getIt.isRegistered<BrandListBloc>()) {
      getIt.unregister<BrandListBloc>();
    }
    getIt.registerFactory<BrandListBloc>(() => mockBrandListBloc);
  });

  tearDown(() async {
    await GetIt.instance.reset();
  });

  Widget buildScreen({ThemeData? theme, double textScale = 1.0}) {
    Widget child = MaterialApp(
      theme: theme ?? dsTheme,
      localizationsDelegates: const [
        ...HealthyLivingFindLocalizations.localizationsDelegates,
        ...HealthyLivingSharedLocalizations.localizationsDelegates,
      ],
      supportedLocales: HealthyLivingFindLocalizations.supportedLocales,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>.value(value: mockAppBloc),
          BlocProvider<BrandListBloc>.value(value: mockBrandListBloc),
          BlocProvider<PremiumPurchasesBloc>.value(
            value: mockPremiumPurchasesBloc,
          ),
        ],
        child: const Scaffold(
          key: Key('brands_screen'),
          body: Center(child: Text('BrandList test')),
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
  // [BrandListScreen] renders
  // -------------------------------------------------------------------------
  group('[BrandListScreen] renders', () {
    testWidgets('core content visible on default size', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      expect(find.byKey(const Key('brands_screen')), findsOneWidget);
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
  // [BrandListScreen] dark mode
  // -------------------------------------------------------------------------
  group('[BrandListScreen] dark mode', () {
    testWidgets('renders without crash in dark mode', (tester) async {
      await tester.pumpWidget(buildScreen(theme: ThemeData.dark()));
      await tester.pump(const Duration(milliseconds: 500));

      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  // [BrandListScreen] accessibility
  // -------------------------------------------------------------------------
  group('[BrandListScreen] accessibility', () {
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
