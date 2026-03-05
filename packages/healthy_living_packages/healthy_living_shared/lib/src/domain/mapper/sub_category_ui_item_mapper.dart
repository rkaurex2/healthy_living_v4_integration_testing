import 'package:healthy_living_shared/src/domain/models/category_aggs/sub_category_filter_item_request_model.dart';
import 'package:healthy_living_shared/src/ui/models/filters/sub_category_ui_item.dart';

extension SubCategoryUiItemMapper on SubCategoryUiItem {
  SubCategoryFilterItemRequestModel toDomain() {
    return SubCategoryFilterItemRequestModel(
      id: id,
      name: name,
      count: count,
      isSelected: isSelected,
    );
  }
}