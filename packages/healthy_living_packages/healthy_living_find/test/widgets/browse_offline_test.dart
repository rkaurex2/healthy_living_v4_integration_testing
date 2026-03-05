// Screen: BrowseScreen / BrowseContentScreen
// Source file: healthy_living_find/lib/src/ui/screens/browse/browse_screen.dart
// BLoC: BrowseCategoriesBloc (provided by parent)
// Offline behavior: DSErrorView shown on BrowseCategoriesFailure and
//   BrowseInternetFailure. DSToast also fires for transient notification.
//   Shows FindScreenShimmer during loading state.
// Retry button present: YES — DSErrorView retry dispatches
//   BrowseCategoriesEvent.browseCategoriesInitialize(isEwgVerified: false)
// TestKeys.offlineErrorView key: YES (Key('offline_error_view') on DSErrorView)
// TestKeys.retryButton key: YES (Key('retry_button') on DSButtonPrimary)

import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_categories_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_categories_event.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_categories_state.dart';
import 'package:healthy_living_find/src/ui/screens/browse/browse_screen.dart';
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

class MockBrowseCategoriesBloc
    extends MockBloc<BrowseCategoriesEvent, BrowseCategoriesState>
    implements BrowseCategoriesBloc {}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['offline'])
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
          BlocProvider<BrowseCategoriesBloc>.value(value: mockBrowseBloc),
        ],
        child: const BrowseScreen(),
      ),
    );
  }

  group('BrowseScreen offline behavior', () {
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

    testWidgets('shows DSErrorView when BrowseCategoriesFailure is emitted',
        (tester) async {
      whenListen(
        mockBrowseBloc,
        Stream<BrowseCategoriesState>.empty(),
        initialState: BrowseCategoriesState.browseCategoriesFailure(
          Exception('Network error'),
        ),
      );
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.byKey(const Key('offline_error_view')), findsOneWidget);
      expect(find.byKey(const Key('retry_button')), findsOneWidget);
    });

    testWidgets('shows DSErrorView when BrowseInternetFailure is emitted',
        (tester) async {
      whenListen(
        mockBrowseBloc,
        Stream<BrowseCategoriesState>.empty(),
        initialState: BrowseCategoriesState.browseInternetFailure(
          Exception('No connection'),
        ),
      );
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.byKey(const Key('offline_error_view')), findsOneWidget);
      expect(find.byKey(const Key('retry_button')), findsOneWidget);
    });
  });
}
