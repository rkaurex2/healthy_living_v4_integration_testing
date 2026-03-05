import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_email_event.freezed.dart';

@freezed
sealed class CheckEmailEvent with _$CheckEmailEvent {

  const factory CheckEmailEvent.resetLinkButtonEvent({
    required String email,
  }) = ResetLinkButtonTapped;
}
