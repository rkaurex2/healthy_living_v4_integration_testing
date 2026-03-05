import 'package:healthy_living_product_detail/src/data/models/product_labels_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_labels_model.dart';

extension ProductLabelDtoMapper on ProductLabelsDTO {
  ProductLabelsModel toDomain() {
    return ProductLabelsModel(
      warnings: warnings ?? "",
      ingredients: ingredients??"",
      directions: directions ?? "",
    );
  }
}
