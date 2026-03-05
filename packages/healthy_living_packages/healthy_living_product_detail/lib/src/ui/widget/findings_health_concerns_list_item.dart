import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/models/finding_health_concern_list_param.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_type_health_concern_content.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FindingsHealthConcernsListItem extends StatelessWidget {
  final FindingHealthConcernListParam findingHealthConcernListParam;

  const FindingsHealthConcernsListItem({
    required this.findingHealthConcernListParam,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp300),
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
                    findingHealthConcernListParam.isProductCompare
                        ? Expanded(
                          child: ProductTypeHealthConcernContent(
                            hazardType:
                                findingHealthConcernListParam
                                            .isLeftProductVerified ||
                                        findingHealthConcernListParam
                                                .healthConcernUiModel
                                                .hazardType ==
                                            null
                                    ? localizations.general_noData
                                    : findingHealthConcernListParam
                                        .healthConcernUiModel
                                        .hazardType!,
                            hazardValue:
                                findingHealthConcernListParam
                                            .isLeftProductVerified ||
                                        findingHealthConcernListParam
                                                .healthConcernUiModel
                                                .hazardType ==
                                            null
                                    ? localizations
                                        .general_healthConcern_notApplicable
                                    : _hazardValue(localizations),
                          ),
                        )
                        : Expanded(
                          child: ProductTypeHealthConcernContent(
                            hazardType:
                                findingHealthConcernListParam
                                    .healthConcernUiModel
                                    .hazardType!,
                            hazardValue: _hazardValue(localizations),
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
                              .rightHealthConcernUiModel !=
                          null)
                        Expanded(
                          child: ProductTypeHealthConcernContent(
                            hazardType:
                                findingHealthConcernListParam
                                            .isRightProductVerified ||
                                        findingHealthConcernListParam
                                                .rightHealthConcernUiModel!
                                                .hazardType ==
                                            null
                                    ? localizations.general_noData
                                    : findingHealthConcernListParam
                                        .rightHealthConcernUiModel!
                                        .hazardType!,
                            hazardValue:
                                findingHealthConcernListParam
                                            .isRightProductVerified ||
                                        findingHealthConcernListParam
                                                .rightHealthConcernUiModel!
                                                .hazardType ==
                                            null
                                    ? localizations
                                        .general_healthConcern_notApplicable
                                    : _rightHazardValue(localizations),
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

  String _hazardValue(HealthyLivingSharedLocalizations l10n) {
    final type =
        findingHealthConcernListParam.healthConcernUiModel.hazardType?.trim();
    final noData = StringConstants.noData.toLowerCase();

    final isNoData = type == null || type.toLowerCase().contains(noData);
    final title =
        (type?.toSmartTitleCase() ?? StringConstants.noData.toSmartTitleCase());

    return isNoData ? title : '$title ${l10n.general_hazard}';
  }

  String _rightHazardValue(HealthyLivingSharedLocalizations l10n) {
    final type =
        findingHealthConcernListParam.rightHealthConcernUiModel?.hazardType
            ?.trim();
    final noData = StringConstants.noData.toLowerCase();

    final isNoData = type == null || type.toLowerCase().contains(noData);
    final title =
        (type?.toSmartTitleCase() ?? StringConstants.noData.toSmartTitleCase());

    return isNoData ? title : '$title ${l10n.general_hazard}';
  }
}
