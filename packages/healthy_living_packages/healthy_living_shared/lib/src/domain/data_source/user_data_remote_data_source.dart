import 'package:healthy_living_shared/src/data/models/entitlements/entitlements_verify_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/general_response_dto.dart';
import 'package:network/network.dart';

abstract interface class UserDataRemoteDataSource {
  Future<NetworkResponse<GeneralResponseDTO>> logoutUser();
  Future<NetworkResponse<GeneralResponseDTO>> deleteUser();
  Future<NetworkResponse<EntitlementsVerifyResponseDto?>> verifyEntitlements();
}
