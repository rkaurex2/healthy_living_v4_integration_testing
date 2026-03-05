import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_my_items/src/ui/widgets/my_item_search_bar.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NoMyListWidget extends StatefulWidget {
  const NoMyListWidget({super.key});

  @override
  State<NoMyListWidget> createState() => _NoMyListWidgetState();
}

class _NoMyListWidgetState extends State<NoMyListWidget> {
  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    // KEY: TestKeys.myItemsEmptyState
    return Column(
      key: const Key('my_items_empty_state'),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            //Todo hide searchbar for current requirements
            Visibility(visible: false, child: MyItemSearchBar()),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp500,
                vertical: context.dsSpacing.sp700,
              ),
              child: Column(
                children: [
                  DSImage.asset(
                    DSIcons.icMyItemIngredientIllustration,
                    width: context.dsSpacing.sp900,
                    height: context.dsSpacing.sp900,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),

                  DSText(
                    text:
                        healthyLivingSharedLocalizations
                            .healthyLivingShared_lists_youDontHaveAnyList,
                    textStyle: DSTextStyleType.primaryHeadingXs,
                    textColor: context.dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

                  DSText(
                    text:
                        healthyLivingSharedLocalizations
                            .healthyLivingShared_lists_keepTrackProducts,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    textColor: context.dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
