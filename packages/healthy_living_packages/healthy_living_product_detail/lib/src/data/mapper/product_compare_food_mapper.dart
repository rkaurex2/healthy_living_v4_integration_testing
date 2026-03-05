import 'package:healthy_living_product_detail/src/data/mapper/food_detail_mapper.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_food_response_data_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_food_response_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_food_response_data_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_food_response_model.dart';

extension ProductCompareFoodResponseDTOMapper on ProductCompareFoodResponseDTO {
  ProductCompareFoodResponseModel toDomain() {
    return ProductCompareFoodResponseModel(data: data.toDomain());
  }
}

extension ProductCompareFoodResponseDataDTOMapper
    on ProductCompareFoodResponseDataDTO {
  ProductCompareFoodResponseDataModel toDomain() {
    return ProductCompareFoodResponseDataModel(
      productType: productType,
      products: products.map((e) => e.toDomain()).toList(),
    );
  }
}
