import 'package:freezed_annotation/freezed_annotation.dart';

part 'curated_ingredient_preference_lists_request_model.freezed.dart';

@freezed
sealed class CuratedIngredientPreferenceListsRequestModel
    with _$CuratedIngredientPreferenceListsRequestModel {
  const factory CuratedIngredientPreferenceListsRequestModel({
    @JsonKey(name: 'filter[user_selected]') bool? filterUserSelected,
    @JsonKey(name: 'filter[category]') String? filterCategory,
    @JsonKey(name: 'filter[active]') bool? filterActive,
    @JsonKey(name: 'filter[list_type]') String? filterListType,
    @JsonKey(name: 'page[page]') int? page,
    @JsonKey(name: 'page[per_page]') int? perPage,
  }) = _CuratedIngredientPreferenceListsRequestModel;
}
