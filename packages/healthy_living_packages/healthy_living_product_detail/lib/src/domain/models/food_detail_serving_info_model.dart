import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_serving_info_model.freezed.dart';

@freezed
sealed class FoodDetailServingInfoModel with _$FoodDetailServingInfoModel {
  const factory FoodDetailServingInfoModel({
    @JsonKey(name: 'serve_description') String? serveDescription,
    @JsonKey(name: 'serving_size') String? servingSize,
    @JsonKey(name: 'serving_uom') String? servingUom,
    @JsonKey(name: 'serving_size_2') String? servingSize2,
    @JsonKey(name: 'serving_uom_2') String? servingUom2,
  }) = _FoodDetailServingInfoModel;
}