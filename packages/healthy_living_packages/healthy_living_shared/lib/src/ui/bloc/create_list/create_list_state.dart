import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_list_state.freezed.dart';

@freezed
sealed class CreateListState with _$CreateListState {
  const factory CreateListState.initial() = CreateListInitialState;

  const factory CreateListState.loading() = CreateListLoading;

  const factory CreateListState.validateCreateButton({
    required bool isCreateButtonEnable,
  }) = ValidateCreateButton;

  const factory CreateListState.isLoadingCreateListButton({
    required bool isLoading,
  }) = IsLoadingCreateListButton;

  const factory CreateListState.onExistCreateListSheet({
    required bool isSuccess,
  }) = OnExistCreateListSheetState;
  const factory CreateListState.onSuccessCreateList({
    required String listId,
    required String listName,
  }) = OnSuccessCreateList;
  const factory CreateListState.onFailureCreateList({
    Exception? createListException,
  }) = OnFailureCreateList;

  const factory CreateListState.addToListSuccess({required String listId}) =
      AddToListSuccess;
  const factory CreateListState.addToListFailure({Exception? exception}) =
      AddToListFailure;
}
