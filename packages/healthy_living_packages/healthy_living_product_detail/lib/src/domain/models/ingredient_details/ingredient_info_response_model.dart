import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_info_response_model.freezed.dart';

@freezed
sealed class IngredientInfoResponseModel with _$IngredientInfoResponseModel {
  const factory IngredientInfoResponseModel({
    required int id,
    required String name,
    required String description,
    required int countCleaners,
    required int countCosmetics,
    required String gradeWorst,
    required String gradeBest,
    required String skinDeepWebIngredientUrl,
    required String cleanerWebIngredientUrl,
    int? webscore,
    int? webscoreMin,
  }) = _IngredientInfoResponseModel;
}
