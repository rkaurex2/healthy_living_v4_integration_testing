import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cleaners_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cosmetic_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_food_response_model.dart';

part 'product_compare_state.freezed.dart';

@freezed
class ProductCompareState with _$ProductCompareState {
  const factory ProductCompareState.initial() = ProductCompareInitial;

  const factory ProductCompareState.loading() = ProductCompareLoadInProgress;

  const factory ProductCompareState.success({
    ProductCompareCosmeticResponseModel? cosmeticResult,
    ProductCompareCleanersResponseModel? cleanersResult,
    ProductCompareFoodResponseModel? foodResult,
  }) = ProductCompareLoadSuccess;

  const factory ProductCompareState.failure(Exception? exception) =
      ProductCompareLoadFailure;
}
