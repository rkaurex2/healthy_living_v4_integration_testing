// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchIngredientDTO _$SearchIngredientDTOFromJson(
  Map<String, dynamic> json,
) => _SearchIngredientDTO(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  cosmeticsProductsCount: (json['cosmetics_products_count'] as num?)?.toInt(),
  verified: json['verified'] as bool?,
  highlights:
      json['highlights'] == null
          ? null
          : SearchHighlightsDTO.fromJson(
            json['highlights'] as Map<String, dynamic>,
          ),
  countCleaners: (json['count_cleaners'] as num?)?.toInt(),
  score: json['score'],
  synonyms:
      (json['synonyms'] as List<dynamic>?)?.map((e) => e as String?).toList() ??
      const <String>[],
  nProducts: (json['nproducts'] as num?)?.toInt(),
  public: json['public'] as bool?,
);

Map<String, dynamic> _$SearchIngredientDTOToJson(
  _SearchIngredientDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'description': instance.description,
  'cosmetics_products_count': instance.cosmeticsProductsCount,
  'verified': instance.verified,
  'highlights': instance.highlights,
  'count_cleaners': instance.countCleaners,
  'score': instance.score,
  'synonyms': instance.synonyms,
  'nproducts': instance.nProducts,
  'public': instance.public,
};
