import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_response_model.dart';

part 'product_compare_food_response_data_model.freezed.dart';

@freezed
sealed class ProductCompareFoodResponseDataModel
    with _$ProductCompareFoodResponseDataModel {
  const factory ProductCompareFoodResponseDataModel({
    @JsonKey(name: 'product_type') String? productType,
    @Default([]) List<FoodDetailResponseModel> products,
  }) = _ProductCompareFoodResponseDataModel;
}
