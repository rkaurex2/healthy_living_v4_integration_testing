import 'package:healthy_living_shared/src/data/mapper/curated_ingredient_preference_list_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/mapper/user_list/curated_ingredient_preference_meta_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/curated_ingredient_preference_lists_response_dto.dart';
import 'package:healthy_living_shared/src/domain/models/ingredient_preference/curated_ingredient_preference_list_model.dart';
import 'package:healthy_living_shared/src/domain/models/ingredient_preference/curated_ingredient_preference_lists_response_model.dart';

extension CuratedIngredientPreferenceListsResponseDtoMapper
    on CuratedIngredientPreferenceListsResponseDto? {
  CuratedIngredientPreferenceListsResponseModel? toDomain() {
    final dto = this;
    if (dto == null) {
      return null;
    }

    return CuratedIngredientPreferenceListsResponseModel(
      curatedIngredientPreferenceLists:
          dto.curatedIngredientPreferenceLists
              ?.map((list) => list.toDomain())
              .whereType<CuratedIngredientPreferenceListModel>()
              .toList() ??
          const [],
      meta: dto.meta?.toDomain(),
    );
  }
}
