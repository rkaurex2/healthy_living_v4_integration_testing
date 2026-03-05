import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_activity_event.freezed.dart';

@freezed
sealed class RecentActivityEvent with _$RecentActivityEvent {
  const factory RecentActivityEvent.recentActivityProductsFetched() =
      RecentActivityProductsFetched;
}
