import 'package:healthy_living_product_detail/src/data/mapper/cleaner_detail_mapper.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cleaners_response_data_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cleaners_response_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cleaners_response_data_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cleaners_response_model.dart';

extension ProductCompareCleanersResponseDTOMapper on ProductCompareCleanersResponseDTO {
  ProductCompareCleanersResponseModel toDomain() {
    return ProductCompareCleanersResponseModel(data: data.toDomain());
  }
}

extension ProductCompareCleanersResponseDataDTOMapper
    on ProductCompareCleanersResponseDataDTO {
  ProductCompareCleanersResponseDataModel toDomain() {
    return ProductCompareCleanersResponseDataModel(
      productType: productType,
      products: products.map((e) => e.toDomain()).toList(),
    );
  }
}
