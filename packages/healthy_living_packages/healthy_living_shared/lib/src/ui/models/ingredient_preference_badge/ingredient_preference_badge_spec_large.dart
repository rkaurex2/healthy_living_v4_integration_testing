import 'package:design_system/design_system.dart' show DSTextStyleType;
import 'package:flutter/material.dart' show EdgeInsets;
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_badge/ingredient_preference_badge_spec.dart';

class IngredientPreferenceBadgeSpecLarge {
  static const IngredientPreferenceBadgeSpec mobile =
      IngredientPreferenceBadgeSpec(
        containerPadding: EdgeInsets.fromLTRB(6, 6, 6, 6),
        iconSize: 24,
        textStyle: DSTextStyleType.primaryBodyMRegular,
      );

  static const IngredientPreferenceBadgeSpec tablet =
      IngredientPreferenceBadgeSpec(
        containerPadding: EdgeInsets.fromLTRB(6, 6, 6, 6),
        iconSize: 24,
        textStyle: DSTextStyleType.primaryBodyMRegular,
      );
}
