import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/models/findings_health_concerns_card_param.dart';
import 'package:healthy_living_product_detail/src/ui/models/health_concern_list_item_params.dart';
import 'package:healthy_living_product_detail/src/ui/widget/health_concern_list_item.dart';
import 'package:healthy_living_product_detail/src/ui/widget/health_concern_top_findings_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FindingsHealthConcernsCard extends StatelessWidget {
  final FindingsHealthConcernsCardParam findingsHealthParam;

  const FindingsHealthConcernsCard({
    required this.findingsHealthParam,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.only(
        top: context.dsSpacing.sp400,
        left: context.dsSpacing.sp400,
        right: context.dsSpacing.sp400,
        bottom: context.dsSpacing.sp200,
      ),
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSText(
            text: localization.productDetail_findings_healthConcerns,
            textStyle: DSTextStyleType.primaryHeadingXs,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
          DSText(
            text: localization.productDetail_findings_productScoreTakes,
            textStyle: DSTextStyleType.primaryButtonSRegular,
            textColor: context.dsColors.textNeutralSecondary,
          ),
          DSSpacingWidget.vertical(spacing: 18),
          Container(
            decoration:
                findingsHealthParam.isProductCompare
                    ? BoxDecoration(
                      border: Border.all(
                        color: context.dsColors.strokeNeutralDefault,
                      ),
                    )
                    : null,
            clipBehavior: Clip.none,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: findingsHealthParam.healthConcernList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                if (findingsHealthParam.isProductCompare &&
                    findingsHealthParam.rightHealthConcernList.isValidList) {
                  return HealthConcernListItem(
                    param: HealthConcernListItemParam(
                      isHealthConcernsFoodType:
                          findingsHealthParam.isHealthConcernsFoodType,
                      isProductCompare: findingsHealthParam.isProductCompare,
                      leftHealthConcernUIModel:
                          findingsHealthParam.healthConcernList[index],
                      rightHealthConcernUIModel:
                          findingsHealthParam.rightHealthConcernList![index],
                      isLeftProductVerified:
                          findingsHealthParam.isLeftProductVerified,
                      isRightProductVerified:
                          findingsHealthParam.isRightProductVerified,
                    ),
                  );
                }
                return HealthConcernListItem(
                  param: HealthConcernListItemParam(
                    isHealthConcernsFoodType:
                        findingsHealthParam.isHealthConcernsFoodType,
                    isProductCompare: findingsHealthParam.isProductCompare,
                    leftHealthConcernUIModel:
                        findingsHealthParam.healthConcernList[index],
                  ),
                );
              },
              separatorBuilder:
                  (_, __) =>
                      findingsHealthParam.isHealthConcernsFoodType &&
                              !findingsHealthParam.isProductCompare
                          ? DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          )
                          : DSDivider(),
            ),
          ),
          if (findingsHealthParam.isHealthConcernsFoodType &&
              !findingsHealthParam.isProductCompare) ...[
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
            HealthConcernTopFindingsWidget(
              findingsFoodList: findingsHealthParam.findingsFoodList,
              score: findingsHealthParam.score,
              title: findingsHealthParam.title,
            ),
          ],
        ],
      ),
    );
  }
}
