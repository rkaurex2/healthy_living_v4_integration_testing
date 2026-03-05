import 'package:healthy_living_product_detail/src/data/mapper/cosmetic_detail_mapper.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cosmetic_response_data_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cosmetic_response_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cosmetic_response_data_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cosmetic_response_model.dart';

extension ProductCompareCosmeticResponseDTOMapper on ProductCompareCosmeticResponseDTO {
  ProductCompareCosmeticResponseModel toDomain() {
    return ProductCompareCosmeticResponseModel(data: data.toDomain());
  }
}

extension ProductCompareCosmeticResponseDataDTOMapper
    on ProductCompareCosmeticResponseDataDTO {
  ProductCompareCosmeticResponseDataModel toDomain() {
    return ProductCompareCosmeticResponseDataModel(
      productType: productType,
      products: products.map((e) => e.toDomain()).toList(),
    );
  }
}
