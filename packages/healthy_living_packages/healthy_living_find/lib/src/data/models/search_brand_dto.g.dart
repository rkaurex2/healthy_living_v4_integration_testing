// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_brand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchBrandDTO _$SearchBrandDTOFromJson(Map<String, dynamic> json) =>
    _SearchBrandDTO(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      companyName: json['company_name'] as String?,
      cosmeticsProductsCount:
          (json['cosmetics_products_count'] as num?)?.toInt(),
      logoUrl: json['logo_url'] as String?,
      verified: json['verified'] as bool?,
      highlights:
          json['highlights'] == null
              ? null
              : SearchHighlightsDTO.fromJson(
                json['highlights'] as Map<String, dynamic>,
              ),
      countCleaners: (json['count_cleaners'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchBrandDTOToJson(_SearchBrandDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'company_name': instance.companyName,
      'cosmetics_products_count': instance.cosmeticsProductsCount,
      'logo_url': instance.logoUrl,
      'verified': instance.verified,
      'highlights': instance.highlights,
      'count_cleaners': instance.countCleaners,
    };
