// Screen: HomeScreen
// Source file: healthy_living_home/lib/src/ui/screens/home_screen.dart
// BLoC: HomeBloc, JustVerifiedBloc, RecentActivityBloc, YourListBloc (via injector)
// Offline behavior: NO DSErrorView — HomeBloc has no data-load failure state.
//   _onHomeInitialized catches exceptions silently and still emits HomeStarted.
//   Error handling delegated to child widgets (RecentActivityListWidget, etc.).
//   DSErrorView not applicable without a top-level failure state to react to.
// Retry button present: NO
// TestKeys.offlineErrorView key: N/A — no failure state to trigger it

import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_home/src/analytics/home_analytics.dart';
import 'package:healthy_living_home/src/ui/bloc/home_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/home_event.dart';
import 'package:healthy_living_home/src/ui/bloc/home_state.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_event.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_state.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/ui/screens/home_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

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

class MockBrowseCategoriesBloc
    extends MockBloc<BrowseCategoriesEvent, BrowseCategoriesState>
    implements BrowseCategoriesBloc {}

class MockHomeAnalytics extends Fake implements HomeAnalytics {}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['offline'])
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

  Widget buildTestApp() {
    return MaterialApp(
      theme: dsTheme,
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
  }

  group('HomeScreen offline behavior', () {
    testWidgets('does not crash when BloCs are in initial state (offline)',
        (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(tester.takeException(), isNull);
    });

    testWidgets('renders Scaffold — not blank', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.byType(Scaffold), findsWidgets);
      expect(tester.takeException(), isNull);
    });
  });
}

class MockPremiumPurchasesBloc
    extends MockBloc<PremiumPurchasesEvent, PremiumPurchasesState>
    implements PremiumPurchasesBloc {}
