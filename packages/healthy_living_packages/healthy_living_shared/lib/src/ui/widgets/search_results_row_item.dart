import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchResultsRowItem extends StatelessWidget {
  const SearchResultsRowItem({
    required this.title,
    required this.highLightText,
    super.key,
    this.onTap,
    this.isEwgVerified = false,
  });

  final String title;
  final String highLightText;
  final bool isEwgVerified;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: SearchResultHighlightTextWidget(
                text: highLightText,
                textStyle: DSTextStyleType.primaryBodyMRegular
                    .getTextStyle()
                    .copyWith(color: context.dsColors.textNeutralOnWhite),
                textStyleHighlight: DSTextStyleType.primaryBodyMRegular
                    .getTextStyle()
                    .copyWith(
                      color: context.dsColors.textPrimaryHighlightSearch,
                    ),
              ),
            ),
            if (isEwgVerified) ...{
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              Row(
                children: [
                  DSImage.asset(
                    DSIcons.icEWGVerified,
                    width: context.dsSizes.sz400,
                    height: context.dsSizes.sz400,
                  ),
                  DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp100),
                  DSText(
                    text: healthyLivingSharedLocalizations.general_ewgVerified,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    textColor: context.dsColors.textNeutralOnWhite,
                  ),
                ],
              ),
            },
          ],
        ),
      ),
    );
  }
}
