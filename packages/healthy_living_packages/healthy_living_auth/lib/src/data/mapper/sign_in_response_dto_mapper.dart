import 'package:healthy_living_auth/src/data/models/sign_in_response_dto.dart';
import 'package:healthy_living_auth/src/domain/models/sign_in_response_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

extension SignInResponseDtoMapper on SignInResponseDTO {
  SignInResponseModel toSignInDomain() {
    return SignInResponseModel(
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
