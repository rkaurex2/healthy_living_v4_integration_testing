import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/models/add_remove_list_status.dart';
import 'package:healthy_living_shared/src/ui/widgets/add_remove_check_list.dart';
import 'package:healthy_living_shared/src/ui/widgets/history/product_submission_history_score_badge_label.dart';

class ProductRowItem extends StatelessWidget {
  final String imageUrl;
  final String brand;
  final String? categoryType;
  final String title;
  final String? highLightText;
  final String? score;
  final bool isEWGVerified;
  final bool isSelectionDisabled;
  final VoidCallback? onTap;
  final VoidCallback? onTapSelectionIcon;
  final int? id;
  final ProductSelectionType? productSelectionType;
  final Key? iconKey;
  final IngredientPreference? ingredientPreference;
  final HistoryType? historyType;

  const ProductRowItem({
    required this.imageUrl,
    required this.brand,
    required this.title,
    required this.isEWGVerified,
    this.highLightText,
    this.id,
    this.score,
    this.iconKey,
    this.categoryType,
    this.onTapSelectionIcon,
    this.isSelectionDisabled = false,
    this.onTap,
    this.productSelectionType = ProductSelectionType.none,
    this.ingredientPreference,
    this.historyType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final productHazardLevel = score?.ratingHazardLevel;
    // KEY: TestKeys.listItemCard (dynamic pattern when used in list builders)
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp400),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RepaintBoundary(
                    child: SizedBox(
                      height: 76,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          context.dsRadius.rd200,
                        ),
                        child: DSImage.network(
                          key: ValueKey('img_${id ?? imageUrl}'),
                          imageUrl,
                          width: 76,
                          fit: BoxFit.contain,
                          placeholder: PlaceholderImage(
                            containerSize: 76,
                            imageSize: 42,
                          ),
                          errorWidget: PlaceholderImage(
                            containerSize: 76,
                            imageSize: 42,
                          ),
                        ),
                      ),
                    ),
                  ),
                  DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            if (brand.isValidValue) ...{
                              Flexible(
                                fit: FlexFit.loose,
                                child: ConstrainedBox(
                                  constraints:
                                      categoryType.isValidValue
                                          ? BoxConstraints(
                                            maxWidth:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.4,
                                          )
                                          : BoxConstraints(),
                                  child: DSText(
                                    text: brand,
                                    textStyle:
                                        DSTextStyleType.primaryBodySRegular,
                                    textColor:
                                        context.dsColors.textNeutralSecondary,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            },

                            if (brand.isValidValue &&
                                categoryType.isValidValue) ...{
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.dsSpacing.sp100,
                                ),
                                child: Container(
                                  height: context.dsSizes.sz300,
                                  width: 1,
                                  color: context.dsColors.strokeNeutralDefault,
                                ),
                              ),
                            },
                            if (categoryType.isValidValue) ...{
                              Flexible(
                                child: DSText(
                                  text: categoryType?.toSmartTitleCase(),
                                  textStyle:
                                      DSTextStyleType.primaryBodySRegular,
                                  textColor:
                                      context.dsColors.textNeutralSecondary,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            },
                          ],
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp100,
                        ),
                        SearchResultHighlightTextWidget(
                          text: highLightText ?? title,
                          textStyle: DSTextStyleType.primaryBodyMMedium
                              .getTextStyle()
                              .copyWith(
                                color: context.dsColors.textNeutralOnWhite,
                              ),
                          textStyleHighlight: DSTextStyleType.primaryBodyMMedium
                              .getTextStyle()
                              .copyWith(
                                color:
                                    context.dsColors.textPrimaryHighlightSearch,
                              ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp200,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (isEWGVerified ||
                                productHazardLevel == HazardLevel.verified) ...{
                              Row(
                                children: [
                                  DSImage.asset(
                                    DSIcons.icEWGVerified,
                                    width: 23,
                                    height: 23,
                                  ),
                                  DSSpacingWidget.horizontal(
                                    spacing: context.dsSpacing.sp200,
                                  ),
                                  DSText(
                                    text:
                                        healthyLivingSharedLocalizations
                                            .general_ewgVerified,
                                    textStyle:
                                        DSTextStyleType.primaryBodySRegular,
                                    textColor:
                                        context.dsColors.textNeutralOnWhite,
                                  ),
                                ],
                              ),
                            } else if (score.isValidValue &&
                                historyType == null) ...{
                              ScoreBadgeLabelWithData(
                                score: score!,
                                hazardText: score?.ratingHazardLevel
                                    ?.displayText(
                                      healthyLivingSharedLocalizations,
                                    ),
                                scoreBackgroundColor:
                                    score?.ratingHazardLevel?.displayColor(
                                      context,
                                    ) ??
                                    Colors.transparent,
                              ),
                            } else if (historyType != null &&
                                id != -1 &&
                                score != null) ...{
                              ScoreBadgeLabelWithData(
                                score: score!,
                                hazardText: score?.ratingHazardLevel
                                    ?.displayText(
                                      healthyLivingSharedLocalizations,
                                    ),
                                scoreBackgroundColor:
                                    score?.ratingHazardLevel?.displayColor(
                                      context,
                                    ) ??
                                    Colors.transparent,
                              ),
                            } else if (historyType != null &&
                                historyType?.value ==
                                    HistoryType.productSubmission.value) ...{
                              ProductSubmissionHistoryScoreBadgeLabel(
                                score: score ?? "",
                                hazardText: score?.ratingHazardLevel
                                    ?.displayText(
                                      healthyLivingSharedLocalizations,
                                    ),
                                scoreBackgroundColor:
                                    score?.ratingHazardLevel?.displayColor(
                                      context,
                                    ) ??
                                    Colors.transparent,
                              ),
                            },
                            if (ingredientPreference != null) ...{
                              IngredientPreferenceBadge(
                                preference: ingredientPreference!,
                                size: IngredientPreferenceBadgeSize.small,
                              ),
                            },
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (productSelectionType != ProductSelectionType.none) ...{
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              AddRemoveCheckList(
                iconKey: iconKey,
                status:
                    productSelectionType == ProductSelectionType.add
                        ? AddRemoveListStatus.remove
                        : AddRemoveListStatus.add,
                state:
                    isSelectionDisabled
                        ? AddRemoveListState.disable
                        : AddRemoveListState.normal,
              ),
            },
          ],
        ),
      ),
    );
  }
}
