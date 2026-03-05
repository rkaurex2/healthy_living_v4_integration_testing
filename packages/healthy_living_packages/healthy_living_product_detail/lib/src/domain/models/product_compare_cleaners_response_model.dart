import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cleaners_response_data_model.dart';

part 'product_compare_cleaners_response_model.freezed.dart';

@freezed
sealed class ProductCompareCleanersResponseModel with _$ProductCompareCleanersResponseModel {
  const factory ProductCompareCleanersResponseModel({
    required ProductCompareCleanersResponseDataModel data,
  }) = _ProductCompareCleanersResponseModel;
}