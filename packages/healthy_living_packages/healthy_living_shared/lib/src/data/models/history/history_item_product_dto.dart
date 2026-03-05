import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/history/history_product_scores_dto.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/ingredient_preference_indicator_dto.dart';

part 'history_item_product_dto.freezed.dart';
part 'history_item_product_dto.g.dart';

@freezed
sealed class HistoryItemProductDTO with _$HistoryItemProductDTO {
  const factory HistoryItemProductDTO({
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'brand_name') String? brandName,
    String? name,
    @JsonKey(name: 'image_url') String? imageUrl,
    dynamic score,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    @JsonKey(name: 'grade') String? grade,
    HistoryProductScoresDTO? scores,
    @JsonKey(name: 'ingredient_preferences')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
    @JsonKey(name: 'ocr_job_id')
    String? ocrJobId,

  }) = _HistoryItemProductDTO;

  factory HistoryItemProductDTO.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemProductDTOFromJson(json);
}
