import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.homeStarted({required bool shouldRefreshPremiumFlag, required bool isSubscriptionExpired}) = HomeStarted;
  const factory HomeState.createListSuccess({required final String listId}) =
      CreateListSuccess;
  const factory HomeState.createListInProgress() = CreateListInProgress;
  const factory HomeState.createListInFailure({Exception? exception}) =
      CreateListInFailure;
  const factory HomeState.validateCreateButton({
    required bool isCreateButtonEnable,
  }) = ValidateCreateButton;
}
