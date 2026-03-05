import 'package:healthy_living_shared/src/domain/models/brand_aggs/brand_filter_item_request_model.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';

extension BrandUiItemMapper on BrandUiItem {
  BrandFilterItemRequestModel toDomain() {
    return BrandFilterItemRequestModel(
      id: id ?? -1,
      name: name,
      count: count ?? 0,
      isSelected: isSelected,
    );
  }
}
