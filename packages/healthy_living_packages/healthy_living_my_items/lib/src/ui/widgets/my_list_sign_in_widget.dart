import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_my_items/l10n/healthy_living_my_items_localizations.dart';
import 'package:healthy_living_my_items/src/ui/widgets/my_item_search_bar.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyListsSignInWidget extends StatelessWidget {
  final int tapIndex;

  const MyListsSignInWidget({required this.tapIndex, super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingMyItemsLocalizations healthyLivingMyItemsLocalizations =
        HealthyLivingMyItemsLocalizations.of(context)!;
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;

    return Column(
      children: [
        //Todo hide searchbar for current requirements
        Visibility(visible: false, child: MyItemSearchBar()),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp500,
                vertical: context.dsSpacing.sp700,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DSImage.asset(
                    DSIcons.icMyItemProfileIllustration,
                    width: context.dsSpacing.sp900,
                    height: context.dsSpacing.sp900,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
                  DSText(
                    text:
                        sharedLocalizations
                            .healthyLivingShared_myItems_youAreSignedOut,
                    textStyle: DSTextStyleType.primaryHeadingXs,
                    textColor: context.dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                  DSText(
                    text:
                        sharedLocalizations
                            .healthyLivingShared_myItems_signInToSeeYourLists,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    textColor: context.dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp400,
              ),
              child: Column(
                children: [
                  DSButtonPrimary(
                    text:
                        healthyLivingMyItemsLocalizations.myItems_lists_signIn,
                    size: DSButtonSize.small,
                    onPressed:
                        () => _navigateToAuthScreen(
                          context: context,
                          isLogin: true,
                        ),
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                  DSButtonPrimary(
                    text:
                        healthyLivingMyItemsLocalizations
                            .myItems_lists_createAnAccount,
                    size: DSButtonSize.small,
                    type: DSButtonType.outline,
                    onPressed:
                        () => _navigateToAuthScreen(
                          context: context,
                          isLogin: false,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _navigateToAuthScreen({
    required BuildContext context,
    required bool isLogin,
  }) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      extra: {
        StringConstants.openedFrom: StringConstants.myItems,
        StringConstants.myListTapIndex: tapIndex.toString(),
      },
      queryParameters: AuthScreenParams(isLogin: isLogin).toQueryParameters(),
    );
  }
}
