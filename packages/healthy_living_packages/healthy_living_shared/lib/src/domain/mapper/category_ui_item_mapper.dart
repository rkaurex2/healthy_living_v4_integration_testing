import 'package:healthy_living_shared/src/domain/mapper/sub_category_filter_item_request_model_mapper.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_filter_item_request_model.dart';
import 'package:healthy_living_shared/src/ui/models/filters/category_ui_item.dart';

extension CategoryUiItemMapper on CategoryUiItem {
  CategoryFilterItemRequestModel toDomain() {
    return CategoryFilterItemRequestModel(
      id: id,
      name: name,
      count: count,
      subCategories:
          subCategories.map((subCategory) => subCategory.toDomain()).toList(),
      isExpanded: isExpanded,
    );
  }
}
