import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        IngredientPreferenceIndicator,
        IngredientPreferenceIndicatorModel,
        IngredientPreferenceMatch;

class IngredientPreferenceSection extends StatelessWidget {
  final IngredientPreferenceIndicatorModel ingredientPreferenceLabels;
  final bool hasAvoidIngredientPreferenceSet;

  const IngredientPreferenceSection({
    required this.ingredientPreferenceLabels,
    required this.hasAvoidIngredientPreferenceSet,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = SizedBox.shrink();
    List<Widget> preferenceWidgets = [];

    if (ingredientPreferenceLabels.hasAvoid == true) {
      child = IngredientPreferenceIndicator(
        match: IngredientPreferenceMatch.no,
        ingredientList: ingredientPreferenceLabels.avoidedIngredients,
      );
      preferenceWidgets.add(child);
    } else {
      if(hasAvoidIngredientPreferenceSet) {
        child = IngredientPreferenceIndicator(
          match: IngredientPreferenceMatch.yes,
          ingredientList: [],
        );
        preferenceWidgets.add(child);
      }
    }
    if (ingredientPreferenceLabels.hasPrefer == true) {
      child = IngredientPreferenceIndicator(
        match: IngredientPreferenceMatch.preferred,
        ingredientList: ingredientPreferenceLabels.preferredIngredients,
      );
      preferenceWidgets.add(child);
    }

    return Column(
      spacing: context.dsSpacing.sp400,
      children: preferenceWidgets,
    );
  }
}
