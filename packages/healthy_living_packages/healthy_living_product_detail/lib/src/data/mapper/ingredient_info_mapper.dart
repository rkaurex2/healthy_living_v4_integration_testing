import 'package:healthy_living_product_detail/src/data/models/ingredient_details/ingredient_info_response_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_response_model.dart';

extension IngredientInfoMapper on IngredientInfoResponseDTO {
  IngredientInfoResponseModel toDomain() {
    return IngredientInfoResponseModel(
      id: id ?? -1,
      name: name ?? "",
      description: description ?? "",
      countCleaners: countCleaners ?? 0,
      countCosmetics: countCosmetics ?? 0,
      gradeWorst: gradeWorst ?? "",
      gradeBest: gradeBest ?? "",
      webscore: webscore,
      webscoreMin: webscoreMin,
      skinDeepWebIngredientUrl: skinDeepWebIngredientUrl ?? "",
      cleanerWebIngredientUrl: cleanerWebIngredientUrl ?? "",
    );
  }
}
