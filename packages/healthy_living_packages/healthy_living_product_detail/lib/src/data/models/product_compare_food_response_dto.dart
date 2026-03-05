import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_food_response_data_dto.dart';

part 'product_compare_food_response_dto.freezed.dart';
part 'product_compare_food_response_dto.g.dart';

@freezed
sealed class ProductCompareFoodResponseDTO
    with _$ProductCompareFoodResponseDTO {
  const factory ProductCompareFoodResponseDTO({
    required ProductCompareFoodResponseDataDTO data,
  }) = _ProductCompareFoodResponseDTO;

  factory ProductCompareFoodResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductCompareFoodResponseDTOFromJson(json);
}
