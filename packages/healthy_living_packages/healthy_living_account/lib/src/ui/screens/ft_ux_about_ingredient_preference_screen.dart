import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/src/ui/widgets/ft_ux_about_ingredient_preference.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FtUxAboutIngredientPreferenceScreen extends StatelessWidget {
  const FtUxAboutIngredientPreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    final iconKey = GlobalKey();
    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundWhite,
      body: SafeArea(
        child: FtUxAboutIngredientPreference(
          title: sharedLocalizations.account_ingredientPreference_aboutTitle,
          description:
              sharedLocalizations.account_ingredientPreference_aboutDescription,
          image: DSIcons.icBuildingBlockImages,
          iconKey: iconKey,
          onTapNext: () {
            context.pushNamed(
              AppRoutes.ftUxAccountGetStartedIngredientPreference.name,
            );
          },
          onTapBack: () {
            context.pop();
          },
          onTapInfo: () {
            InfoTooltipOverlay.show(
              context,
              targetKey: iconKey,
              title: sharedLocalizations.account_ingredientPreference_infoTitle,
              message:
                  sharedLocalizations
                      .account_ingredientPreference_infoDescription,
            );
          },
        ),
      ),
    );
  }
}
