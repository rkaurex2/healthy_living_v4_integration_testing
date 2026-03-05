import 'package:healthy_living_shared/healthy_living_shared.dart'
    show SharedApiEndPoint, unauthenticatedApiRestClient;
import 'package:healthy_living_shared/src/domain/data_source/session_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/user_token_data_model.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: SessionRemoteDataSource)
class DefaultSessionRemoteDataSource implements SessionRemoteDataSource {
  final RestClient _restClient;
  static DefaultSessionRemoteDataSource? _instance;

  DefaultSessionRemoteDataSource._internal(this._restClient);

  @factoryMethod
  factory DefaultSessionRemoteDataSource({
    @unauthenticatedApiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultSessionRemoteDataSource._internal(restClient);
    return _instance!;
  }

  @override
  Future<UserTokenDataModel?> refreshToken({
    required String refreshToken,
    required String accessToken,
  }) async {
    try {
      final response = await _restClient.post<Map<String, dynamic>>(
        SharedApiEndPoint.refreshToken,
        body: {},
        headers: {
          'Refresh-Token': refreshToken,
          "Authorization": "Bearer $accessToken",
        },
      );
      final newAccessToken = response.responseHeaders["access-token"]?[0];
      final newRefreshToken = response.responseHeaders["refresh-token"]?[0];

      if (response.isSuccess) {
        return UserTokenDataModel(
          accessToken: newAccessToken ?? "",
          refreshToken: newRefreshToken ?? "",
        );
      } else {
        return null;
      }
    } on Exception {
      return null;
    }
  }
}
