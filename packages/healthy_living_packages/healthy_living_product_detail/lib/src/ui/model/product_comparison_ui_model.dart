import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
part 'product_comparison_ui_model.freezed.dart';

@freezed
sealed class ProductComparisonUiModel with _$ProductComparisonUiModel {
  const factory ProductComparisonUiModel({
    required String productImage,
    required String productScore,
    required String productBrand,
    required String productName,
    required String productSize,
    required bool isVerified,
    required IngredientPreferenceIndicatorModel?
    ingredientPreferenceIndicatorModel,
    required List<RetailerModel> retailers,
    required String productId,
    required ProductCategory productCategory,
  }) = _ProductComparisonUiModel;
}
