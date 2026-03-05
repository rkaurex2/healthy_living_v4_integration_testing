import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_response_dto.dart';

part 'product_compare_food_response_data_dto.freezed.dart';
part 'product_compare_food_response_data_dto.g.dart';

@freezed
sealed class ProductCompareFoodResponseDataDTO
    with _$ProductCompareFoodResponseDataDTO {
  const factory ProductCompareFoodResponseDataDTO({
    @JsonKey(name: 'product_type') String? productType,
    @Default([]) List<FoodDetailResponseDTO> products,
  }) = _ProductCompareFoodResponseDataDTO;

  factory ProductCompareFoodResponseDataDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductCompareFoodResponseDataDTOFromJson(json);
}
