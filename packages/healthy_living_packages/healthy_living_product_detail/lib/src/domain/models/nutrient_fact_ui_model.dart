import 'package:healthy_living_product_detail/src/domain/models/food_detail_nutrient_fact_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_serving_info_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NutrientFactUIModel {
  final String? productSize;
  final String? addedSugarIngredients;
  final FoodDetailServingInfoModel? foodServingInfo;
  final FoodDetailNutrientFactModel? foodCaloriesModel;
  final List<FoodDetailNutrientFactModel>? avoidFactsList;
  final List<FoodDetailNutrientFactModel>? quickFactsList;
  final List<FoodDetailNutrientFactModel>? nutrientsList;
  final RatingDetailModel? ratingDetailModel;
  final String? productName;

  NutrientFactUIModel({
    required this.productSize,
    required this.addedSugarIngredients,
    required this.foodServingInfo,
    required this.foodCaloriesModel,
    required this.avoidFactsList,
    required this.quickFactsList,
    required this.nutrientsList,
    required this.ratingDetailModel,
    required this.productName,
  });
}
