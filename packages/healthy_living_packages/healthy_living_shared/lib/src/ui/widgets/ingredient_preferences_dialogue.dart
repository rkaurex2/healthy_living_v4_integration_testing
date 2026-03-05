import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferencesDialogue extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback? onTapAction;
  final bool showLeadingIcon;

  const IngredientPreferencesDialogue({
    required this.title,
    required this.actionText,
    this.onTapAction,
    this.showLeadingIcon = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Color background = context.dsColors.surfaceNeutralBackgroundLight;
    final Color border = context.dsColors.strokeNeutralDefault;
    final BorderRadius radius = BorderRadius.circular(context.dsRadius.rd300);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: radius,
        border: Border.all(color: border),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.dsSpacing.sp300),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: context.dsSpacing.sp300,
          children: [
            if (showLeadingIcon)
              DSImage.asset(
                DSIcons.icShieldToUser,
                width: context.dsSizes.sz500,
                height: context.dsSizes.sz500,
                color: context.dsColors.iconPrimary,
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: context.dsSpacing.sp200,
                children: [
                  DSText(
                    text: title,
                    textStyle: DSTextStyleType.primaryBodyMMedium,
                    textColor: context.dsColors.textPrimaryDefault,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (onTapAction != null && (actionText.isNotEmpty)) ...{
                    LinkTextWidget(title: actionText, onTap: onTapAction),
                    DSSpacingWidget.vertical(spacing: 2),
                  },
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
