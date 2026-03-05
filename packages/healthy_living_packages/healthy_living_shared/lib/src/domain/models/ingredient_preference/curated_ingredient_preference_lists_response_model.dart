import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/ingredient_preference/curated_ingredient_preference_list_model.dart';
import 'package:healthy_living_shared/src/domain/models/ingredient_preference/curated_ingredient_preference_meta_model.dart';

part 'curated_ingredient_preference_lists_response_model.freezed.dart';

@freezed
sealed class CuratedIngredientPreferenceListsResponseModel
    with _$CuratedIngredientPreferenceListsResponseModel {
  const factory CuratedIngredientPreferenceListsResponseModel({
    @Default(<CuratedIngredientPreferenceListModel>[])
    List<CuratedIngredientPreferenceListModel> curatedIngredientPreferenceLists,
    CuratedIngredientPreferenceMetaModel? meta,
  }) = _CuratedIngredientPreferenceListsResponseModel;
}
