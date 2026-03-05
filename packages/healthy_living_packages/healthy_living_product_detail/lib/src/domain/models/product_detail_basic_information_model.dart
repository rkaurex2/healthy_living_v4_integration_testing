import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'product_detail_basic_information_model.freezed.dart';

@freezed
sealed class ProductDetailBasicInformationModel with _$ProductDetailBasicInformationModel {
  const factory ProductDetailBasicInformationModel({
    required String productId,
    required String imageUrl,
    required String brandName,
    required String name,
    required List<String>? category,
    required String size,
    required bool isEwgVerified,
    required RatingDetailModel rating,
    required String dataLevel,
    required ProductCategory productCategory,
    required List<IngredientDetailModel> ingredients,
    required String asin,
    required String addedSugarIngredients,
    String? lastUpdated,
    IngredientPreferenceIndicatorModel? ingredientPreferenceLabels,
  }) = _ProductDetailBasicInformationModel;
}


