import 'package:healthy_living_shared/src/data/models/ingredient_preference/curated_ingredient_preference_meta_dto.dart';
import 'package:healthy_living_shared/src/domain/models/ingredient_preference/curated_ingredient_preference_meta_model.dart';

extension CuratedIngredientPreferenceMetaDTOMapper
    on CuratedIngredientPreferenceMetaDto? {
  CuratedIngredientPreferenceMetaModel? toDomain() {
    final dto = this;
    if (dto == null) {
      return null;
    }

    return CuratedIngredientPreferenceMetaModel(
      currentPage: dto.currentPage,
      totalPages: dto.totalPages,
      totalCount: dto.totalCount,
      perPage: dto.perPage,
    );
  }
}
