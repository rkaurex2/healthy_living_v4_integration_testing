import 'dart:ui';

import 'package:design_system/design_system.dart';
import 'package:healthy_living_shared/src/ui/models/data_availability.dart';

extension IngredientDisclosureStringExtension on String {
  Color? getIngredientDisclosureColor({
    required DSColorThemeExtension dsColors,
  }) {
    final ingredientDisclosureText = toLowerCase();
    final dataAvailability = DataAvailability.fromName(
      ingredientDisclosureText,
    );
    Color? ingredientDisclosureColor;
    if (dataAvailability == DataAvailability.good) {
      ingredientDisclosureColor = dsColors.surfaceScoresBest;
    } else if (dataAvailability == DataAvailability.some) {
      ingredientDisclosureColor = dsColors.surfaceScoresModerate;
    } else if (dataAvailability == DataAvailability.poor) {
      ingredientDisclosureColor = dsColors.surfaceScoresWorse;
    }
    return ingredientDisclosureColor;
  }
}
