import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_response_model.dart';

part 'product_compare_cosmetic_response_data_model.freezed.dart';

@freezed
sealed class ProductCompareCosmeticResponseDataModel
    with _$ProductCompareCosmeticResponseDataModel {
  const factory ProductCompareCosmeticResponseDataModel({
    @JsonKey(name: 'product_type') String? productType,
    @Default([]) List<CosmeticDetailResponseModel> products,
  }) = _ProductCompareCosmeticResponseDataModel;
}
