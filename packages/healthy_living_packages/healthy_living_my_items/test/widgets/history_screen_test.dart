import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_my_items/l10n/healthy_living_my_items_localizations.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_state.dart';
import 'package:healthy_living_my_items/src/ui/screens/history_tab_screen.dart';
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

class MockHistoryListBloc extends MockBloc<HistoryListEvent, HistoryListState>
    implements HistoryListBloc {}

// ---------------------------------------------------------------------------
// KEY INVENTORY (SESSION GAP-B)
// Keys wired in HistoryTabScreen and its children:
//   my_items_filter_all           → GestureDetector in HistoryTabContent  (needs auth + HistoryListLoaded)
//   history_all_filter            → SortByBottomSheetOptionTile           (needs sort sheet open)
//   history_recentlyViewed_filter → SortByBottomSheetOptionTile           (needs sort sheet open)
//   history_submissions_filter    → SortByBottomSheetOptionTile           (needs sort sheet open)
//   offline_error_view            → DSErrorView                          ✓ tested (history_offline_test)
//   retry_button                  → DSErrorView retry                    ✓ tested (history_offline_test)
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['widget'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockHistoryListBloc mockHistoryListBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockHistoryListBloc = MockHistoryListBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockHistoryListBloc,
      Stream<HistoryListState>.empty(),
      initialState: const HistoryListState.initial(),
    );

    final getIt = GetIt.instance;
    if (getIt.isRegistered<HistoryListBloc>()) {
      getIt.unregister<HistoryListBloc>();
    }
    getIt.registerFactory<HistoryListBloc>(() => mockHistoryListBloc);
  });

  tearDown(() async {
    await GetIt.instance.reset();
  });

  Widget buildScreen({ThemeData? theme, double textScale = 1.0}) {
    Widget child = MaterialApp(
      theme: theme ?? dsTheme,
      localizationsDelegates: const [
        ...DesignSystemLocalizations.localizationsDelegates,
        ...HealthyLivingMyItemsLocalizations.localizationsDelegates,
        ...HealthyLivingSharedLocalizations.localizationsDelegates,
      ],
      supportedLocales: HealthyLivingMyItemsLocalizations.supportedLocales,
      home: BlocProvider<AppBloc>.value(
        value: mockAppBloc,
        child: const Scaffold(body: HistoryTabScreen()),
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
  // [HistoryTabScreen] renders
  // -------------------------------------------------------------------------
  group('[HistoryTabScreen] renders', () {
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
  // [HistoryTabScreen] dark mode
  // -------------------------------------------------------------------------
  group('[HistoryTabScreen] dark mode', () {
    testWidgets('renders without crash in dark mode', (tester) async {
      await tester.pumpWidget(
        buildScreen(theme: dsTheme.copyWith(brightness: Brightness.dark)),
      );
      await tester.pump(const Duration(milliseconds: 500));

      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  // [HistoryTabScreen] accessibility
  // -------------------------------------------------------------------------
  group('[HistoryTabScreen] accessibility', () {
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
