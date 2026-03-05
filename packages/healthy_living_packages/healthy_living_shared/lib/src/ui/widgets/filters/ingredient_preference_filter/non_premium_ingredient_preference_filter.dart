import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';
import 'package:healthy_living_shared/src/ui/widgets/link_text_widget.dart';

class NonPremiumIngredientPreferenceFilter extends StatelessWidget {
  const NonPremiumIngredientPreferenceFilter({
    required this.onTap,
    required this.isAuthenticated,
    this.onLearnAboutPremiumTap,
    super.key,
  });

  final VoidCallback onTap;
  final VoidCallback? onLearnAboutPremiumTap;
  final bool isAuthenticated;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: context.dsSpacing.sp200,
      children: [
        Opacity(
          opacity: isAuthenticated == true ? 1.0 : 0.5,
          child: IgnorePointer(
            ignoring: !isAuthenticated,
            child: GestureDetector(
              onTap: onTap,
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: context.dsSpacing.sp200,
                      children: [
                        Row(
                          spacing: context.dsSpacing.sp200,
                          children: [
                            DSText(
                              text:
                                  localizations
                                      .filters_ingredientPreferences_title,
                              textStyle: DSTextStyleType.primaryHeadingXs,
                              textColor: context.dsColors.textPrimaryDefault,
                            ),
                            DSImage.asset(DSIcons.icEssentialLock),
                          ],
                        ),
                        DSText(
                          text:
                              localizations
                                  .filter_ingredientPreferences_upgradeToPremium,
                          textStyle: DSTextStyleType.primaryBodySRegular,
                          textColor: context.dsColors.textNeutralSecondary,
                        ),
                      ],
                    ),
                  ),
                  DSToggle(value: false, enabled: false, onChanged: (_) {}),
                ],
              ),
            ),
          ),
        ),
        LinkTextWidget(
          title: localizations.filter_ingredientPreferences_learnAboutPremium,
          onTap: onLearnAboutPremiumTap,
        ),
      ],
    );
  }
}
