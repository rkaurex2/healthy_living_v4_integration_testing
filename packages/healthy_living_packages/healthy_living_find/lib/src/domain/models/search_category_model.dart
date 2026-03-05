import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_category_model.freezed.dart';

@freezed
sealed class SearchCategoryModel with _$SearchCategoryModel {
  const factory SearchCategoryModel({
    int? id,
    String? name,
    int? foodEssentialsAisleId,
    int? foodEssentialsShelfId,
  }) = _SearchCategoryModel;
}


