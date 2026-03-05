import 'package:healthy_living_auth/src/data/models/sign_up_response_dto.dart';
import 'package:healthy_living_auth/src/domain/models/sign_up_response_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

extension SignUpResponseDtoMapper on SignUpResponseDTO {
  SignUpResponseModel toDomain() {
    return SignUpResponseModel(
      userData: userData?.toDomain().copyWith(
        revenueCat:
        revenueCat?.toDomain() ??
            AuthRevenueCatResponseModel(appUserId: ""),
        entitlements:
        entitlements
            ?.map((entitlement) => entitlement.toDomain())
            .toList() ??
            [],
      ),
    );
  }
}
