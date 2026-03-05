import 'package:design_system/design_system.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:flutter/material.dart';

class CreateAccountCard extends StatelessWidget {
  const CreateAccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingHomeLocalizations localizations =
        HealthyLivingHomeLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralBackgroundMedium,
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.dsSpacing.sp400),
        child: Column(
          spacing: context.dsSpacing.sp400,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DSText(
                    text: localizations.home_customizeYourExperience,
                    textStyle: DSTextStyleType.primaryHeadingM,
                    textColor: context.dsColors.textPrimaryDefault,
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp100),
                DSImage.asset(
                  DSIcons.icMyAccountOutline,
                  width: context.dsSizes.sz600,
                  height: context.dsSizes.sz600,
                ),
              ],
            ),

            DSText(
              text: localizations.home_keepTrackOfYourActivity,
              textStyle: DSTextStyleType.primaryBodyMRegular,
              textColor: context.dsColors.surfacePrimaryPress,
            ),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
            DSButtonSecondary(
              text: localizations.home_signIn,
              onPressed:
                  () => _navigateToAuthScreen(context: context, isLogin: true),
              size: DSButtonSize.small,
            ),
            AuthLinkTextFooter(
              description: localizations.home_join,
              title: localizations.home_donNotHaveAccount,
              isLogin: false,
              onPressed:
                  () => _navigateToAuthScreen(context: context, isLogin: false),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToAuthScreen({
    required BuildContext context,
    required bool isLogin,
  }) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      extra: {StringConstants.openedFrom: StringConstants.home},
      queryParameters: AuthScreenParams(isLogin: isLogin).toQueryParameters(),
    );
  }
}
