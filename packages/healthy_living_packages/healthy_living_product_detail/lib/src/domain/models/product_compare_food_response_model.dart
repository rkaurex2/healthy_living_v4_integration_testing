import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_food_response_data_model.dart';

part 'product_compare_food_response_model.freezed.dart';

@freezed
sealed class ProductCompareFoodResponseModel with _$ProductCompareFoodResponseModel {
  const factory ProductCompareFoodResponseModel({
    required ProductCompareFoodResponseDataModel data,
  }) = _ProductCompareFoodResponseModel;
}