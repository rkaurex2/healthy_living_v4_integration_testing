import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyListNoProductWidget extends StatelessWidget {
  final String listName;
  final VoidCallback addProductButtonOnPressed;
  final bool isOpenFromSharedLink;

  const MyListNoProductWidget({
    required this.listName,
    required this.addProductButtonOnPressed,
    required this.isOpenFromSharedLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(context.dsSpacing.sp400),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IllustrationIcon(iconPath: DSIcons.icIllustrationZSSearch),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),

                  DSText(
                    text:
                        healthyLivingSharedLocalizations
                            .general_list_thisListIsEmpty,
                    textStyle: DSTextStyleType.primaryHeadingXs,
                    textColor: context.dsColors.textNeutralOnWhite,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

                  DSText(
                    text:
                        healthyLivingSharedLocalizations
                            .general_list_addProductsToBegin,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    textColor: context.dsColors.textNeutralOnWhite,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (!isOpenFromSharedLink) ...{
          Container(
            decoration: BoxDecoration(
              color: context.dsColors.surfaceNeutralContainerWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  offset: Offset(0, -2),
                  blurRadius: context.dsRadius.rd200,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(context.dsSpacing.sp400),
              child: DSButtonPrimary.fill(
                text:
                    healthyLivingSharedLocalizations
                        .healthyLivingShared_lists_addProducts,
                leadingIconPath: DSIcons.icAdd,
                onPressed: () {
                  addProductButtonOnPressed.call();
                },
                size: DSButtonSize.small,
                textStyle: DSTextStyleType.primaryButtonLRegular,
              ),
            ),
          ),
        },
      ],
    );
  }
}
