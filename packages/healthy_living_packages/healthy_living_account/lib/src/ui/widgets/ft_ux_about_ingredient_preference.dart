import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/widgets/ft_ux_ingredient_preference_header.dart';

class FtUxAboutIngredientPreference extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Key? iconKey;
  final VoidCallback onTapNext;
  final VoidCallback onTapBack;
  final VoidCallback onTapInfo;

  const FtUxAboutIngredientPreference({
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
            text: localization.account_ingredientPreference_aboutNext,
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
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(context.dsRadius.rd400),
                  child: DSImage.asset(
                    image,
                    height: MediaQuery.of(context).size.height * 0.39,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.dsColors.surfaceSemanticErrorLight,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, -1),
                          blurRadius: 2,
                          color: Colors.black.withValues(alpha: 0.1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(context.dsSpacing.sp400),
                      child: DSImage.asset(
                        DSIcons.icAvoid,
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  right: 50,
                  top: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.dsColors.surfaceAdditionalPurple50,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(context.dsSpacing.sp400),
                      child: DSImage.asset(
                        DSIcons.icPrefer,
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
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
