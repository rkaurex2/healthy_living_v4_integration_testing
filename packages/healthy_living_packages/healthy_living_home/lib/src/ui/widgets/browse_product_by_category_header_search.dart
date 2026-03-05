import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductByCategoryHeaderSearch extends StatelessWidget {
  final BrowseProductByCategoryType type;

  const BrowseProductByCategoryHeaderSearch({required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalization =
        HealthyLivingSharedLocalizations.of(context)!;
    return Container(
      color: _getCategoryColor(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          DSSpacingWidget.vertical(spacing: MediaQuery.of(context).padding.top),
          HeaderWithTitle(
            title: _getCategoryName(
              localizations: healthyLivingSharedLocalization,
            ),
            leadIcon: DSIcons.icArrowLeft,
            onTapLeadIcon: () {
              context.pop();
            },
          ),
          Padding(
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            child: DSSearch(
              hintText: _getHintText(healthyLivingSharedLocalization),
              padding: EdgeInsets.symmetric(
                vertical: 6,
                horizontal: context.dsSpacing.sp300,
              ),
              leadingIcon: DSIcons.icSearch,
              leadingIconColor: context.dsColors.iconNeutral,
              textColor: context.dsColors.textNeutralSecondary,
            ),
          ),
        ],
      ),
    );
  }

  String _getHintText(HealthyLivingSharedLocalizations localizations) {
    return switch (type) {
      BrowseProductByCategoryType.ewgVerified =>
        localizations.healthyLivingShared_browseByProduct_ewgVerifiedFindSearch,
      BrowseProductByCategoryType.personalCare =>
        localizations.healthyLivingShared_browseByProduct_searchPersonalCare,
      BrowseProductByCategoryType.cleaner =>
        localizations.healthyLivingShared_browseByProduct_searchCleaners,
      BrowseProductByCategoryType.food =>
        localizations.healthyLivingShared_browseByProduct_searchFood,
      BrowseProductByCategoryType.sunscreen =>
        localizations.healthyLivingShared_browseByProduct_searchFood,
    };
  }

  Color _getCategoryColor(BuildContext context) {
    return switch (type) {
      BrowseProductByCategoryType.ewgVerified =>
        context.dsColors.surfaceNeutralBackgroundLight,
      BrowseProductByCategoryType.personalCare =>
        context.dsColors.surfaceCategoriesPersonalCare,
      BrowseProductByCategoryType.cleaner =>
        context.dsColors.surfaceCategoriesCleaners,
      BrowseProductByCategoryType.food =>
        context.dsColors.surfaceCategoriesFood,
      BrowseProductByCategoryType.sunscreen =>
        context.dsColors.surfaceAdditionalNude50,
    };
  }

  String _getCategoryName({
    required HealthyLivingSharedLocalizations localizations,
  }) {
    return switch (type) {
      BrowseProductByCategoryType.ewgVerified =>
        localizations.healthyLivingShared_userGuide_ewgVerified,
      BrowseProductByCategoryType.personalCare =>
        localizations.general_productCategory_personalCare,
      BrowseProductByCategoryType.cleaner =>
        localizations.general_productCategory_cleaners,
      BrowseProductByCategoryType.food =>
        localizations.general_productCategory_food,
      BrowseProductByCategoryType.sunscreen =>
        localizations.general_productCategory_sunscreen,
    };
  }
}
