import 'package:healthy_living_product_detail/src/domain/models/food_detail_nutrient_fact_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_serving_info_model.dart';

class NutritionFactsUIModel {
  final FoodDetailServingInfoModel? foodServingInfo;
  final FoodDetailNutrientFactModel? foodCaloriesModel;
  final List<FoodDetailNutrientFactModel>? avoidFactsList;
  final List<FoodDetailNutrientFactModel>? quickFactsList;
  final List<FoodDetailNutrientFactModel>? nutrientsList;

  const NutritionFactsUIModel({
    this.foodServingInfo,
    this.foodCaloriesModel,
    this.avoidFactsList,
    this.quickFactsList,
    this.nutrientsList,
  });
}
