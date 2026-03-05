import 'package:healthy_living_shared/src/data/mapper/revenuecat/auth_revenuecat_response_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/mapper/revenuecat/entitlements_response_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/mapper/user_data_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/models/entitlements/entitlements_verify_response_dto.dart';
import 'package:healthy_living_shared/src/domain/models/entitlements/entitlements_verify_response_model.dart';

extension EntitlementsVerifyResponseDtoMapper on EntitlementsVerifyResponseDto {
  EntitlementsVerifyResponseModel toDomain() {
    return EntitlementsVerifyResponseModel(
      userData: userData?.toDomain().copyWith(
        revenueCat: revenueCat?.toDomain(),
        entitlements:
            entitlements
                ?.map((entitlement) => entitlement.toDomain())
                .toList() ??
            [],
      ),
    );
  }
}
