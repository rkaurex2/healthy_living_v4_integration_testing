import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
part 'create_list_event.freezed.dart';

@freezed
sealed class CreateListEvent with _$CreateListEvent {
  const factory CreateListEvent.initialized() = CreateListInitialized;

  const factory CreateListEvent.onNameListTextChanged({
    required String listName,
  }) = OnNameListTextChanged;
  const factory CreateListEvent.onCreateListButtonPressed({
    required String listName,
  }) = OnCreateListButtonPressed;

  const factory CreateListEvent.onExistCreateListSheet({
    required bool isSuccess,
  }) = OnExistCreateListSheet;

  const factory CreateListEvent.productAddToList({
    required List<UserListItemsAttributesModel> userListItemsAttributesModel,
    required String listId,
    required String listName,
  }) = ProductAddToList;
}
