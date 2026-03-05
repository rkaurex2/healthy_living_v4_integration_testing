import 'package:freezed_annotation/freezed_annotation.dart';

part 'just_verified_event.freezed.dart';

@freezed
sealed class JustVerifiedEvent with _$JustVerifiedEvent {
  const factory JustVerifiedEvent.justVerifiedProductsFetched() =
      JustVerifiedProductsFetched;
}
