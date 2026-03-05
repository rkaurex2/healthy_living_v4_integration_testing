import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_account_state.freezed.dart';

@freezed
class MyAccountState with _$MyAccountState {
  const factory MyAccountState.initial() = MyAccountInitial;

  const factory MyAccountState.loading() = MyAccountLoadInProgress;

  const factory MyAccountState.error({required Exception exception}) =
      MyAccountFailure;

  const factory MyAccountState.signOutSuccess() = MyAccountSignOutSuccess;

  const factory MyAccountState.deleteUserSuccess() = MyAccountDeleteUserSuccess;
  const factory MyAccountState.copyRevenueCatIdSuccess() = MyAccountCopyRevenueCatIdSuccess;
  const factory MyAccountState.copyRevenueCatIdFailure() = MyAccountCopyRevenueCatIdFailure;
  const factory MyAccountState.startedIngredientPreference() =
      StartedIngredientPreference;
  const factory MyAccountState.manageIngredientPreference() =
      ManageIngredientPreference;
  const factory MyAccountState.onTapIngredientPreference() =
      OnTapIngredientPreference;
}
