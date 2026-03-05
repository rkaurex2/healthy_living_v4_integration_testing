import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/models/general_response_dto.dart';
import 'package:healthy_living_shared/src/domain/models/entitlements/entitlements_verify_response_model.dart';
import 'package:network/network.dart';

abstract interface class UserDataRepository {
  Future<void> saveUserData(String userDataModel);
  Future<String?> getUserData();
  Future<bool> remove(String key);
  Future<NetworkResponse<GeneralResponseDTO>> logoutUser();
  Future<NetworkResponse<GeneralResponseDTO>> deleteUser();
  Future<NetworkResponse<EntitlementsVerifyResponseModel>> verifyEntitlements();
}