import 'package:healthy_living_product_detail/src/data/models/sunscreen_details_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/sunscreen_details_model.dart';

extension SunscreenDetailsMapper on SunscreenDetailsDTO {
  SunscreenDetailsModel toDomain() {
    return SunscreenDetailsModel(
      uvbProtection: uvbProtection,
      uvaProtection: uvaProtection,
      uvabBalance: uvabBalance,
      sunscreenStabilityName: sunscreenStabilityName,
      healthHazardName: healthHazardName,
      otherConcerns: otherConcerns,
    );
  }
}
