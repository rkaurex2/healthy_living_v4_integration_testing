// Screen: MyAccountScreen / MyAccountContentScreen
// Source file: healthy_living_account/lib/src/ui/screens/my_account_screen.dart
// BLoC: MyAccountBloc (created via injector with AccountInitialized event)
// Offline behavior: DSErrorView shown on MyAccountFailure. Replaces full
//   content screen with persistent error + retry. Shows loading skeleton
//   via MyAccountLoadInProgress.
// Retry button present: YES — DSErrorView retry dispatches AccountInitialized()
// TestKeys.offlineErrorView key: YES (Key('offline_error_view') on DSErrorView)
// TestKeys.retryButton key: YES (Key('retry_button') on DSButtonPrimary)

import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_event.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_state.dart';
import 'package:healthy_living_account/src/ui/screens/my_account_screen.dart';
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

class MockMyAccountBloc extends MockBloc<MyAccountEvent, MyAccountState>
    implements MyAccountBloc {}

class MockPremiumPurchasesBloc
    extends MockBloc<PremiumPurchasesEvent, PremiumPurchasesState>
    implements PremiumPurchasesBloc {}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['offline'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockMyAccountBloc mockAccountBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockAccountBloc = MockMyAccountBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockAccountBloc,
      Stream<MyAccountState>.empty(),
      initialState: const MyAccountState.initial(),
    );

    final getIt = GetIt.instance;
    if (getIt.isRegistered<MyAccountBloc>()) {
      getIt.unregister<MyAccountBloc>();
    }
    getIt.registerFactory<MyAccountBloc>(() => mockAccountBloc);
  });

  tearDown(() async {
    await GetIt.instance.reset();
  });

  Widget buildTestApp() {
    return MaterialApp(
      theme: dsTheme,
      localizationsDelegates: const [
        ...DesignSystemLocalizations.localizationsDelegates,
        ...HealthyLivingAccountLocalizations.localizationsDelegates,
        ...HealthyLivingSharedLocalizations.localizationsDelegates,
      ],
      supportedLocales: HealthyLivingAccountLocalizations.supportedLocales,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>.value(value: mockAppBloc),
          BlocProvider<PremiumPurchasesBloc>.value(
              value: MockPremiumPurchasesBloc()),
        ],
        child: const MyAccountScreen(),
      ),
    );
  }

  group('MyAccountScreen offline behavior', () {
    testWidgets('does not crash when BloCs are in initial state (offline)',
        (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(tester.takeException(), isNull);
    });

    testWidgets('renders Scaffold with account_screen key — not blank',
        (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.byKey(const Key('account_screen')), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('shows DSErrorView when MyAccountFailure is emitted',
        (tester) async {
      whenListen(
        mockAccountBloc,
        Stream<MyAccountState>.empty(),
        initialState: MyAccountState.error(exception: Exception('Offline')),
      );
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.byKey(const Key('offline_error_view')), findsOneWidget);
      expect(find.byKey(const Key('retry_button')), findsOneWidget);
    });
  });
}
