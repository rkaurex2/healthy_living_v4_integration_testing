import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/widgets/ft_ux_ingredient_preference_header.dart';

class FtUxGetStartedIngredientPreference extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Key? iconKey;
  final VoidCallback onTapNext;
  final VoidCallback onTapBack;
  final VoidCallback onTapInfo;

  const FtUxGetStartedIngredientPreference({
    required this.title,
    required this.description,
    required this.image,
    required this.onTapNext,
    required this.onTapBack,
    required this.onTapInfo,
    this.iconKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp400,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FtUxIngredientPreferenceHeader(
                    onTapBack: onTapBack,
                    onTapInfo: onTapInfo,
                    iconKey: iconKey,
                  ),
                  _buildBodyContent(context),
                ],
              ),
            ),
          ),
        ),

        DSDivider(),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: context.dsSpacing.sp400,
            horizontal: context.dsSpacing.sp400,
          ),
          child: DSButtonPrimary(
            text: localization.account_ingredientPreference_getStarted,
            size: DSButtonSize.small,
            onPressed: onTapNext,
          ),
        ),
      ],
    );
  }

  Widget _buildBodyContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp600),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  DSImage.asset(
                    image,
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  Positioned(
                    right: -20,
                    bottom: -8,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.dsColors.surfacePrimaryHover,
                      ),
                      child: Center(
                        child: DSImage.asset(
                          DSIcons.ingredientPreferenceIcon,
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),

          DSText(
            text: title,
            textStyle: DSTextStyleType.primaryHeadingL,
            textColor: context.dsColors.textPrimaryDefault,
            fontWeight: DSTypography.fontWeightFw400,
          ),

          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),

          DSText(
            text: description,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: context.dsColors.textNeutralOnWhite,
          ),

          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp700),
        ],
      ),
    );
  }
}
