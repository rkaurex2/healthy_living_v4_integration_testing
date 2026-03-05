// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListProductDTO _$UserListProductDTOFromJson(Map<String, dynamic> json) =>
    _UserListProductDTO(
      productType: json['product_type'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      brandName: json['brand_name'] as String?,
      brandId: (json['brand_id'] as num?)?.toInt(),
      companyName: json['company_name'] as String?,
      name: json['name'] as String?,
      upcs: json['upcs'],
      imageUrl: json['image_url'] as String?,
      score: json['score'] as String?,
      ewgVerified: json['ewg_verified'] as bool?,
      skinDeepId: (json['skindeep_id'] as num?)?.toInt(),
      verifiedDate: json['verified_date'] as String?,
      retailers: json['retailers'] as List<dynamic>?,
      webUrl: json['web_url'] as String?,
      id: (json['id'] as num?)?.toInt(),
      toParam: json['to_param'] as String?,
      brandLineId: (json['brand_line_id'] as num?)?.toInt(),
      grade: json['grade'] as String?,
      searchGrade: json['search_grade'] as String?,
      discontinued: json['discontinued'] as bool?,
      browseImageUrl: json['browse_image_url'] as String?,
      mediumImageUrl: json['medium_image_url'] as String?,
      numberOfFormulations: (json['number_of_formulations'] as num?)?.toInt(),
      greenCertified: json['green_certified'] as bool?,
      business:
          json['business'] == null
              ? null
              : UserListBusinessDTO.fromJson(
                json['business'] as Map<String, dynamic>,
              ),
      nameCorrectionSubmitted: json['name_correction_submitted'] as bool?,
      postdate: json['postdate'] as String?,
      productSize: json['product_size'] as String?,
      imageSource: json['image_source'] as String?,
      asinList: json['asin_list'] as String?,
      scores:
          json['scores'] == null
              ? null
              : UserListScoresDTO.fromJson(
                json['scores'] as Map<String, dynamic>,
              ),
      categoryDisplayName: json['category_display_name'] as String?,
      categoryLinkName: json['category_link_name'] as String?,
      categoryGroups:
          (json['category_groups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      attributes: json['attributes'] as List<dynamic>?,
      certifications: json['certifications'] as List<dynamic>?,
      companyCommunications: json['company_communications'] as List<dynamic>?,
      ingredientPreferenceIndicator:
          json['ingredient_preferences'] == null
              ? null
              : IngredientPreferenceIndicatorDTO.fromJson(
                json['ingredient_preferences'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$UserListProductDTOToJson(_UserListProductDTO instance) =>
    <String, dynamic>{
      'product_type': instance.productType,
      'product_id': instance.productId,
      'brand_name': instance.brandName,
      'brand_id': instance.brandId,
      'company_name': instance.companyName,
      'name': instance.name,
      'upcs': instance.upcs,
      'image_url': instance.imageUrl,
      'score': instance.score,
      'ewg_verified': instance.ewgVerified,
      'skindeep_id': instance.skinDeepId,
      'verified_date': instance.verifiedDate,
      'retailers': instance.retailers,
      'web_url': instance.webUrl,
      'id': instance.id,
      'to_param': instance.toParam,
      'brand_line_id': instance.brandLineId,
      'grade': instance.grade,
      'search_grade': instance.searchGrade,
      'discontinued': instance.discontinued,
      'browse_image_url': instance.browseImageUrl,
      'medium_image_url': instance.mediumImageUrl,
      'number_of_formulations': instance.numberOfFormulations,
      'green_certified': instance.greenCertified,
      'business': instance.business,
      'name_correction_submitted': instance.nameCorrectionSubmitted,
      'postdate': instance.postdate,
      'product_size': instance.productSize,
      'image_source': instance.imageSource,
      'asin_list': instance.asinList,
      'scores': instance.scores,
      'category_display_name': instance.categoryDisplayName,
      'category_link_name': instance.categoryLinkName,
      'category_groups': instance.categoryGroups,
      'attributes': instance.attributes,
      'certifications': instance.certifications,
      'company_communications': instance.companyCommunications,
      'ingredient_preferences': instance.ingredientPreferenceIndicator,
    };
