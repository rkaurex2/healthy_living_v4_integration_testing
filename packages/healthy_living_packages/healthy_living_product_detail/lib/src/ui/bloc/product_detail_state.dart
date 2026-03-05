import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_details_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_concerns_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_nutrient_fact_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_page_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_serving_info_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/nutrients_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_detail_basic_information_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/sunscreen_details_model.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_detail_tab.dart';

part 'product_detail_state.freezed.dart';

@freezed
sealed class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = ProductDetailInitial;

  const factory ProductDetailState.loading() = ProductDetailLoading;

  const factory ProductDetailState.success({
    required ProductDetailBasicInformationModel? productInformationModel,
    required List<RetailerModel>? retailerModel,
    CosmeticConcernsModel? cosmeticConcernsModel,
    FoodDetailScoresModel? foodDetailScoresModel,
    CleanerDetailsScoresModel? cleanerDetailsScoresModel,
    SunscreenDetailsModel? sunscreenDetailsModel,
    List<FoodDetailPageDetailsModel>? foodDetailPageDetailsModel,
    FoodDetailServingInfoModel? foodDetailServingInfoModel,
    List<FoodDetailNutrientFactModel>? foodDetailAvoidFactModel,
    NutrientsModel? nutrientsModel,
  }) = ProductDetailSuccess;

  const factory ProductDetailState.failure(Exception? exception) =
      ProductDetailFailure;

  const factory ProductDetailState.tabChange({required ProductDetailTab tab}) =
      ProductDetailTabChange;

  const factory ProductDetailState.compareProductInitiate({
    required bool isCompareProductInProgress,
  }) = CompareProductInitiate;

  const factory ProductDetailState.curatedIngredientPreferenceListsLoadFailure(
      Exception? exception,
      ) = CuratedIngredientPreferenceListsLoadFailure;
}
