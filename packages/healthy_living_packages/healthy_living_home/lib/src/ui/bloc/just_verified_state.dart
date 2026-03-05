import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'just_verified_state.freezed.dart';

@freezed
sealed class JustVerifiedState with _$JustVerifiedState {
  const factory JustVerifiedState.justVerifiedListLoadSuccess({
    required List<GeneralProductListItemUIModel> justVerifiedList,
  }) = JustVerifiedListLoadSuccess;
  const factory JustVerifiedState.justVerifiedListLoadFailure({Exception? exception}) =
      JustVerifiedListLoadFailure;
  const factory JustVerifiedState.justVerifiedListLoadInProgress() =
      JustVerifiedListLoadInProgress;
}
