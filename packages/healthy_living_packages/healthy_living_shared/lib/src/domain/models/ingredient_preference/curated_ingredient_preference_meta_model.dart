import 'package:freezed_annotation/freezed_annotation.dart';

part 'curated_ingredient_preference_meta_model.freezed.dart';

@freezed
sealed class CuratedIngredientPreferenceMetaModel
    with _$CuratedIngredientPreferenceMetaModel {
  const factory CuratedIngredientPreferenceMetaModel({
    int? currentPage,
    int? totalPages,
    int? totalCount,
    int? perPage,
  }) = _CuratedIngredientPreferenceMetaModel;
}
