import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'your_list_state.freezed.dart';

@freezed
sealed class YourListState with _$YourListState {
  const factory YourListState.yourListLoadSuccess({
    required List<UserListModel?> userListModelList,
  }) = YourListLoadSuccess;
  const factory YourListState.yourListLoadFailure({Exception? exception}) =
      YourListLoadFailure;
  const factory YourListState.yourListLoadInProgress() = YourListLoadInProgress;
}
