import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/domain/models/search_highlights_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'search_product_model.freezed.dart';

@freezed
sealed class SearchProductModel with _$SearchProductModel {
  const factory SearchProductModel({
    required String mobileImageUrl,
    int? id,
    int? skinDeepId,
    String? type,
    String? subtype,
    String? name,
    String? description,
    String? brandName,
    dynamic categoryName,
    dynamic categoryGroupName,
    dynamic subCategoryName,
    int? personalCareScore,
    double? foodScore,
    String? cleanersScore,
    bool? ewgVerified,
    @Default(false) bool isSelectionDisabled,
    String? imageUrl,
    SearchHighlightsModel? highlights,
    IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,
    @Default(ProductSelectionType.none)
    ProductSelectionType productSelectionType,
  }) = _SearchProductModel;
}
