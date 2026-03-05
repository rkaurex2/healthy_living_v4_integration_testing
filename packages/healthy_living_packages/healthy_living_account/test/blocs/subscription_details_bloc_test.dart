import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_event.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_state.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SubscriptionDetailsBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is SubscriptionDetailsInitial', () {
      final bloc = SubscriptionDetailsBloc();
      expect(bloc.state, isA<SubscriptionDetailsInitial>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // Getters - default values (no entitlement / product loaded)
    // -----------------------------------------------------------------------
    group('getters default values', () {
      test('activeEntitlementInfo is null by default', () {
        final bloc = SubscriptionDetailsBloc();
        expect(bloc.activeEntitlementInfo, isNull);
        bloc.close();
      });

      test('storeProduct is null by default', () {
        final bloc = SubscriptionDetailsBloc();
        expect(bloc.storeProduct, isNull);
        bloc.close();
      });

      test('hasValidPriceString is false when storeProduct is null', () {
        final bloc = SubscriptionDetailsBloc();
        expect(bloc.hasValidPriceString, isFalse);
        bloc.close();
      });

      test('hasValidPurchaseDate is false when entitlementInfo is null', () {
        final bloc = SubscriptionDetailsBloc();
        expect(bloc.hasValidPurchaseDate, isFalse);
        bloc.close();
      });

      test('hasValidExpirationDate is false when entitlementInfo is null', () {
        final bloc = SubscriptionDetailsBloc();
        expect(bloc.hasValidExpirationDate, isFalse);
        bloc.close();
      });

      test('hasActiveSubscription is false when no data is loaded', () {
        final bloc = SubscriptionDetailsBloc();
        expect(bloc.hasActiveSubscription, isFalse);
        bloc.close();
      });
    });

    // -----------------------------------------------------------------------
    // SubscriptionDetailsFetched - exception path
    // -----------------------------------------------------------------------
    // RevenueCat (Purchases) relies on native SDK configuration. In a pure
    // Dart test environment, calling Purchases.getCustomerInfo() will throw
    // because the SDK is not initialised. We use this to exercise the
    // exception handling path.
    // -----------------------------------------------------------------------
    group('SubscriptionDetailsFetched', () {
      blocTest<SubscriptionDetailsBloc, SubscriptionDetailsState>(
        'emits [LoadInProgress, LoadFailure] when RevenueCat is not configured',
        build: () => SubscriptionDetailsBloc(),
        act: (bloc) => bloc.add(const SubscriptionDetailsFetched()),
        expect: () => [
          isA<SubscriptionDetailsLoadInProgress>(),
          isA<SubscriptionDetailsLoadFailure>(),
        ],
      );

      blocTest<SubscriptionDetailsBloc, SubscriptionDetailsState>(
        'LoadFailure state contains the thrown exception',
        build: () => SubscriptionDetailsBloc(),
        act: (bloc) => bloc.add(const SubscriptionDetailsFetched()),
        verify: (bloc) {
          final lastState = bloc.state;
          expect(lastState, isA<SubscriptionDetailsLoadFailure>());
          final failureState = lastState as SubscriptionDetailsLoadFailure;
          expect(failureState.exception, isNotNull);
        },
      );

      blocTest<SubscriptionDetailsBloc, SubscriptionDetailsState>(
        'getters remain false after a failed fetch',
        build: () => SubscriptionDetailsBloc(),
        act: (bloc) => bloc.add(const SubscriptionDetailsFetched()),
        verify: (bloc) {
          expect(bloc.hasValidPriceString, isFalse);
          expect(bloc.hasValidPurchaseDate, isFalse);
          expect(bloc.hasValidExpirationDate, isFalse);
          expect(bloc.hasActiveSubscription, isFalse);
        },
      );
    });
  });
}
