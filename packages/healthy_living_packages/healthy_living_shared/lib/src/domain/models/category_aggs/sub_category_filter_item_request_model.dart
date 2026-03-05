import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_filter_item_request_model.freezed.dart';
part 'sub_category_filter_item_request_model.g.dart';

@freezed
sealed class SubCategoryFilterItemRequestModel
    with _$SubCategoryFilterItemRequestModel {
  const factory SubCategoryFilterItemRequestModel({
    required int id,
    required String name,
    required int count,
    @Default(false) bool isSelected,
  }) = _SubCategoryFilterItemRequestModel;

  factory SubCategoryFilterItemRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFilterItemRequestModelFromJson(json);
}
