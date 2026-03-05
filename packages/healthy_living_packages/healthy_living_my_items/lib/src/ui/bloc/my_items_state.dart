import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'my_items_state.freezed.dart';

@freezed
sealed class MyItemsState with _$MyItemsState {
  const factory MyItemsState.initialState() = InitialState;
  const factory MyItemsState.validateCreateButton({
    required bool isCreateButtonEnable,
  }) = ValidateCreateButton;
  const factory MyItemsState.isLoadingCreateListButton({
    required bool isLoading,
  }) = IsLoadingCreateListButton;
  const factory MyItemsState.onCreateListSuccess({required String listId}) =
      OnCreateListSuccess;
  const factory MyItemsState.onFailureCreateList({
    Exception? createListException,
  }) = OnFailureCreateList;

  const factory MyItemsState.userListLoading({required bool isLoading}) =
      UserListLoading;
  const factory MyItemsState.onLoadUserList({
    required List<UserListModel> userListModelList,
  }) = OnLoadUserList;
  const factory MyItemsState.onFailureUserList({Exception? exception}) =
      OnFailureUserList;
}
