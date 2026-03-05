import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_request_model.freezed.dart';

@freezed
sealed class FoodDetailRequestModel with _$FoodDetailRequestModel {
  const factory FoodDetailRequestModel({required String upc}) =
      _FoodDetailRequestModel;
}
