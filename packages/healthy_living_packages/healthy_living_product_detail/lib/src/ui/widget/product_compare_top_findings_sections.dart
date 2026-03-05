import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/model/top_findings_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_compare_top_findings_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductCompareTopFindingsSections extends StatelessWidget {
  const ProductCompareTopFindingsSections({
    required this.topFindingsSection,
    required this.firstProductList,
    required this.secondProductList,
    super.key,
  });

  final TopFindingsSection topFindingsSection;
  final List<String> firstProductList;
  final List<String> secondProductList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        border: Border.all(
          color: context.dsColors.strokeNeutralDefault,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(context.dsSizes.sz100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: context.dsSpacing.sp300,
              horizontal: context.dsSpacing.sp200,
            ),
            color: context.dsColors.surfaceNeutralBackgroundLight,
            child: Row(
              children: [
                DSImage.asset(
                  _getSectionTypeIcon(),
                  height: context.dsSizes.sz400,
                  width: context.dsSizes.sz400,
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                DSText(
                  text: _getSectionType(context),
                  textStyle: DSTextStyleType.primaryBodySMedium,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
              ],
            ),
          ),
          DSDivider(),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp300),
                    child:
                        firstProductList.isValidList
                            ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (
                                  int i = 0;
                                  i < firstProductList.length;
                                  i++
                                ) ...[
                                  ProductCompareTopFindingsItem(
                                    itemTitle: firstProductList[i],
                                    typeIconColor: _findingsTypeColor(
                                      context: context,
                                    ),
                                    topFindingsSection: topFindingsSection,
                                  ),
                                  if (i < firstProductList.length - 1)
                                    DSSpacingWidget.vertical(
                                      spacing: context.dsSpacing.sp400,
                                    ),
                                ],
                              ],
                            )
                            : ProductCompareTopFindingsItem(
                              itemTitle: "",
                              typeIconColor: _findingsTypeColor(
                                context: context,
                              ),
                              topFindingsSection: topFindingsSection,
                            ),
                  ),
                ),
                VerticalDivider(
                  color: context.dsColors.strokeNeutralDefault,
                  width: 1,
                  thickness: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp300),
                    child:
                        secondProductList.isValidList
                            ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (
                                  int i = 0;
                                  i < secondProductList.length;
                                  i++
                                ) ...[
                                  ProductCompareTopFindingsItem(
                                    itemTitle: secondProductList[i],
                                    typeIconColor: _findingsTypeColor(
                                      context: context,
                                    ),
                                    topFindingsSection: topFindingsSection,
                                  ),
                                  if (i < secondProductList.length - 1)
                                    DSSpacingWidget.vertical(
                                      spacing: context.dsSpacing.sp400,
                                    ),
                                ],
                              ],
                            )
                            : ProductCompareTopFindingsItem(
                              itemTitle: "",
                              typeIconColor: _findingsTypeColor(
                                context: context,
                              ),
                              topFindingsSection: topFindingsSection,
                            ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getSectionType(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;

    if (topFindingsSection == TopFindingsSection.negative) {
      return localizations.productDetail_healthConcern_negatives;
    } else if (topFindingsSection == TopFindingsSection.positive) {
      return localizations.productDetail_healthConcern_positives;
    } else if (topFindingsSection == TopFindingsSection.otherInfo) {
      return localizations.productDetail_healthConcern_otherInfo;
    }
    return localizations.productDetail_healthConcern_positives;
  }

  String _getSectionTypeIcon() {
    if (topFindingsSection == TopFindingsSection.negative) {
      return DSIcons.icNegatives;
    } else if (topFindingsSection == TopFindingsSection.positive) {
      return DSIcons.icPositives;
    } else if (topFindingsSection == TopFindingsSection.otherInfo) {
      return DSIcons.icOtherInformation;
    }
    return DSIcons.icPositives;
  }

  Color _findingsTypeColor({required BuildContext context}) {
    if (topFindingsSection == TopFindingsSection.negative) {
      return context.dsColors.surfaceScoresWorse;
    } else if (topFindingsSection == TopFindingsSection.positive) {
      return context.dsColors.surfaceScoresGood;
    } else if (topFindingsSection == TopFindingsSection.otherInfo) {
      return context.dsColors.surfaceNeutralContainer6;
    }
    return context.dsColors.surfaceScoresGood;
  }
}
