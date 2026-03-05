import 'package:healthy_living_shared/src/data/mapper/ingredient_preference_ingredient_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/ingredient_preference_indicator_dto.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_ingredient/ingredient_preference_indicator_model.dart';

extension IngredientPreferenceIndicatorMapper
on IngredientPreferenceIndicatorDTO {
  IngredientPreferenceIndicatorModel? toDomain() {
    final dto = this;
    return IngredientPreferenceIndicatorModel(
      hasAvoid: dto.hasAvoid ?? false,
      hasPrefer: dto.hasPrefer,
      avoidCount: dto.avoidCount ?? 0,
      preferCount: dto.preferCount ?? 0,
      avoidedIngredients:
      dto.avoidedIngredients
          ?.map((ingredient) => ingredient.toDomain())
          .toList() ??
          [],
      preferredIngredients:
      dto.preferredIngredients
          ?.map((ingredient) => ingredient.toDomain())
          .toList() ??
          [],
    );
  }
}