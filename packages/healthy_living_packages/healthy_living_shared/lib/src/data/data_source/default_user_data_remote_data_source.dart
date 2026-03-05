import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/models/entitlements/entitlements_verify_response_dto.dart';
import 'package:healthy_living_shared/src/domain/data_source/user_data_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: UserDataRemoteDataSource)
class DefaultUserDataRemoteDataSource implements UserDataRemoteDataSource {
  final RestClient _restClient;

  static DefaultUserDataRemoteDataSource? _instance;

  DefaultUserDataRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultUserDataRemoteDataSource({
    @apiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultUserDataRemoteDataSource._internal(restClient);
    return _instance!;
  }

  @override
  Future<NetworkResponse<GeneralResponseDTO>> logoutUser() async {
    final response = await _restClient.delete<Map<String, dynamic>>(
      SharedApiEndPoint.userSignOut,
      body: null,
    );

    return NetworkResponse<GeneralResponseDTO>(
      data:
          response.data != null
              ? GeneralResponseDTO.fromJson(response.data!)
              : null,
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<GeneralResponseDTO>> deleteUser() async {
    final response = await _restClient.delete<Map<String, dynamic>>(
      SharedApiEndPoint.userDelete,
      body: null,
    );
    return NetworkResponse<GeneralResponseDTO>(
      data:
          response.data != null
              ? GeneralResponseDTO.fromJson(response.data!)
              : null,
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<EntitlementsVerifyResponseDto?>>
  verifyEntitlements() async {
    final response = await _restClient.get<Map<String, dynamic>>(
      SharedApiEndPoint.entitlementsVerify,
      queryParams: {},
    );
    return NetworkResponse<EntitlementsVerifyResponseDto>(
      data:
          response.data != null
              ? EntitlementsVerifyResponseDto.fromJson(response.data!)
              : null,
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
