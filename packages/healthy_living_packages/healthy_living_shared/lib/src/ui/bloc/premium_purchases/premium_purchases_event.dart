import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/paywall/paywall_source.dart';

part 'premium_purchases_event.freezed.dart';

@freezed
sealed class PremiumPurchasesEvent with _$PremiumPurchasesEvent {
  const factory PremiumPurchasesEvent.paywallPresented({
    required PaywallSource paywallSource,
  }) = PaywallPresented;
  const factory PremiumPurchasesEvent.entitlementsVerified() =
      EntitlementsVerified;
}
