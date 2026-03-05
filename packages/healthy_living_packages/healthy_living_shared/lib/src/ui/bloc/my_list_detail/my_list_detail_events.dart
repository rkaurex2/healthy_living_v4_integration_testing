import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
part 'my_list_detail_events.freezed.dart';

@freezed
sealed class MyListDetailEvent with _$MyListDetailEvent {
  const factory MyListDetailEvent.initialized() = MyListDetailInitialized;

  const factory MyListDetailEvent.fetchProductListFromListId({
    required String listId,
    required int pageKey,
    required int pageSize,
    required bool isSelectionActivate,
    required bool isSelectAllEnable,
    required bool isOpenFromSharedLink,
  }) = FetchProductListFromListId;

  const factory MyListDetailEvent.deleteList({required String listId}) =
      DeleteList;

  const factory MyListDetailEvent.renameList({
    required String listId,
    required String listName,
  }) = RenameList;
  const factory MyListDetailEvent.onChangeListName({required String listName}) =
      OnChangeListName;

  const factory MyListDetailEvent.productSelectionActivate({
    required bool isSelectionActivate,
  }) = ProductSelectionActivate;

  const factory MyListDetailEvent.productSelect({
    required ProductSelectionType productSelectionType,
    required int index,
  }) = ProductSelect;

  const factory MyListDetailEvent.productListAllSelectUnSelect({
    required bool isSelectAll,
  }) = ProductListAllSelectUnSelect;

  const factory MyListDetailEvent.productListSelectionClear() =
      ProductListSelectionClear;

  const factory MyListDetailEvent.productDeleteFromList({
    required String listId,
    required String listName,
    required List<UserListItemsAttributesModel> userList,
  }) = ProductDeleteFromList;

  const factory MyListDetailEvent.addToListFromBrowse({
    required List<UserListItemsAttributesModel> userListItemsAttributesModel,
    required String listId,
    required String listName,
  }) = AddToListFromBrowse;

  const factory MyListDetailEvent.shareList({
    required String listId,
    required String listName,
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) = ShareList;
}
