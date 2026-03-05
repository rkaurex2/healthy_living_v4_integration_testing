import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_details_event.freezed.dart';

@freezed
sealed class SubscriptionDetailsEvent with _$SubscriptionDetailsEvent {
  const factory SubscriptionDetailsEvent.fetched() = SubscriptionDetailsFetched;
}
