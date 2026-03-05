import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

part 'subscription_details_state.freezed.dart';

@freezed
sealed class SubscriptionDetailsState with _$SubscriptionDetailsState {
  const factory SubscriptionDetailsState.initial() = SubscriptionDetailsInitial;

  const factory SubscriptionDetailsState.loadInProgress() =
      SubscriptionDetailsLoadInProgress;

  const factory SubscriptionDetailsState.loadSuccess({
    required EntitlementInfo? activeEntitlementInfo,
    required Package? storeProduct,
  }) = SubscriptionDetailsLoadSuccess;

  const factory SubscriptionDetailsState.loadFailure({
    required Exception exception,
  }) = SubscriptionDetailsLoadFailure;
}
