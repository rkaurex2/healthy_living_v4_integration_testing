import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_detail_response_dto.dart';
part 'product_compare_cleaners_response_data_dto.freezed.dart';
part 'product_compare_cleaners_response_data_dto.g.dart';

@freezed
sealed class ProductCompareCleanersResponseDataDTO
    with _$ProductCompareCleanersResponseDataDTO {
  const factory ProductCompareCleanersResponseDataDTO({
    @JsonKey(name: 'product_type') String? productType,
    @Default([]) List<CleanerDetailResponseDTO> products,
  }) = _ProductCompareCleanersResponseDataDTO;

  factory ProductCompareCleanersResponseDataDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductCompareCleanersResponseDataDTOFromJson(json);
}
