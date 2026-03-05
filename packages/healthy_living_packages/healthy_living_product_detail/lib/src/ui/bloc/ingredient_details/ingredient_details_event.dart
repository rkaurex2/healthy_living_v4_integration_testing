import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_details_event.freezed.dart';

@freezed
sealed class IngredientDetailsEvent with _$IngredientDetailsEvent {
  const factory IngredientDetailsEvent.requested({required String id}) =
      IngredientDetailsRequested;
}
