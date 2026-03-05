// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_compare_cosmetic_response_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCompareCosmeticResponseDataDTO
_$ProductCompareCosmeticResponseDataDTOFromJson(Map<String, dynamic> json) =>
    _ProductCompareCosmeticResponseDataDTO(
      productType: json['product_type'] as String?,
      products:
          (json['products'] as List<dynamic>?)
              ?.map(
                (e) => CosmeticDetailResponseDTO.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductCompareCosmeticResponseDataDTOToJson(
  _ProductCompareCosmeticResponseDataDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'products': instance.products,
};
