import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/mapper/recently_viewed/recently_viewed_product_scores_mapper.dart';
import 'package:healthy_living_shared/src/domain/models/history/history_item_product_model.dart';

extension RecentlyViewedListMapper on GetHistoryResponseDTO {
  GetHistoryResponseModel toDomain() {
    return GetHistoryResponseModel(
      id: id ?? -1,
      listName: listName ?? "",
      createdAt: createdAt ?? "",
      updatedAt: updatedAt ?? "",
      page: page ?? -1,
      perPage: 0,
      totalEntries: totalEntries ?? -1,
      items:
          items?.map((e) {
            return HistoryItemModel(
              id: e.id ?? -1,
              productId: e.productId ?? -1,
              listType: e.listType ?? "",
              product:
                  e.product == null
                      ? null
                      : HistoryItemProductModel(
                        productId: e.product?.productId ?? -1,
                        brandName: e.product?.brandName ?? "",
                        productType: e.product?.productType,
                        name: e.product?.name,
                        imageUrl: e.product?.imageUrl,
                        score: e.product?.score,
                        ewgVerified: e.product?.ewgVerified,
                        grade: e.product?.grade,
                        scores: e.product?.scores?.toDomain(),
                        ocrJobId: e.product?.ocrJobId,
                        ingredientPreferenceIndicator:
                            e.product?.ingredientPreferenceIndicator
                                ?.toDomain(),
                      ),
            );
          }).toList() ??
          [],
    );
  }
}
