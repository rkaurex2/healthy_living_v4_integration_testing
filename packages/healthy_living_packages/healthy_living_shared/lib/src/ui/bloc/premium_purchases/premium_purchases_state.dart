import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/paywall/app_paywall_result.dart';
import 'package:healthy_living_shared/src/ui/models/paywall/paywall_source.dart';

part 'premium_purchases_state.freezed.dart';

@freezed
sealed class PremiumPurchasesState with _$PremiumPurchasesState {
  const factory PremiumPurchasesState.initial() = PremiumPurchasesInitial;
  const factory PremiumPurchasesState.paywallLoadInProgress() =
      PaywallLoadInProgress;
  const factory PremiumPurchasesState.paywallLoadSuccess({
    required AppPaywallResult paywallResult,
    required PaywallSource paywallSource,
  }) = PaywallLoadSuccess;
  const factory PremiumPurchasesState.paywallLoadFailure({
    required Exception exception,
  }) = PaywallLoadFailure;
  const factory PremiumPurchasesState.entitlementsVerificationInProgress() =
      EntitlementsVerificationInProgress;
  const factory PremiumPurchasesState.entitlementsVerificationSuccess() =
      EntitlementsVerificationSuccess;
  const factory PremiumPurchasesState.entitlementsVerificationFailure({
    required Exception exception,
  }) = EntitlementsVerificationFailure;
}
