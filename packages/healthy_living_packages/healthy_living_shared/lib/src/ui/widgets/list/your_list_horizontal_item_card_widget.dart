import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class YourListHorizontalItemCardWidget extends StatelessWidget {
  final UserListModel? userListModel;
  final int? maxVisible;
  final double? borderRadius;
  final VoidCallback onTap;

  const YourListHorizontalItemCardWidget({
    required this.onTap,
    super.key,
    this.userListModel,
    this.borderRadius,
    this.maxVisible,
  });

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    double tileSize = 40;
    return InkWell(
      onTap: () {
        onTap.call();
      },
      child: Container(
        constraints: BoxConstraints(minWidth: 205, maxWidth: 215),
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralContainerWhite,
          borderRadius: BorderRadius.circular(
            borderRadius ?? context.dsRadius.rd300,
          ),
          border: Border.all(color: context.dsColors.strokeNeutralDefault),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.dsSpacing.sp400,
            vertical: context.dsSpacing.sp300,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: DSText(
                          text: (userListModel?.name ?? ""),
                          textStyle: DSTextStyleType.primarySubHeadingM,
                          //Todo in its Wireframing/Black(#000000) not available in design system
                          textColor: DSBaseColors.neutral1000,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  DSText(
                    text: HealthyLivingSharedUtils.getListProductsItemCount(
                      healthyLivingSharedLocalizations:
                          healthyLivingSharedLocalizations,
                      itemCount: userListModel?.itemsCount ?? 0,
                    ),
                    textStyle: DSTextStyleType.primaryCaption,
                    textColor: context.dsColors.textNeutralSecondary,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),

              if (userListModel?.items != null &&
                  userListModel!.items.isNotEmpty) ...[
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                Row(
                  spacing: 8,
                  children: [
                    // Show up to first 3 product images
                    for (
                      int i = 0;
                      i < (userListModel?.items.length ?? 0) && i < 3;
                      i++
                    )
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: context.dsColors.iconBrandDisabled,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(
                            context.dsRadius.rd300,
                          ),
                        ),
                        child: SizedBox(
                          height: tileSize,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              context.dsRadius.rd300,
                            ),
                            child: DSImage.network(
                              userListModel?.items[i].product?.imageUrl ?? "",
                              width: tileSize,
                              fit: BoxFit.contain,
                              errorWidget: PlaceholderImage(
                                containerSize: tileSize,
                                imageSize: tileSize - 20,
                                borderRadius: context.dsRadius.rd300,
                              ),
                            ),
                          ),
                        ),
                      ),

                    if ((userListModel?.itemsCount ?? 0) > 3)
                      Flexible(
                        child: DSText(
                          text: "+${(userListModel?.itemsCount ?? 0) - 3}",
                          textStyle: DSTextStyleType.primaryBodySRegular,
                          textColor: context.dsColors.textNeutralSecondary,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
              ] else ...[
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                SizedBox(height: tileSize),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
