import 'package:healthy_living_shared/healthy_living_shared.dart';

extension EntitlementsResponseDtoMapper on EntitlementsResponseDto {
  EntitlementsResponseModel toDomain() {
    return EntitlementsResponseModel(
      entitlementId: entitlementId ?? "",
      active: active ?? false,
      productId: productId ?? "",
      environment: environment ?? "",
    );
  }
}
