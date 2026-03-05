import 'package:freezed_annotation/freezed_annotation.dart';

part 'your_list_event.freezed.dart';

@freezed
sealed class YourListEvent with _$YourListEvent {
  const factory YourListEvent.yourListFetched() = YourListFetched;
}
