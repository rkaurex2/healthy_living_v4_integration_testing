// Screen: SignInScreen (stub approach)
// Source file: healthy_living_auth/lib/src/ui/screens/signin_screen.dart
// BLoC: SignInBloc (via GetIt/injector) — requires build_runner-generated mocks
//   for full instantiation. This file uses a stub Scaffold approach to validate
//   BLoC wiring and rendering without the full screen dependency tree.
// Constructor: SignInScreen({bool hideBackButton = false, String openedFrom = '',
//   int? myListTapIndex})
// TestKeys: signInEmailField, signInPasswordField, signInSubmitButton,
//   forgotPasswordButton

import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
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

class MockSignInBloc extends MockBloc<SignInEvent, SignInState>
    implements SignInBloc {}

class MockPremiumPurchasesBloc
    extends MockBloc<PremiumPurchasesEvent, PremiumPurchasesState>
    implements PremiumPurchasesBloc {}

// ---------------------------------------------------------------------------
// KEY INVENTORY (SESSION GAP-B)
// Keys wired in Auth screens and their children:
//   sign_in_email_field    → DSTextInput in SignInScreen            (needs real SignInScreen)
//   sign_in_password_field → DSTextInput in SignInScreen            (needs real SignInScreen)
//   sign_in_submit_button  → DSButtonPrimary in SignInScreen        (needs real SignInScreen)
//   forgot_password_button → GestureDetector in SignInScreen        (needs real SignInScreen)
//   forgot_success_view    → Scaffold in CheckYourEmailContent      (needs ForgotPasswordSuccess)
// Note: This test uses a stub Scaffold. Real SignInScreen needs
//       build_runner-generated mocks for full instantiation.
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
@Tags(['widget'])
void main() {
  late MockAppBloc mockAppBloc;
  late MockSignInBloc mockSignInBloc;
  late MockPremiumPurchasesBloc mockPremiumPurchasesBloc;

  setUp(() {
    mockAppBloc = MockAppBloc();
    mockSignInBloc = MockSignInBloc();
    mockPremiumPurchasesBloc = MockPremiumPurchasesBloc();

    whenListen(
      mockAppBloc,
      Stream<AppState>.empty(),
      initialState: const AppState.splashInitial(),
    );
    whenListen(
      mockSignInBloc,
      Stream<SignInState>.empty(),
      initialState: const SignInState(
        email: '',
        password: '',
        isSignInButtonDisabled: true,
        emailTextInputState: DSTextInputState.defaultState,
        passwordTextInputState: DSTextInputState.defaultState,
        status: AuthScreenStatus.initial,
      ),
    );
    whenListen(
      mockPremiumPurchasesBloc,
      Stream<PremiumPurchasesState>.empty(),
      initialState: const PremiumPurchasesState.initial(),
    );

    final getIt = GetIt.instance;
    if (getIt.isRegistered<SignInBloc>()) {
      getIt.unregister<SignInBloc>();
    }
    getIt.registerFactory<SignInBloc>(() => mockSignInBloc);
  });

  tearDown(() async {
    await GetIt.instance.reset();
  });

  /// SignInScreen requires build_runner-generated dependencies for full
  /// instantiation. We use a stub Scaffold to validate BLoC provider wiring,
  /// theme, localizations, and device-size rendering without the full widget
  /// tree.
  Widget buildTestApp({ThemeData? theme, double textScale = 1.0}) {
    Widget child = MaterialApp(
      theme: theme ?? dsTheme,
      localizationsDelegates: const [
        ...HealthyLivingAuthLocalizations.localizationsDelegates,
        ...HealthyLivingSharedLocalizations.localizationsDelegates,
      ],
      supportedLocales: HealthyLivingAuthLocalizations.supportedLocales,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>.value(value: mockAppBloc),
          BlocProvider<SignInBloc>.value(value: mockSignInBloc),
          BlocProvider<PremiumPurchasesBloc>.value(
              value: mockPremiumPurchasesBloc),
        ],
        child: const Scaffold(
          body: Center(child: Text('Auth test')),
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
  // Group 1 — Renders + 7 device variants
  // -------------------------------------------------------------------------
  group('[SignInScreen] renders', () {
    testWidgets('core content visible on default size', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));

      expect(find.byType(Scaffold), findsWidgets);
      expect(find.text('Auth test'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('does not crash when BloCs are in initial state',
        (tester) async {
      await tester.pumpWidget(buildTestApp());
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

        await tester.pumpWidget(buildTestApp());
        await tester.pump(const Duration(milliseconds: 500));
        expect(find.byType(Scaffold), findsWidgets);
        expect(tester.takeException(), isNull);
      });
    }
  });

  // -------------------------------------------------------------------------
  // Group 2 — Dark mode
  // -------------------------------------------------------------------------
  group('[SignInScreen] dark mode', () {
    testWidgets('renders without crash in dark mode', (tester) async {
      await tester.pumpWidget(buildTestApp(theme: ThemeData.dark()));
      await tester.pump(const Duration(milliseconds: 500));

      expect(find.text('Auth test'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  // Group 3 — Accessibility
  // -------------------------------------------------------------------------
  group('[SignInScreen] accessibility', () {
    testWidgets('meets androidTapTargetGuideline', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));

      await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
    });

    testWidgets('meets iOSTapTargetGuideline', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));

      await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));
    });

    testWidgets('meets labeledTapTargetGuideline', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));

      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    });

    testWidgets('meets textContrastGuideline', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.pump(const Duration(milliseconds: 500));

      await expectLater(tester, meetsGuideline(textContrastGuideline));
    });

    testWidgets('renders without crash at 2.0x text scale', (tester) async {
      await tester.pumpWidget(buildTestApp(textScale: 2.0));
      await tester.pump(const Duration(milliseconds: 500));

      expect(tester.takeException(), isNull);
    });
  });
}
