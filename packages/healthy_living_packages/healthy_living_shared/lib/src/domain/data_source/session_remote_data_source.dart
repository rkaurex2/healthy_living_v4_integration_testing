import 'package:healthy_living_shared/src/domain/models/user_token_data_model.dart';

abstract interface class SessionRemoteDataSource {
  Future<UserTokenDataModel?> refreshToken({
    required String refreshToken,
    required String accessToken,
  });
}
