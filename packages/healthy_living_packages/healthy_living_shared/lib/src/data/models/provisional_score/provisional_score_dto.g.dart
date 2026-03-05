// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provisional_score_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProvisionalScoreDTO _$ProvisionalScoreDTOFromJson(Map<String, dynamic> json) =>
    _ProvisionalScoreDTO(
      score: (json['score'] as num?)?.toInt(),
      source: json['source'] as String?,
      ingredients:
          json['ingredients'] == null
              ? null
              : ProvisionalScoreIngredientsDTO.fromJson(
                json['ingredients'] as Map<String, dynamic>,
              ),
      productForm: json['product_form'] as String?,
      productUsage: json['product_usage'] as String?,
      healthConcerns:
          json['health_concerns'] == null
              ? null
              : HealthConcernsDTO.fromJson(
                json['health_concerns'] as Map<String, dynamic>,
              ),
      useOnDamagedSkin: json['use_on_damaged_skin'] as bool?,
    );

Map<String, dynamic> _$ProvisionalScoreDTOToJson(
  _ProvisionalScoreDTO instance,
) => <String, dynamic>{
  'score': instance.score,
  'source': instance.source,
  'ingredients': instance.ingredients,
  'product_form': instance.productForm,
  'product_usage': instance.productUsage,
  'health_concerns': instance.healthConcerns,
  'use_on_damaged_skin': instance.useOnDamagedSkin,
};
