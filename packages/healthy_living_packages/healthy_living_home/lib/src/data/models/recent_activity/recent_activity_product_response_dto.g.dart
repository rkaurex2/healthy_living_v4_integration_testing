// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_activity_product_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecentActivityProductResponseDTO _$RecentActivityProductResponseDTOFromJson(
  Map<String, dynamic> json,
) => _RecentActivityProductResponseDTO(
  productType: json['product_type'] as String?,
  productId: (json['product_id'] as num?)?.toInt(),
  brandName: json['brand_name'] as String?,
  brandId: (json['brand_id'] as num?)?.toInt(),
  companyName: json['company_name'] as String?,
  name: json['name'] as String?,
  upcs: json['upcs'],
  imageUrl: json['image_url'] as String?,
  browseImageUrl: json['browse_image_url'] as String?,
  mediumImageUrl: json['medium_image_url'] as String?,
  mobileImageUrl: json['mobile_image_url'] as String?,
  score: json['score'] as String?,
  ewgVerified: json['ewg_verified'] as bool?,
  verifiedDate: json['verified_date'] as String?,
  webUrl: json['web_url'] as String?,
);

Map<String, dynamic> _$RecentActivityProductResponseDTOToJson(
  _RecentActivityProductResponseDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'product_id': instance.productId,
  'brand_name': instance.brandName,
  'brand_id': instance.brandId,
  'company_name': instance.companyName,
  'name': instance.name,
  'upcs': instance.upcs,
  'image_url': instance.imageUrl,
  'browse_image_url': instance.browseImageUrl,
  'medium_image_url': instance.mediumImageUrl,
  'mobile_image_url': instance.mobileImageUrl,
  'score': instance.score,
  'ewg_verified': instance.ewgVerified,
  'verified_date': instance.verifiedDate,
  'web_url': instance.webUrl,
};
