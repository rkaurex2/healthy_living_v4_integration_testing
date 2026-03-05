import 'package:design_system/design_system.dart' show DSTextStyleType;
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_badge/ingredient_preference_badge_spec.dart';

class IngredientPreferenceBadgeSpecSmall {
  static const IngredientPreferenceBadgeSpec mobile =
      IngredientPreferenceBadgeSpec(
        containerPadding: EdgeInsets.fromLTRB(4, 4, 4, 4),
        iconSize: 16,
        textStyle: DSTextStyleType.primaryCaption,
      );

  static const IngredientPreferenceBadgeSpec tablet =
      IngredientPreferenceBadgeSpec(
        containerPadding: EdgeInsets.fromLTRB(4, 4, 4, 4),
        iconSize: 16,
        textStyle: DSTextStyleType.primaryCaption,
      );
}
