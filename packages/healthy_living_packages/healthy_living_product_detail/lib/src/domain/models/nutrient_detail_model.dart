import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient_detail_model.freezed.dart';

@freezed
sealed class NutrientDetailModel with _$NutrientDetailModel {
  const factory NutrientDetailModel({
    @JsonKey(name: 'nutrient_name') String? nutrientName,
    @JsonKey(name: 'nutrient_value') double? value,
    @JsonKey(name: 'nutrient_uom') String? uom,
    @JsonKey(name: 'nutrient_dvp') double? dvp,
    @JsonKey(name: 'nutrient_symbol') String? symbol,
  }) = _NutrientDetailModel;
}