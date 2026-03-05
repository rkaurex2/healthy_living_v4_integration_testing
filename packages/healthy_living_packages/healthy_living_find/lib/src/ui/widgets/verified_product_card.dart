import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';

class VerifiedProductCard extends StatelessWidget {
  final VoidCallback? onPressed;

  const VerifiedProductCard({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingFindLocalizations.of(context)!;
    final colors = context.dsColors;
    final spacing = context.dsSpacing;
    final radius = context.dsRadius;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: spacing.sp400,
        right: spacing.sp400,
        top: spacing.sp600,
        bottom: spacing.sp400,
      ),
      decoration: BoxDecoration(
        color: colors.surfacePrimaryDefault,
        borderRadius: BorderRadius.circular(radius.rd300),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: DSImage.asset(
              DSIcons.icVerifiedCategory,
              width: 128,
              height: 128,
              fit: BoxFit.contain,
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              DSImage.asset(DSIcons.icEWGVerifiedText, width: 124),
              DSSpacingWidget.vertical(spacing: 14),

              LayoutBuilder(
                builder: (context, constraints) {
                  final imageWidth = 70.0;
                  final maxWidth = constraints.maxWidth - imageWidth;
                  final clampedMaxWidth = maxWidth > 0.0 ? maxWidth : 0.0;
                  return ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: clampedMaxWidth,
                    ),
                    child: DSText(
                      text:
                      localization
                          .find_browse_productsWithoutHarmfulIngredients,
                      textStyle: DSTextStyleType.secondaryHeadingM,
                      textColor: colors.surfaceAdditionalNude0,
                      lineHeight: 1.33,
                    ),
                  );
                },
              ),

              DSSpacingWidget.vertical(spacing: 28),
              DSButtonPrimary(
                text: localization.find_browse_explore,
                type: DSButtonType.outline,
                size: DSButtonSize.small,
                textColor: context.dsColors.textOnSurfaceDefault,
                width: 144,
                outlineColor: context.dsColors.strokeNeutralDefault,
                onPressed: onPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
