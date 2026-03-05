import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/history/history_product_scores_model.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_ingredient/ingredient_preference_indicator_model.dart';

part 'history_item_product_model.freezed.dart';

@freezed
sealed class HistoryItemProductModel with _$HistoryItemProductModel {
  const factory HistoryItemProductModel({
    String? productType,
    int? productId,
    String? brandName,
    String? name,
    String? imageUrl,
    dynamic score,
    bool? ewgVerified,
    int? cleanerId,
    String? grade,
    HistoryProductScoresModel? scores,
    IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,
    String? ocrJobId,
  }) = _HistoryItemProductModel;
}
