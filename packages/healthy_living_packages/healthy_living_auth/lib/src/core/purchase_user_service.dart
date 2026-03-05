import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@LazySingleton()
class PurchaseUserService {
  Future<void> syncUserDetails(UserDataModel userData) async {
    await Future.wait([
      _setDisplayName(userData),
      _setEmail(userData),
    ]);
  }

  Future<void> _setDisplayName(UserDataModel userData) async {
    final firstName = userData.firstName;
    final lastName = userData.lastName;

    String? displayName;

    if (firstName.isValidValue && lastName.isValidValue) {
      displayName = '$firstName $lastName';
    } else if (firstName.isValidValue) {
      displayName = firstName;
    }

    if (displayName != null) {
      await Purchases.setDisplayName(displayName);
    }
  }

  Future<void> _setEmail(UserDataModel userData) async {
    if (userData.email.isValidValue) {
      await Purchases.setEmail(userData.email);
    }
  }
}