import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_request_model.dart';

part 'product_compare_event.freezed.dart';

@freezed
sealed class ProductCompareEvent with _$ProductCompareEvent {
  const factory ProductCompareEvent.requested({
    required ProductCompareRequestModel request,
  }) = ProductsCompareRequested;
}
