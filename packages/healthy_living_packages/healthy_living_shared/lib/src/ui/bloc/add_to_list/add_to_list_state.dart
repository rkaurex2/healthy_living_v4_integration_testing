import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'add_to_list_state.freezed.dart';

@freezed
sealed class AddToListState with _$AddToListState {
  const factory AddToListState.initial() = AddToListInitialState;

  const factory AddToListState.loading() = DetailLoading;

  const factory AddToListState.loadingDoneButton() = AddToListDoneButtonLoading;

  const factory AddToListState.loadSavedListFailure(Exception? exception) =
      LoadSavedListFailure;

  const factory AddToListState.failure(Exception? exception) =
      AddToListFailureState;

  const factory AddToListState.addToListSuccess(
    UserListModel? userListModel,
    bool isSingleAdded,
  ) = AddToListSuccess;

  const factory AddToListState.getUserListSuccess({
    List<UserListModel?>? userListModel,
  }) = GetUserListSuccess;

  const factory AddToListState.updateSelectedIndex({required int index}) =
      UpdateSelectedIndex;
}
