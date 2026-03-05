// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_compare_cleaners_response_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCompareCleanersResponseDataDTO
_$ProductCompareCleanersResponseDataDTOFromJson(
  Map<String, dynamic> json,
) => _ProductCompareCleanersResponseDataDTO(
  productType: json['product_type'] as String?,
  products:
      (json['products'] as List<dynamic>?)
          ?.map(
            (e) => CleanerDetailResponseDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$ProductCompareCleanersResponseDataDTOToJson(
  _ProductCompareCleanersResponseDataDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'products': instance.products,
};
