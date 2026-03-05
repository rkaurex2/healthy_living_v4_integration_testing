import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/substance_model.dart';

part 'cleaner_ingredient_model.freezed.dart';

@freezed
sealed class CleanerIngredientModel with _$CleanerIngredientModel {
  const factory CleanerIngredientModel({
    required int id,
    String? name,
    String? grade,
    double? score,
    @Default([]) List<SubstanceModel> substances,
  }) = _CleanerIngredientModel;
}