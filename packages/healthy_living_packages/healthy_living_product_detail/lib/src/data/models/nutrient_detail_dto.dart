import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/utils/safe_double_converter.dart';

part 'nutrient_detail_dto.freezed.dart';
part 'nutrient_detail_dto.g.dart';

@freezed
sealed class NutrientDetailDTO with _$NutrientDetailDTO {
  const factory NutrientDetailDTO({
    @JsonKey(name: 'nutrient_name') String? nutrientName,

    @JsonKey(name: 'nutrient_value')
    @SafeDoubleConverter()
    double? value,

    @JsonKey(name: 'nutrient_uom') String? uom,

    @JsonKey(name: 'nutrient_dvp')
    double? dvp,

    @JsonKey(name: 'nutrient_symbol') String? symbol,
  }) = _NutrientDetailDTO;

  factory NutrientDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$NutrientDetailDTOFromJson(json);
}