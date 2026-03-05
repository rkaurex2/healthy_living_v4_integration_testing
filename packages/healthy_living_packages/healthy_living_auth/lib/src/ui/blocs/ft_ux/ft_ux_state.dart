import 'package:freezed_annotation/freezed_annotation.dart';

part 'ft_ux_state.freezed.dart';

@freezed
sealed class FtUxState with _$FtUxState {
  const factory FtUxState.ftUxComplete({required bool isFtUxComplete}) =
      FtUxComplete;
  const factory FtUxState.continueAsGuestSuccess() = ContinueAsGuestSuccess;
}
