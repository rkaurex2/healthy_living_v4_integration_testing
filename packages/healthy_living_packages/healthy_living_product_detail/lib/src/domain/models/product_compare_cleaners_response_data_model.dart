import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_response_model.dart';

part 'product_compare_cleaners_response_data_model.freezed.dart';

@freezed
sealed class ProductCompareCleanersResponseDataModel
    with _$ProductCompareCleanersResponseDataModel {
  const factory ProductCompareCleanersResponseDataModel({
    @JsonKey(name: 'product_type') String? productType,
    @Default([]) List<CleanerDetailResponseModel> products,
  }) = _ProductCompareCleanersResponseDataModel;
}
