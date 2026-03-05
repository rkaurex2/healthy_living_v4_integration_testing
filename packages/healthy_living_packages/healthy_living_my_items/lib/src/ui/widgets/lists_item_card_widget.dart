import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ListsItemCardWidget extends StatelessWidget {
  final UserListModel? userListModel;
  final int? maxVisible;

  const ListsItemCardWidget({super.key, this.userListModel, this.maxVisible});

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    double tileSize = 40;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
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
                            maxLines: 2,
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
                    userListModel!.items.isNotEmpty) ...{
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),

                  LayoutBuilder(
                    builder: (context, constraints) {
                      final int maxTiles =
                          (constraints.maxWidth ~/ (tileSize + 8))
                              .clamp(1, double.infinity)
                              .toInt();

                      final bool showExtra =
                          (userListModel?.itemsCount ?? 0) > maxTiles;

                      // reserve space for "+X" but ensure at least 1 product if possible
                      final int displayCount =
                          showExtra
                              ? (maxTiles - 1).clamp(1, maxTiles)
                              : (userListModel?.itemsCount ?? 0);

                      final int finalCount = displayCount.clamp(
                        0,
                        userListModel?.items.length ?? 0,
                      );

                      final int remaining =
                          ((userListModel?.itemsCount ?? 0) - finalCount)
                              .clamp(0, double.infinity)
                              .toInt();
                      return Row(
                        spacing: 8,
                        children: [
                          for (int i = 0; i < finalCount; i++)
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
                                    userListModel?.items[i].product?.imageUrl ??
                                        "",
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

                          // Show "+X" tile if needed
                          if (showExtra)
                            Container(
                              width: tileSize,
                              height: tileSize,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  context.dsRadius.rd300,
                                ),
                              ),
                              child: DSText(
                                text: "+$remaining",
                                textStyle: DSTextStyleType.primaryBodySRegular,
                                textColor:
                                    context.dsColors.textNeutralSecondary,
                                textAlign: TextAlign.start,
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                },
              ],
            ),
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
      ],
    );
  }
}
