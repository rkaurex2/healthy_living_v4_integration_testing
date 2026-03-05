import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.homeInitialized() = HomeInitialized;
  const factory HomeEvent.onNameListTextChanged({required String listName}) =
      OnNameListTextChanged;
  const factory HomeEvent.createYourList({required String name}) =
      CreateYourList;
}
