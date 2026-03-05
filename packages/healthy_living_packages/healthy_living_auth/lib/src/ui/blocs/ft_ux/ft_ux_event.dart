import 'package:freezed_annotation/freezed_annotation.dart';

part 'ft_ux_event.freezed.dart';

@freezed
sealed class FtUxEvent with _$FtUxEvent {
  const factory FtUxEvent.setFtUxCompleted(bool value) = SetFtUxCompleted;
  const factory FtUxEvent.continueAsGuestTapped() = ContinueAsGuestTapped;
}
