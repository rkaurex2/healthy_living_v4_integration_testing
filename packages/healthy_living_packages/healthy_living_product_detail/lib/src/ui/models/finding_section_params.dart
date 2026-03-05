import 'package:healthy_living_product_detail/src/domain/models/cleaner_details_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_concerns_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_page_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/sunscreen_details_model.dart';

class FindingSectionParams {
  const FindingSectionParams({
    required this.cosmeticConcernsModel,
    required this.cleanerDetailsScoresModel,
    required this.foodDetailScoresModel,
    required this.sunscreenDetailsModel,
    this.foodDetailPageDetailsModel,
  });

  final CosmeticConcernsModel? cosmeticConcernsModel;
  final CleanerDetailsScoresModel? cleanerDetailsScoresModel;
  final FoodDetailScoresModel? foodDetailScoresModel;
  final SunscreenDetailsModel? sunscreenDetailsModel;
  final List<FoodDetailPageDetailsModel>? foodDetailPageDetailsModel;
}
