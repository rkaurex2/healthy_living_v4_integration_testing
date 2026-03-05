import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/mapper/entitlements_verify_response_dto_mapper.dart';
import 'package:healthy_living_shared/src/domain/data_source/user_data_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/entitlements/entitlements_verify_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: UserDataRepository)
class DefaultUserDataRepository implements UserDataRepository {
  final UserDataLocalDataSource _localDataSource;
  final UserDataRemoteDataSource _remoteDataSource;
  static DefaultUserDataRepository? _instance;

  DefaultUserDataRepository._internal(
    this._localDataSource,
    this._remoteDataSource,
  );

  @factoryMethod
  factory DefaultUserDataRepository({
    required UserDataLocalDataSource localDataSource,
    required UserDataRemoteDataSource remoteDataSource,
  }) {
    _instance ??= DefaultUserDataRepository._internal(
      localDataSource,
      remoteDataSource,
    );
    return _instance!;
  }

  @override
  Future<void> saveUserData(String token) async {
    await _localDataSource.saveUserData(token);
  }

  @override
  Future<String?> getUserData() async {
    return await _localDataSource.getUserData();
  }

  @override
  Future<bool> remove(String key) {
    return _localDataSource.remove(key);
  }

  @override
  Future<NetworkResponse<GeneralResponseDTO>> logoutUser() {
    return _remoteDataSource.logoutUser();
  }

  @override
  Future<NetworkResponse<GeneralResponseDTO>> deleteUser() {
    return _remoteDataSource.deleteUser();
  }

  @override
  Future<NetworkResponse<EntitlementsVerifyResponseModel>>
  verifyEntitlements() async {
    final response = await _remoteDataSource.verifyEntitlements();
    return NetworkResponse(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
    );
  }
}
