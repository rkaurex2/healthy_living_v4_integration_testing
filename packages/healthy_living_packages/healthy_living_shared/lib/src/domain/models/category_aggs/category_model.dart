import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/subcategory/sub_category_model.dart';

part 'category_model.freezed.dart';

@freezed
sealed class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
    required int count,
    List<SubCategoryModel>? subCategories,
  }) = _CategoryModel;
}
