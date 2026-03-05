import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/analytics/home_analytics.dart';
import 'package:healthy_living_home/src/ui/bloc/home_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/home_event.dart';
import 'package:healthy_living_home/src/ui/bloc/home_state.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_event.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_state.dart';
import 'package:healthy_living_home/src/ui/screens/home_screen.dart';
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

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {
  @override
  bool get isAuthenticated => false;
}

class MockJustVerifiedBloc
    extends MockBloc<JustVerifiedEvent, JustVerifiedState>
    implements JustVerifiedBloc {}

class MockPremiumPurchasesBloc
    extends MockBloc<PremiumPurchasesEvent, PremiumPurchasesState>
    implements PremiumPurchasesBloc {}

class MockBrowseCategoriesBloc
    extends MockBloc<BrowseCategoriesEvent, BrowseCategoriesState>
    implements BrowseCategoriesBloc {}

class MockHomeAnalytics extends Fake implements HomeAnalytics {}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['widget'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockHomeBloc mockHomeBloc;
  late MockJustVerifiedBloc mockJustVerifiedBloc;
  late MockPremiumPurchasesBloc mockPremiumPurchasesBloc;
  late MockBrowseCategoriesBloc mockBrowseCategoriesBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockHomeBloc = MockHomeBloc();
    mockJustVerifiedBloc = MockJustVerifiedBloc();
    mockPremiumPurchasesBloc = MockPremiumPurchasesBloc();
    mockBrowseCategoriesBloc = MockBrowseCategoriesBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockHomeBloc,
      Stream<HomeState>.empty(),
      initialState: const HomeState.homeStarted(shouldRefreshPremiumFlag: false, isSubscriptionExpired: false),
    );
    whenListen(
      mockJustVerifiedBloc,
      Stream<JustVerifiedState>.empty(),
      initialState: const JustVerifiedState.justVerifiedListLoadInProgress(),
    );
    whenListen(
      mockPremiumPurchasesBloc,
      Stream<PremiumPurchasesState>.empty(),
      initialState: const PremiumPurchasesState.initial(),
    );
    whenListen(
      mockBrowseCategoriesBloc,
      Stream<BrowseCategoriesState>.empty(),
      initialState: const BrowseCategoriesState.browseCategoriesInitial(),
    );

    final getIt = GetIt.instance;
    if (getIt.isRegistered<HomeBloc>()) getIt.unregister<HomeBloc>();
    if (getIt.isRegistered<JustVerifiedBloc>()) {
      getIt.unregister<JustVerifiedBloc>();
    }
    if (getIt.isRegistered<HomeAnalytics>()) {
      getIt.unregister<HomeAnalytics>();
    }

    getIt.registerFactory<HomeBloc>(() => mockHomeBloc);
    getIt.registerFactory<JustVerifiedBloc>(() => mockJustVerifiedBloc);
    getIt.registerFactory<HomeAnalytics>(() => MockHomeAnalytics());
  });

  tearDown(() async {
    final getIt = GetIt.instance;
    await getIt.reset();
  });

  Widget buildScreen({ThemeData? theme, double textScale = 1.0}) {
    Widget child = MaterialApp(
      theme: theme ?? dsTheme,
      localizationsDelegates: const [
        ...DesignSystemLocalizations.localizationsDelegates,
        ...HealthyLivingHomeLocalizations.localizationsDelegates,
        ...HealthyLivingSharedLocalizations.localizationsDelegates,
      ],
      supportedLocales: HealthyLivingHomeLocalizations.supportedLocales,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>.value(value: mockAppBloc),
          BlocProvider<PremiumPurchasesBloc>.value(value: mockPremiumPurchasesBloc),
          BlocProvider<BrowseCategoriesBloc>.value(value: mockBrowseCategoriesBloc),
        ],
        child: const HomeScreen(),
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
  // [HomeScreen] renders
  // -------------------------------------------------------------------------
  group('[HomeScreen] renders', () {
    testWidgets('core content visible on default size', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

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
  // [HomeScreen] dark mode
  // -------------------------------------------------------------------------
  group('[HomeScreen] dark mode', () {
    testWidgets('renders without crash in dark mode', (tester) async {
      await tester.pumpWidget(buildScreen(theme: dsTheme.copyWith(brightness: Brightness.dark)));
      await tester.pump(const Duration(milliseconds: 500));

      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  // [HomeScreen] accessibility
  // -------------------------------------------------------------------------
  group('[HomeScreen] accessibility', () {
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
