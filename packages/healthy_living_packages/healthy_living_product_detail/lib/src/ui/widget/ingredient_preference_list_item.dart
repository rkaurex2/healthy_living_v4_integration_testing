import 'package:design_system/design_system.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:flutter/material.dart';

class IngredientPreferenceListItem extends StatelessWidget {
  const IngredientPreferenceListItem({required this.items, super.key});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final text in items)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BulletDotWidget(),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp300),
                Expanded(
                  child: DSText(
                    text: text,
                    textStyle: DSTextStyleType.primaryBodySMedium,
                    textColor: context.dsColors.textNeutralOnWhite,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
