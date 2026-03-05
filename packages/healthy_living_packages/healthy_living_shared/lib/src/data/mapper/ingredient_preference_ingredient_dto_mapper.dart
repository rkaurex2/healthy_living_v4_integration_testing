import 'package:healthy_living_shared/healthy_living_shared.dart' show IngredientPreferenceIngredientDTO, IngredientPreferenceIngredientModel;

extension IngredientPreferenceIngredientDTOMapper on IngredientPreferenceIngredientDTO {
  IngredientPreferenceIngredientModel toDomain() {
    return IngredientPreferenceIngredientModel(
      name: name ?? "",
      source: source ?? "",
      listName: listName ?? "",
    );
  }
}
