import 'package:healthy_living_shared/healthy_living_shared.dart';

extension RecentlyViewedProductRequestModelMapper
    on RecentlyViewedProductRequestModel {
  RecentlyViewedProductRequestDTO toDTO() {
    return RecentlyViewedProductRequestDTO(
      productId: productId,
      productType: productType,
    );
  }
}
