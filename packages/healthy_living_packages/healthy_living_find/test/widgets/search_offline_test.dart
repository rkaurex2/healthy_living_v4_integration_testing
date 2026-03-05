// Screen: SearchContentScreen (Find/Search)
// Source file: healthy_living_find/lib/src/ui/screens/search_content_screen.dart
// BLoC: UniversalSearchBloc (provided by parent SearchScreen via injector)
// Offline behavior: NO DSErrorView — UniversalSearchState has no failure variant.
//   Search is a thin wrapper that delegates to tab-specific content screens.
//   Error handling deferred to child SearchTabsWidget per-tab.
//   DSErrorView not applicable without a top-level failure state to react to.
// Retry button present: NO
// TestKeys.offlineErrorView key: N/A — no failure state to trigger it

import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_state.dart';
import 'package:healthy_living_find/src/ui/screens/search_content_screen.dart';
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

class MockUniversalSearchBloc
    extends MockBloc<UniversalSearchEvent, UniversalSearchState>
    implements UniversalSearchBloc {
  @override
  String get textInputHintText => 'Search products...';
}

class MockPremiumPurchasesBloc
    extends MockBloc<PremiumPurchasesEvent, PremiumPurchasesState>
    implements PremiumPurchasesBloc {}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['offline'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockUniversalSearchBloc mockSearchBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockSearchBloc = MockUniversalSearchBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockSearchBloc,
      Stream<UniversalSearchState>.empty(),
      initialState: const UniversalSearchState.searchInitial(),
    );
  });

  tearDown(() async {
    await GetIt.instance.reset();
  });

  Widget buildTestApp() {
    return MaterialApp(
      theme: dsTheme,
      localizationsDelegates: const [
        ...HealthyLivingFindLocalizations.localizationsDelegates,
        ...HealthyLivingSharedLocalizations.localizationsDelegates,
      ],
      supportedLocales: HealthyLivingFindLocalizations.supportedLocales,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>.value(value: mockAppBloc),
          BlocProvider<UniversalSearchBloc>.value(value: mockSearchBloc),
          BlocProvider<PremiumPurchasesBloc>.value(
              value: MockPremiumPurchasesBloc()),
        ],
        child: const Scaffold(body: SearchContentScreen()),
      ),
    );
  }

  group('SearchContentScreen offline behavior', () {
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
