// Screen: MyAccountScreen
// Source file: healthy_living_account/lib/src/ui/screens/my_account_screen.dart
// BLoC: MyAccountBloc (via GetIt/injector), AppBloc (via BlocProvider),
//       PremiumPurchasesBloc (via BlocProvider)

import 'dart:ui';

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

class MockMyAccountBloc extends MockBloc<MyAccountEvent, MyAccountState>
    implements MyAccountBloc {}

class MockPremiumPurchasesBloc
    extends MockBloc<PremiumPurchasesEvent, PremiumPurchasesState>
    implements PremiumPurchasesBloc {}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['widget'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockMyAccountBloc mockAccountBloc;
  late MockPremiumPurchasesBloc mockPremiumPurchasesBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockAccountBloc = MockMyAccountBloc();
    mockPremiumPurchasesBloc = MockPremiumPurchasesBloc();

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
    whenListen(
      mockPremiumPurchasesBloc,
      Stream<PremiumPurchasesState>.empty(),
      initialState: const PremiumPurchasesState.initial(),
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

  Widget buildScreen({ThemeData? theme, double textScale = 1.0}) {
    Widget child = MaterialApp(
      theme: theme ?? dsTheme,
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
              value: mockPremiumPurchasesBloc),
        ],
        child: const MyAccountScreen(),
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
  // Group 1 — Renders + 7 device variants
  // -------------------------------------------------------------------------
  group('[MyAccountScreen] renders', () {
    testWidgets('core content visible on default size', (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      expect(find.byKey(const Key('account_screen')), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('does not crash when BloCs are in initial state',
        (tester) async {
      await tester.pumpWidget(buildScreen());
      await tester.pump(const Duration(milliseconds: 500));

      expect(find.byType(Scaffold), findsWidgets);
      expect(tester.takeException(), isNull);
    });

    for (final device in kTestDeviceSizes.entries) {
      testWidgets('renders on ${device.key} (${device.value.width.toInt()}x'
          '${device.value.height.toInt()})', (tester) async {
        tester.view.physicalSize = device.value;
        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        await tester.pumpWidget(buildScreen());
        await tester.pump(const Duration(milliseconds: 500));
        expect(find.byKey(const Key('account_screen')), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    }
  });

  // -------------------------------------------------------------------------
  // Group 2 — Dark mode
  // -------------------------------------------------------------------------
  group('[MyAccountScreen] dark mode', () {
    testWidgets('renders without crash in dark mode', (tester) async {
      await tester.pumpWidget(buildScreen(theme: dsTheme.copyWith(brightness: Brightness.dark)));
      await tester.pump(const Duration(milliseconds: 500));

      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  // Group 3 — Accessibility
  // -------------------------------------------------------------------------
  group('[MyAccountScreen] accessibility', () {
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
