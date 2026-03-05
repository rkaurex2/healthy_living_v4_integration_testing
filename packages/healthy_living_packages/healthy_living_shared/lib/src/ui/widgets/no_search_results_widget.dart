import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NoSearchResultsWidget extends StatelessWidget {
  const NoSearchResultsWidget({
    required this.title,
    required this.description,
    this.iconPath = DSIcons.icIllustrationZSIngredient,
    this.onLinkTap,
    this.showLinkCta = true,
    this.linkText,
    super.key,
  });

  final String title;
  final String description;
  final String iconPath;
  final VoidCallback? onLinkTap;
  final bool showLinkCta;
  final String? linkText;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.only(
        top: context.dsSpacing.sp700,
        left: context.dsSpacing.sp700,
        right: context.dsSpacing.sp700,
      ),
      child: Column(
        children: [
          IllustrationIcon(iconPath: iconPath),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
          DSText(
            text: title,
            textStyle: DSTextStyleType.primarySubHeadingM,
            textColor: context.dsColors.textNeutralOnWhite,
            textAlign: TextAlign.center,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          DSText(
            text: description,
            textStyle: DSTextStyleType.primaryBodySRegular,
            textColor: context.dsColors.textNeutralOnWhite,
            textAlign: TextAlign.center,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
          if (showLinkCta) ...{
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: context.dsSpacing.sp100,
              children: [
                DSText(
                  text: localizations.find_search_or,
                  textStyle: DSTextStyleType.primaryBodySRegular,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
                LinkTextWidget(
                  title:
                      linkText ?? localizations.find_search_browseAllProducts,
                  onTap:
                      onLinkTap ??
                      () {
                        context.goNamed(AppRoutes.browse.name);
                      },
                ),
              ],
            ),
          },
        ],
      ),
    );
  }
}
