import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class GetPremiumWidget extends StatelessWidget {
  const GetPremiumWidget({required this.onGetPremiumPressed, super.key});

  final VoidCallback onGetPremiumPressed;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;
    final colors = context.dsColors;

    return Container(
      padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp400),
      child: Container(
        decoration: BoxDecoration(
          color: colors.surfacePrimaryDefault,
          borderRadius: BorderRadius.circular(DSRadius.rd300),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.dsSpacing.sp400,
            vertical: context.dsSpacing.sp500,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
              _buildTitle(context, localizations),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
              _buildFeatureList(context),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
              SizedBox(
                width: double.infinity,
                child: DSButtonSecondary.fill(
                  text: localizations.general_premium_getPremium,
                  onPressed: onGetPremiumPressed,
                  size: DSButtonSize.small,
                  state: DSButtonState.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 145,
          height: 30,
          child: DSImage.asset(
            DSIcons.icHealthyLivingLogoOneLine,
            color: context.dsColors.iconOnSurfaceDefault,
          ),
        ),
        DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
        DSPremiumBadge.transparent(),
      ],
    );
  }

  Widget _buildTitle(
    BuildContext context,
    HealthyLivingSharedLocalizations localizations,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          text: localizations.general_premium_title,
          textStyle: DSTextStyleType.secondaryHeadingL,
          textColor: context.dsColors.textOnSurfaceDefault,
          textAlign: TextAlign.left,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: DSSpacingWidget.vertical(spacing: 10)),
            Stack(
              alignment: Alignment.bottomRight,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: DSImage.asset(
                    DSIcons.icPremiumBanner,
                    width: 200,
                    height: 200,
                  ),
                ),
                Positioned(
                  right: -10,
                  bottom: -10,
                  child: DSImage.asset(
                    DSIcons.icPremiumCrown,
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFeatureList(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;
    return Column(
      children: [
        _buildFeatureItem(
          context,
          DSIcons.icCompareDisable,
          localizations.general_premium_compareProducts,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
        _buildFeatureItem(
          context,
          DSIcons.icIngredient,
          localizations.general_premium_personalizePreferences,
        ),
      ],
    );
  }

  Widget _buildFeatureItem(BuildContext context, String iconPath, String text) {
    final colors = context.dsColors;

    return Row(
      children: [
        Container(
          width: context.dsSizes.sz600,
          height: context.dsSizes.sz600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DSRadius.rd200),
          ),
          child: Center(
            child: DSImage.asset(iconPath, color: colors.iconOnSurfaceDefault),
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
        Expanded(
          child: DSText(
            text: text,
            textStyle: DSTextStyleType.primaryBodySRegular,
            textColor: colors.textOnSurfaceDefault,
          ),
        ),
      ],
    );
  }
}
