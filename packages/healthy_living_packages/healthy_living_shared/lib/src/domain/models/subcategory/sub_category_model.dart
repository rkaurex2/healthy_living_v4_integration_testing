import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_model.freezed.dart';

@freezed
sealed class SubCategoryModel with _$SubCategoryModel {
  const factory SubCategoryModel({
    required int id,
    required String name,
    required int count,
  }) = _SubCategoryModel;
}
