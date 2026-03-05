import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cosmetic_response_data_dto.dart';

part 'product_compare_cosmetic_response_dto.freezed.dart';
part 'product_compare_cosmetic_response_dto.g.dart';

@freezed
sealed class ProductCompareCosmeticResponseDTO
    with _$ProductCompareCosmeticResponseDTO {
  const factory ProductCompareCosmeticResponseDTO({
    required ProductCompareCosmeticResponseDataDTO data,
  }) = _ProductCompareCosmeticResponseDTO;

  factory ProductCompareCosmeticResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductCompareCosmeticResponseDTOFromJson(json);
}
