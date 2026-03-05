import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/substance_dto.dart';

part 'cleaner_ingredient_dto.freezed.dart';
part 'cleaner_ingredient_dto.g.dart';

@freezed
sealed class CleanerIngredientDTO with _$CleanerIngredientDTO {
  const factory CleanerIngredientDTO({
    required int id,
    @JsonKey(name: 'chemical_name') String? chemicalName,
    String? grade,
    double? score,
    List<SubstanceDTO>? substances,
  }) = _CleanerIngredientDTO;

  factory CleanerIngredientDTO.fromJson(Map<String, dynamic> json) =>
      _$CleanerIngredientDTOFromJson(json);
}
