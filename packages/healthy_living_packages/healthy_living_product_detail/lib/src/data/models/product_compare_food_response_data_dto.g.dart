// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_compare_food_response_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCompareFoodResponseDataDTO _$ProductCompareFoodResponseDataDTOFromJson(
  Map<String, dynamic> json,
) => _ProductCompareFoodResponseDataDTO(
  productType: json['product_type'] as String?,
  products:
      (json['products'] as List<dynamic>?)
          ?.map(
            (e) => FoodDetailResponseDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$ProductCompareFoodResponseDataDTOToJson(
  _ProductCompareFoodResponseDataDTO instance,
) => <String, dynamic>{
  'product_type': instance.productType,
  'products': instance.products,
};
