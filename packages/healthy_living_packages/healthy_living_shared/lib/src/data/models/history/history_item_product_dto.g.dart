// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_item_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HistoryItemProductDTO _$HistoryItemProductDTOFromJson(
  Map<String, dynamic> json,
) => _HistoryItemProductDTO(
  productType: json['product_type'] as String?,
  productId: (json['product_id'] as num?)?.toInt(),
  brandName: json['brand_name'] as String?,
  name: json['name'] as String?,
  imageUrl: json['image_url'] as String?,
  score: json['score'],
  ewgVerified: json['ewg_verified'] as bool?,
  grade: json['grade'] as String?,
  scores:
      json['scores'] == null
          ? null
          : HistoryProductScoresDTO.fromJson(
            json['scores'] as Map<String, dynamic>,
          ),
  ingredientPreferenceIndicator:
      json['ingredient_preferences'] == null
          ? null
          : IngredientPreferenceIndicatorDTO.fromJson(
            json['ingredient_preferences'] as Map<String, dynamic>,
          ),
  ocrJobId: json['ocr_job_id'] as String?,
);

Map<String, dynamic> _$HistoryItemProductDTOToJson(
  _HistoryItemProductDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'product_id': instance.productId,
  'brand_name': instance.brandName,
  'name': instance.name,
  'image_url': instance.imageUrl,
  'score': instance.score,
  'ewg_verified': instance.ewgVerified,
  'grade': instance.grade,
  'scores': instance.scores,
  'ingredient_preferences': instance.ingredientPreferenceIndicator,
  'ocr_job_id': instance.ocrJobId,
};
