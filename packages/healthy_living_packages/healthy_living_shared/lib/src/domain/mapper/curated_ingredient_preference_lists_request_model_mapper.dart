import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        CuratedIngredientPreferenceListsRequestDto,
        CuratedIngredientPreferenceListsRequestModel;

extension CuratedIngredientPreferenceListsRequestModelMapper
    on CuratedIngredientPreferenceListsRequestModel {
  CuratedIngredientPreferenceListsRequestDto toDto() =>
      CuratedIngredientPreferenceListsRequestDto(
        filterUserSelected: filterUserSelected,
        filterCategory: filterCategory,
        filterActive: filterActive,
        filterListType: filterListType,
        page: page,
        perPage: perPage,
      );
}
