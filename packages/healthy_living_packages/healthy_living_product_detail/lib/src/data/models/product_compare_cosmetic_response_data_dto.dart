import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_detail_response_dto.dart';

part 'product_compare_cosmetic_response_data_dto.freezed.dart';
part 'product_compare_cosmetic_response_data_dto.g.dart';

@freezed
sealed class ProductCompareCosmeticResponseDataDTO
    with _$ProductCompareCosmeticResponseDataDTO {
  const factory ProductCompareCosmeticResponseDataDTO({
    @JsonKey(name: 'product_type') String? productType,
    @Default([]) List<CosmeticDetailResponseDTO> products,
  }) = _ProductCompareCosmeticResponseDataDTO;

  factory ProductCompareCosmeticResponseDataDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductCompareCosmeticResponseDataDTOFromJson(json);
}
