import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/sub_category_filter_item_request_model.dart';

part 'category_filter_item_request_model.freezed.dart';
part 'category_filter_item_request_model.g.dart';

@freezed
sealed class CategoryFilterItemRequestModel
    with _$CategoryFilterItemRequestModel {
  const factory CategoryFilterItemRequestModel({
    required int id,
    required String name,
    required int count,
    @Default(<SubCategoryFilterItemRequestModel>[])
    List<SubCategoryFilterItemRequestModel> subCategories,
    @Default(false) bool isExpanded,
  }) = _CategoryFilterItemRequestModel;

  const CategoryFilterItemRequestModel._();

  bool get isFullySelected =>
      subCategories.isEmpty || subCategories.every((sub) => sub.isSelected);

  bool get isAnySelected =>
      subCategories.isEmpty || subCategories.any((sub) => sub.isSelected);

  List<SubCategoryFilterItemRequestModel> get selectedSubCategories =>
      subCategories.where((sub) => sub.isSelected).toList();

  List<String> get selectedSubCategoryNames =>
      subCategories
          .where((sub) => sub.isSelected)
          .map((sub) => sub.name)
          .toList();

  factory CategoryFilterItemRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryFilterItemRequestModelFromJson(json);
}
