import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_filter_item_request_model.freezed.dart';
part 'brand_filter_item_request_model.g.dart';

@freezed
sealed class BrandFilterItemRequestModel
    with _$BrandFilterItemRequestModel {
  const factory BrandFilterItemRequestModel({
    required int id,
    required String name,
    required int count,
    required bool isSelected
  }) = _BrandFilterItemRequestModel;

  factory BrandFilterItemRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BrandFilterItemRequestModelFromJson(json);
}
