import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cosmetic_response_data_model.dart';

part 'product_compare_cosmetic_response_model.freezed.dart';

@freezed
sealed class ProductCompareCosmeticResponseModel with _$ProductCompareCosmeticResponseModel {
  const factory ProductCompareCosmeticResponseModel({
    required ProductCompareCosmeticResponseDataModel data,
  }) = _ProductCompareCosmeticResponseModel;
}