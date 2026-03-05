import 'package:freezed_annotation/freezed_annotation.dart';

part 'curated_ingredient_preference_list_model.freezed.dart';

@freezed
sealed class CuratedIngredientPreferenceListModel
    with _$CuratedIngredientPreferenceListModel {
  const factory CuratedIngredientPreferenceListModel({
    int? id,
    String? name,
    String? category,
    String? listType,
    String? severityLevel,
    String? description,
    bool? active,
    int? priorityOrder,
    int? itemCount,
    bool? userSelected,
    int? userSelectionId,
    bool? userSelectionEnabled,
    int? userSelectionPriority,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CuratedIngredientPreferenceListModel;
}
