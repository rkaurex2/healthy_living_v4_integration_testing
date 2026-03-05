// Screen: MyItemsScreen
// Source file: healthy_living_my_items/lib/src/ui/screens/my_items_screen.dart
// BLoC: MyItemsBloc (via injector), AppBloc (from context)
// Offline behavior: NO DSErrorView — MyItemsScreen is a tab container.
//   MyItemsState failure states are for create-list operations, not initial load.
//   Error handling delegated to child tab screens (HistoryTabScreen has DSErrorView).
//   DSErrorView not applicable at this level.
// Retry button present: NO
// TestKeys.offlineErrorView key: N/A — container screen, no load failure state

import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_my_items/l10n/healthy_living_my_items_localizations.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_state.dart';
import 'package:healthy_living_my_items/src/ui/screens/my_items_screen.dart';
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

class MockMyItemsBloc extends MockBloc<MyItemsEvent, MyItemsState>
    implements MyItemsBloc {}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['offline'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockMyItemsBloc mockMyItemsBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockMyItemsBloc = MockMyItemsBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockMyItemsBloc,
      Stream<MyItemsState>.empty(),
      initialState: const MyItemsState.initialState(),
    );

    final getIt = GetIt.instance;
    if (getIt.isRegistered<MyItemsBloc>()) getIt.unregister<MyItemsBloc>();
    getIt.registerFactory<MyItemsBloc>(() => mockMyItemsBloc);
  });

  tearDown(() async {
    await GetIt.instance.reset();
  });

  Widget buildTestApp() {
    return MaterialApp(
      theme: dsTheme,
      localizationsDelegates: const [
        ...DesignSystemLocalizations.localizationsDelegates,
        ...HealthyLivingMyItemsLocalizations.localizationsDelegates,
        ...HealthyLivingSharedLocalizations.localizationsDelegates,
      ],
      supportedLocales: HealthyLivingMyItemsLocalizations.supportedLocales,
      home: BlocProvider<AppBloc>.value(
        value: mockAppBloc,
        child: const MyItemsScreen(index: 0),
      ),
    );
  }

  group('MyItemsScreen offline behavior', () {
    testWidgets('does not crash when BloCs are in initial state (offline)',
        (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(tester.takeException(), isNull);
    });

    testWidgets('renders Scaffold with my_items_screen key — not blank',
        (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.byKey(const Key('my_items_screen')), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    // No retry button test — MyItemsScreen has no retry button.
    // Offline handling is delegated to child tab screens.
  });
}
