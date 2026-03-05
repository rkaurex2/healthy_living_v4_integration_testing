import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_account_event.freezed.dart';

@freezed
class MyAccountEvent with _$MyAccountEvent {
  const factory MyAccountEvent.signOut() = SignOut;
  const factory MyAccountEvent.accountInitialized() = AccountInitialized;
  const factory MyAccountEvent.accountDeleteUser() = AccountDeleteUser;
  const factory MyAccountEvent.copyRevenueCatId() = AccountCopyRevenueCatId;
  const factory MyAccountEvent.ingredientPreferenceTapped() =
      IngredientPreferenceTapped;
}
