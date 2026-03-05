import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_ingredient/ingredient_preference_indicator_model.dart';
part 'general_product_list_item_ui_model.freezed.dart';

@freezed
sealed class GeneralProductListItemUIModel
    with _$GeneralProductListItemUIModel {
  const factory GeneralProductListItemUIModel({
    required int productId,
    required String imageUrl,
    required String brandName,
    required String productName,
    required String productType,
    required bool isEWGVerified,
    required String score,
    required String categoryType,
    IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,
  }) = _GeneralProductListItemUIModel;
}
