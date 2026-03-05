import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_scores_dto.freezed.dart';
part 'user_list_scores_dto.g.dart';

@freezed
sealed class UserListScoresDTO with _$UserListScoresDTO {
  const factory UserListScoresDTO({
    double? overall,
    @JsonKey(name: 'sort_overall') int? sortOverall,
    int? nutrition,
    double? ingredient,
    double? processing,
    @JsonKey(name: 'percent_nutrition') int? percentNutrition,
    @JsonKey(name: 'percent_ingredient') int? percentIngredient,
    @JsonKey(name: 'percent_processing') int? percentProcessing,
  }) = _UserListScoresDTO;

  factory UserListScoresDTO.fromJson(Map<String, dynamic> json) =>
      _$UserListScoresDTOFromJson(json);
}
