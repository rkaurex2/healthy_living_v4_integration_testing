import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'my_list_detail_state.freezed.dart';

@freezed
sealed class MyListDetailState with _$MyListDetailState {
  const factory MyListDetailState.initial() = MyListDetailInitialState;

  const factory MyListDetailState.productListLoading({
    required bool isLoading,
  }) = ProductListLoading;

  const factory MyListDetailState.productListLoaded({
    required UserListModel userListModel,
    required int page,
    required bool hasMore,
  }) = ProductListLoaded;

  const factory MyListDetailState.productListFailure({
    required Exception exception,
  }) = ProductListFailure;

  const factory MyListDetailState.validateEditListButton({
    required bool isEditButtonEnable,
  }) = ValidateEditListButton;

  const factory MyListDetailState.isLoadingEditListButton({
    required bool isLoading,
  }) = IsLoadingEditListButton;

  const factory MyListDetailState.onEditListSuccess({required String listId}) =
      OnEditListSuccess;

  const factory MyListDetailState.onEditListFailure({Exception? exception}) =
      OnEditListFailure;

  const factory MyListDetailState.isLoadingDeleteListButton({
    required bool isLoading,
  }) = IsLoadingDeleteListButton;

  const factory MyListDetailState.onDeleteListSuccess() = OnDeleteListSuccess;

  const factory MyListDetailState.productSelectionActivated({
    required bool isSelectionActivate,
  }) = ProductSelectionActivated;

  const factory MyListDetailState.onDeleteListFailure({Exception? exception}) =
      OnDeleteListFailure;

  const factory MyListDetailState.productSelected({
    required ProductSelectionType productSelectionType,
    required int index,
  }) = ProductSelected;

  const factory MyListDetailState.productListAllSelectUnSelected({
    required bool isSelectAll,
  }) = ProductListAllSelectUnSelected;

  const factory MyListDetailState.productListSelectionCleared() =
      ProductListSelectionCleared;

  const factory MyListDetailState.productDeleteSuccess() = ProductDeleteSuccess;

  const factory MyListDetailState.productDeleteFailure({Exception? exception}) =
      ProductDeleteFailure;

  const factory MyListDetailState.productDeleteInProgress() =
      ProductDeleteInProgress;

  const factory MyListDetailState.addToListFailure(Exception? exception) =
      AddToListFailure;

  const factory MyListDetailState.addToListSuccess(
    UserListModel? userListModel,
    bool isSingleAdded,
  ) = AddToListSuccess;

  const factory MyListDetailState.addToListLoading() = AddToListLoading;
}
