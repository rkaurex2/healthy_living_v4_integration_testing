import 'package:design_system/design_system.dart'
    show DSIcons, DSImage, DSSpacingWidget, DSText, DSTextStyleType;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';

class LearnMoreAboutScoreWidget extends StatelessWidget {
  const LearnMoreAboutScoreWidget({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    final learnMoreBorderSide = BorderSide(
      color: context.dsColors.strokeNeutralDefault,
      width: 1,
    );

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: context.dsSizes.sz900,
        margin: EdgeInsets.only(top: context.dsSpacing.sp400),
        padding: EdgeInsets.all(context.dsSpacing.sp400),
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralContainerWhite,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(context.dsRadius.rd300),
            bottomRight: Radius.circular(context.dsRadius.rd300),
          ),
          border: Border(
            left: learnMoreBorderSide,
            right: learnMoreBorderSide,
            bottom: learnMoreBorderSide,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  DSImage.asset(
                    DSIcons.icOtherInformation,
                    color: context.dsColors.iconPrimary,
                    height: context.dsSizes.sz500,
                    width: context.dsSizes.sz500,
                  ),
                  DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                  Expanded(
                    child: DSText(
                      text:
                          localization
                              .productDetail_learnMore_learnMoreAboutScoring,
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.textNeutralOnWhite,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                ],
              ),
            ),
            DSImage.asset(
              DSIcons.icChevronRight,
              color: context.dsColors.iconPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
