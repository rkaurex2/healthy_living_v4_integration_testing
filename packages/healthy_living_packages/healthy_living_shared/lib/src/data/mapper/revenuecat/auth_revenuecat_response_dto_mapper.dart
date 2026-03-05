import 'package:healthy_living_shared/healthy_living_shared.dart';

extension AuthRevenueCatResponseDtoMapper on AuthRevenueCatResponseDto {
  AuthRevenueCatResponseModel toDomain() {
    return AuthRevenueCatResponseModel(appUserId: appUserId ?? '');
  }
}
