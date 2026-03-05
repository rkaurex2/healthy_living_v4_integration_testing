import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/models/finding_health_concern_list_param.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_type_health_concern_content.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FindingsHealthConcernsFoodListItem extends StatelessWidget {
  final FindingHealthConcernListParam findingHealthConcernListParam;

  const FindingsHealthConcernsFoodListItem({
    required this.findingHealthConcernListParam,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.all(context.dsSpacing.sp300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        border: Border.all(color: context.dsColors.strokeNeutralDefault),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(context.dsSpacing.sp300),
            width: context.dsSizes.sz800,
            height: context.dsSizes.sz800,
            decoration: BoxDecoration(
              color: context.dsColors.surfaceAdditionalNude50,
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            ),
            child: DSImage.asset(
              findingHealthConcernListParam.healthConcernUiModel.iconPath,
              height: context.dsSizes.sz500,
              width: context.dsSizes.sz500,
            ),
          ),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp300),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSText(
                  text:
                      findingHealthConcernListParam.healthConcernUiModel.title,
                  textStyle: DSTextStyleType.primaryButtonLRegular,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                Row(
                  children: [
                    if (findingHealthConcernListParam
                        .healthConcernUiModel
                        .hazardType
                        .isValidValue)
                      findingHealthConcernListParam.isProductCompare
                          ? Flexible(
                            child: ProductTypeHealthConcernContent(
                              hazardType:
                                  findingHealthConcernListParam
                                          .isLeftProductVerified
                                      ? localizations.general_noData
                                      : findingHealthConcernListParam
                                          .healthConcernUiModel
                                          .hazardType!,
                              hazardValue:
                                  findingHealthConcernListParam
                                          .isLeftProductVerified
                                      ? localizations
                                          .general_healthConcern_notApplicable
                                      : findingHealthConcernListParam
                                          .healthConcernUiModel
                                          .hazardType!,
                            ),
                          )
                          : Flexible(
                            child: ProductTypeHealthConcernContent(
                              hazardType:
                                  findingHealthConcernListParam
                                      .healthConcernUiModel
                                      .hazardType!,
                              hazardValue:
                                  findingHealthConcernListParam
                                      .healthConcernUiModel
                                      .hazardType!,
                            ),
                          ),
                    if (findingHealthConcernListParam.isProductCompare &&
                        findingHealthConcernListParam
                                .rightHealthConcernUiModel !=
                            null) ...[
                      DSSpacingWidget.horizontal(
                        spacing: context.dsSpacing.sp500,
                      ),
                      if (findingHealthConcernListParam
                          .rightHealthConcernUiModel!
                          .hazardType
                          .isValidValue)
                        Flexible(
                          child: ProductTypeHealthConcernContent(
                            hazardType:
                                findingHealthConcernListParam
                                        .isRightProductVerified
                                    ? localizations.general_noData
                                    : findingHealthConcernListParam
                                        .rightHealthConcernUiModel!
                                        .hazardType!,
                            hazardValue:
                                findingHealthConcernListParam
                                        .isRightProductVerified
                                    ? localizations
                                        .general_healthConcern_notApplicable
                                    : findingHealthConcernListParam
                                        .rightHealthConcernUiModel!
                                        .hazardType!,
                          ),
                        ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
