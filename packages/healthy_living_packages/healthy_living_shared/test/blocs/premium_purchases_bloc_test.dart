import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/entitlements/entitlements_verify_response_model.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

EntitlementsResponseModel _testEntitlement() =>
    const EntitlementsResponseModel(
      entitlementId: 'premium',
      active: true,
      productId: 'prod_annual',
      environment: 'production',
    );

UserDataModel _premiumUserData() => UserDataModel(
      email: 'user@test.com',
      country: 'US',
      zipCode: '10001',
      subscribeNewsletter: false,
      revenueCat: const AuthRevenueCatResponseModel(appUserId: 'rc_user_123'),
      entitlements: [_testEntitlement()],
    );

UserDataModel _nonPremiumUserData() => const UserDataModel(
      email: 'user@test.com',
      country: 'US',
      zipCode: '10001',
      subscribeNewsletter: false,
      revenueCat: null,
      entitlements: null,
    );

NetworkResponse<EntitlementsVerifyResponseModel> _entitlementsSuccess({
  UserDataModel? userData,
}) =>
    NetworkResponse<EntitlementsVerifyResponseModel>(
      data: EntitlementsVerifyResponseModel(
        userData: userData ?? _premiumUserData(),
      ),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<EntitlementsVerifyResponseModel> _entitlementsNonPremium() =>
    NetworkResponse<EntitlementsVerifyResponseModel>(
      data: EntitlementsVerifyResponseModel(
        userData: _nonPremiumUserData(),
      ),
      statusCode: 200,
      responseHeaders: const {},
    );

NetworkResponse<EntitlementsVerifyResponseModel> _entitlementsNullUserData() =>
    const NetworkResponse<EntitlementsVerifyResponseModel>(
      data: EntitlementsVerifyResponseModel(userData: null),
      statusCode: 200,
      responseHeaders: {},
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockUserDataRepository mockUserDataRepo;
  late MockSessionRepository mockSessionRepo;
  late MockPaywallAnalytics mockPaywallAnalytics;

  setUp(() {
    mockUserDataRepo = MockUserDataRepository();
    mockSessionRepo = MockSessionRepository();
    mockPaywallAnalytics = MockPaywallAnalytics();
  });

  PremiumPurchasesBloc buildBloc() => PremiumPurchasesBloc(
        userDataRepository: mockUserDataRepo,
        sessionRepository: mockSessionRepo,
        paywallAnalytics: mockPaywallAnalytics,
      );

  group('PremiumPurchasesBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is PremiumPurchasesInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<PremiumPurchasesInitial>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // PaywallPresented
    // -----------------------------------------------------------------------
    // NOTE: RevenueCatUI.presentPaywallIfNeeded is a static method that
    // cannot be mocked with Mockito. Tests for the PaywallPresented event
    // focus on the exception path, which exercises the try/catch block
    // without hitting the static call.
    group('PaywallPresented', () {
      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'emits [paywallLoadInProgress] first when paywall is presented',
        build: buildBloc,
        setUp: () {
          when(mockPaywallAnalytics.logPaywallView(
            source: anyNamed('source'),
          )).thenThrow(Exception('Test exception to short-circuit'));
        },
        act: (bloc) => bloc.add(
          const PremiumPurchasesEvent.paywallPresented(
            paywallSource: PaywallSource.homeGetPremium,
          ),
        ),
        expect: () => [
          isA<PaywallLoadInProgress>(),
          isA<PaywallLoadFailure>(),
        ],
      );

      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'emits paywallLoadFailure with exception when analytics throws',
        build: buildBloc,
        setUp: () {
          when(mockPaywallAnalytics.logPaywallView(
            source: anyNamed('source'),
          )).thenThrow(Exception('Analytics failed'));
        },
        act: (bloc) => bloc.add(
          const PremiumPurchasesEvent.paywallPresented(
            paywallSource: PaywallSource.myAccount,
          ),
        ),
        expect: () => [
          isA<PaywallLoadInProgress>(),
          isA<PaywallLoadFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );

      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'calls logPaywallView with correct analytics value',
        build: buildBloc,
        setUp: () {
          when(mockPaywallAnalytics.logPaywallView(
            source: anyNamed('source'),
          )).thenThrow(Exception('Short circuit'));
        },
        act: (bloc) => bloc.add(
          const PremiumPurchasesEvent.paywallPresented(
            paywallSource: PaywallSource.productDetail,
          ),
        ),
        verify: (_) {
          verify(mockPaywallAnalytics.logPaywallView(
            source: PaywallSource.productDetail.analyticsValue,
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // EntitlementsVerified – success (premium user)
    // -----------------------------------------------------------------------
    group('EntitlementsVerified – success (premium user)', () {
      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'emits [inProgress, success] when user is premium',
        build: buildBloc,
        setUp: () {
          when(mockUserDataRepo.verifyEntitlements())
              .thenAnswer((_) async => _entitlementsSuccess());
          when(mockSessionRepo.saveIsPremiumUser(any))
              .thenAnswer((_) async => true);
          when(mockPaywallAnalytics.logPaywallSubmit(
            subscriptionId: anyNamed('subscriptionId'),
            entitlementId: anyNamed('entitlementId'),
            active: anyNamed('active'),
            environment: anyNamed('environment'),
          )).thenAnswer((_) async {});
        },
        act: (bloc) =>
            bloc.add(const PremiumPurchasesEvent.entitlementsVerified()),
        expect: () => [
          isA<EntitlementsVerificationInProgress>(),
          isA<EntitlementsVerificationSuccess>(),
        ],
      );

      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'saves premium user status to session repository',
        build: buildBloc,
        setUp: () {
          when(mockUserDataRepo.verifyEntitlements())
              .thenAnswer((_) async => _entitlementsSuccess());
          when(mockSessionRepo.saveIsPremiumUser(any))
              .thenAnswer((_) async => true);
          when(mockPaywallAnalytics.logPaywallSubmit(
            subscriptionId: anyNamed('subscriptionId'),
            entitlementId: anyNamed('entitlementId'),
            active: anyNamed('active'),
            environment: anyNamed('environment'),
          )).thenAnswer((_) async {});
        },
        act: (bloc) =>
            bloc.add(const PremiumPurchasesEvent.entitlementsVerified()),
        verify: (_) {
          verify(mockSessionRepo.saveIsPremiumUser(true)).called(1);
        },
      );

      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'logs paywall submit analytics on premium verification',
        build: buildBloc,
        setUp: () {
          when(mockUserDataRepo.verifyEntitlements())
              .thenAnswer((_) async => _entitlementsSuccess());
          when(mockSessionRepo.saveIsPremiumUser(any))
              .thenAnswer((_) async => true);
          when(mockPaywallAnalytics.logPaywallSubmit(
            subscriptionId: anyNamed('subscriptionId'),
            entitlementId: anyNamed('entitlementId'),
            active: anyNamed('active'),
            environment: anyNamed('environment'),
          )).thenAnswer((_) async {});
        },
        act: (bloc) =>
            bloc.add(const PremiumPurchasesEvent.entitlementsVerified()),
        verify: (_) {
          verify(mockPaywallAnalytics.logPaywallSubmit(
            subscriptionId: 'prod_annual',
            entitlementId: 'premium',
            active: true,
            environment: 'production',
          )).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // EntitlementsVerified – failure (non-premium user)
    // -----------------------------------------------------------------------
    group('EntitlementsVerified – non-premium user', () {
      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'emits [inProgress, failure] when user is not premium',
        build: buildBloc,
        setUp: () {
          when(mockUserDataRepo.verifyEntitlements())
              .thenAnswer((_) async => _entitlementsNonPremium());
        },
        act: (bloc) =>
            bloc.add(const PremiumPurchasesEvent.entitlementsVerified()),
        expect: () => [
          isA<EntitlementsVerificationInProgress>(),
          isA<EntitlementsVerificationFailure>(),
        ],
      );

      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'emits [inProgress, failure] when userData is null',
        build: buildBloc,
        setUp: () {
          when(mockUserDataRepo.verifyEntitlements())
              .thenAnswer((_) async => _entitlementsNullUserData());
        },
        act: (bloc) =>
            bloc.add(const PremiumPurchasesEvent.entitlementsVerified()),
        expect: () => [
          isA<EntitlementsVerificationInProgress>(),
          isA<EntitlementsVerificationFailure>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // EntitlementsVerified – repository throws
    // -----------------------------------------------------------------------
    group('EntitlementsVerified – repository throws', () {
      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'emits [inProgress, failure] when repository throws exception',
        build: buildBloc,
        setUp: () {
          when(mockUserDataRepo.verifyEntitlements())
              .thenThrow(Exception('Network error'));
        },
        act: (bloc) =>
            bloc.add(const PremiumPurchasesEvent.entitlementsVerified()),
        expect: () => [
          isA<EntitlementsVerificationInProgress>(),
          isA<EntitlementsVerificationFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );

      blocTest<PremiumPurchasesBloc, PremiumPurchasesState>(
        'emits failure with NetworkConnectionException',
        build: buildBloc,
        setUp: () {
          when(mockUserDataRepo.verifyEntitlements()).thenThrow(
            NetworkConnectionException(
              isTimeout: false,
              message: 'No connection',
              statusCode: null,
              originalError: null,
            ),
          );
        },
        act: (bloc) =>
            bloc.add(const PremiumPurchasesEvent.entitlementsVerified()),
        expect: () => [
          isA<EntitlementsVerificationInProgress>(),
          isA<EntitlementsVerificationFailure>().having(
            (s) => s.exception,
            'exception',
            isA<NetworkConnectionException>(),
          ),
        ],
      );
    });
  });
}
