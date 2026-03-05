import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_items_event.freezed.dart';

@freezed
sealed class MyItemsEvent with _$MyItemsEvent {
  const factory MyItemsEvent.initialized() = MyItemsInitialized;
  const factory MyItemsEvent.onNameListTextChanged({required String listName}) =
      OnNameListTextChanged;
  const factory MyItemsEvent.onCreateListButtonPressed({
    required String listName,
  }) = OnCreateListButtonPressed;
  const factory MyItemsEvent.getUserList() = GetUserList;
}
