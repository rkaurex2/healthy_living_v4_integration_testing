import 'package:healthy_living_home/src/data/models/recent_activity/recent_activity_product_item_response_dto.dart';
import 'package:healthy_living_home/src/data/models/recent_activity/recent_activity_response_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

extension RecentActivityListResponseMapper on RecentActivityResponseDTO {
  List<GeneralProductListItemUIModel> toDomain() {
    return items?.map((e) => e.toDomain()).toList() ?? [];
  }
}

extension RecentActivityProductItemResponseMapper
    on RecentActivityProductItemResponseDTO {
  GeneralProductListItemUIModel toDomain() {
    return GeneralProductListItemUIModel(
      productId: productId ?? -1,
      imageUrl: product?.imageUrl ?? product?.mediumImageUrl ?? "",
      productName: product?.name ?? "",
      isEWGVerified: product?.ewgVerified ?? false,
      brandName: product?.brandName ?? "",
      productType: product?.productType ?? "",
      score: product?.score ?? "",
      categoryType:
          SearchType.fromName(product?.productType ?? "")?.value ?? "",
    );
  }
}
