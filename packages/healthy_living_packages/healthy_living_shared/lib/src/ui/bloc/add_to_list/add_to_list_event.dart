import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
part 'add_to_list_event.freezed.dart';

@freezed
sealed class AddToListEvent with _$AddToListEvent {
  const factory AddToListEvent.initialized() = AddToListInitialized;

  const factory AddToListEvent.getSavedList() = GetSavedList;
  const factory AddToListEvent.onDoneButtonPressed({
    required List<UserListItemsAttributesModel> userListItemsAttributesModel,
    required String listId,
    required String listName,
  }) = OnDoneButtonPressed;
  const factory AddToListEvent.onChangeListItemIndex({required int index}) =
      OnChangeListItemIndex;
}
