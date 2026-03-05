import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cleaners_response_data_dto.dart';

part 'product_compare_cleaners_response_dto.freezed.dart';
part 'product_compare_cleaners_response_dto.g.dart';

@freezed
sealed class ProductCompareCleanersResponseDTO
    with _$ProductCompareCleanersResponseDTO {
  const factory ProductCompareCleanersResponseDTO({
    required ProductCompareCleanersResponseDataDTO data,
  }) = _ProductCompareCleanersResponseDTO;

  factory ProductCompareCleanersResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductCompareCleanersResponseDTOFromJson(json);
}
