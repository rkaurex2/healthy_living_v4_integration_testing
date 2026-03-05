import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'recent_activity_state.freezed.dart';

@freezed
sealed class RecentActivityState with _$RecentActivityState {
  const factory RecentActivityState.recentActivityLoadSuccess({
    required List<GeneralProductListItemUIModel> recentActivityProductList,
  }) = RecentActivityLoadSuccess;
  const factory RecentActivityState.recentActivityLoadFailure({Exception? exception}) =
      RecentActivityLoadFailure;
  const factory RecentActivityState.recentActivityLoadInProgress() =
      RecentActivityLoadInProgress;
}
