// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curated_ingredient_preference_meta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CuratedIngredientPreferenceMetaDTO
_$CuratedIngredientPreferenceMetaDTOFromJson(Map<String, dynamic> json) =>
    _CuratedIngredientPreferenceMetaDTO(
      currentPage: (json['current_page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalCount: (json['total_count'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CuratedIngredientPreferenceMetaDTOToJson(
  _CuratedIngredientPreferenceMetaDTO instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
  'total_count': instance.totalCount,
  'per_page': instance.perPage,
};
