import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/analytics/browse_analytics.dart';
import 'package:healthy_living_find/src/ui/widgets/browse_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

import '../../../../shared_packages/design_system/test/test_helpers.dart';

// ---------------------------------------------------------------------------
// Mock BloCs & Fakes
// ---------------------------------------------------------------------------
class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {
  @override
  bool get isAuthenticated => false;

  @override
  bool get isPremiumUser => false;
}

class MockBrowseCategoriesBloc
    extends MockBloc<BrowseCategoriesEvent, BrowseCategoriesState>
    implements BrowseCategoriesBloc {
  @override
  bool get hasBrowseData => false;
}

class MockBrowseAnalytics extends Fake implements BrowseAnalytics {}

// ---------------------------------------------------------------------------
// KEY INVENTORY (SESSION GAP-B)
// Keys wired in BrowseContentScreen and its children:
//   find_landing_screen   → Scaffold (always visible)             ✓ tested
//   sunscreen_banner      → SunscreenProductCard Container        (needs BrowseCategoriesSuccess)
//   category_grid         → GradientGridSection GridView.count    (needs BrowseCategoriesSuccess)
//   browse_by_category    → BrowseProductByCategory ListView      (needs BrowseCategoriesSuccess)
//   subcategory_list_$i   → HorizontalListWithTitle (dynamic)     (needs BrowseCategoriesSuccess)
//   offline_error_view    → DSErrorView                           ✓ tested (browse_offline_test)
//   retry_button          → DSErrorView retry                     ✓ tested (browse_offline_test)
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['widget'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockBrowseCategoriesBloc mockBrowseBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockBrowseBloc = MockBrowseCategoriesBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockBrowseBloc,
      Stream<BrowseCategoriesState>.empty(),
      initialState: const BrowseCategoriesState.browseCategoriesInitial(),
    );

    final getIt = GetIt.instance;
    if (getIt.isRegistered<BrowseAnalytics>()) {
      getIt.unregister<BrowseAnalytics>();
    }
    getIt.registerFactory<BrowseAnalytics>(() => MockBrowseAnalytics());
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
          BlocProvider<BrowseCategoriesBloc>.value(value: mockBrowseBloc),
        ],
        child: const BrowseContentScreen(),
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
  // [BrowseContentScreen] renders
  // -------------------------------------------------------------------------
  group('[BrowseContentScreen] renders', () {
    testWidgets('core content visible on default size', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      expect(find.byType(Scaffold), findsWidgets);
      expect(find.byKey(const Key('find_landing_screen')), findsOneWidget);
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
  // [BrowseContentScreen] dark mode
  // -------------------------------------------------------------------------
  group('[BrowseContentScreen] dark mode', () {
    testWidgets('renders without crash in dark mode', (tester) async {
      await tester.pumpWidget(buildScreen(theme: ThemeData.dark()));
      await tester.pump(const Duration(milliseconds: 500));

      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  // [BrowseContentScreen] accessibility
  // -------------------------------------------------------------------------
  group('[BrowseContentScreen] accessibility', () {
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
