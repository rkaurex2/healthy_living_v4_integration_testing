import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_type_health_concern_content.dart';
import 'package:healthy_living_product_detail/src/utils/product_details_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        FindingsHealthConcernUIModel,
        HealthyLivingSharedLocalizations,
        IllustrationIcon;

class HealthConcernsComparedWidget extends StatelessWidget {
  const HealthConcernsComparedWidget({
    required this.leftHealthConcernUIModel,
    required this.isLeftProductVerified,
    required this.isRightProductVerified,
    required this.isHealthConcernsFoodType,
    this.rightHealthConcernUIModel,
    super.key,
  });

  final FindingsHealthConcernUIModel leftHealthConcernUIModel;
  final FindingsHealthConcernUIModel? rightHealthConcernUIModel;
  final bool isLeftProductVerified;
  final bool isRightProductVerified;
  final bool isHealthConcernsFoodType;

  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(context.dsSpacing.sp200),
          color: context.dsColors.surfaceNeutralBackgroundLight,
          child: Row(
            spacing: context.dsSpacing.sp200,
            children: [
              IllustrationIcon(
                iconPath: leftHealthConcernUIModel.iconPath,
                containerSize: context.dsSizes.sz600,
                iconSize: context.dsSizes.sz500,
                iconColor: context.dsColors.surfaceAdditionalNude500,
                containerColor: context.dsColors.surfaceAdditionalNude50,
              ),
              Flexible(
                child: DSText(
                  text: leftHealthConcernUIModel.title,
                  textStyle: DSTextStyleType.primaryBodySMedium,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
              ),
            ],
          ),
        ),
        DSDivider(),
        IntrinsicHeight(
          child: Row(
            children: [
              Flexible(
                child: ProductTypeHealthConcernContent(
                  padding: EdgeInsets.all(context.dsSpacing.sp300),
                  hazardType:
                      isLeftProductVerified ||
                              leftHealthConcernUIModel.hazardType == null
                          ? sharedLocalizations.general_noData
                          : leftHealthConcernUIModel.hazardType!,
                  hazardValue:
                      isLeftProductVerified ||
                              leftHealthConcernUIModel.hazardType == null
                          ? sharedLocalizations
                              .general_healthConcern_notApplicable
                          : ProductDetailsUtils().getHazardValueFromType(
                            sharedLocalizations: sharedLocalizations,
                            type:
                                leftHealthConcernUIModel.hazardType.toString(),
                            isFoodType: isHealthConcernsFoodType,
                          ),
                ),
              ),
              VerticalDivider(
                width: 1,
                thickness: 1,
                color: context.dsColors.strokeNeutralDefault,
              ),
              Flexible(
                child: ProductTypeHealthConcernContent(
                  padding: EdgeInsets.all(context.dsSpacing.sp300),
                  hazardType:
                      isRightProductVerified ||
                              rightHealthConcernUIModel?.hazardType == null
                          ? sharedLocalizations.general_noData
                          : rightHealthConcernUIModel!.hazardType!,
                  hazardValue:
                      isRightProductVerified ||
                              rightHealthConcernUIModel?.hazardType == null
                          ? sharedLocalizations
                              .general_healthConcern_notApplicable
                          : ProductDetailsUtils().getHazardValueFromType(
                            sharedLocalizations: sharedLocalizations,
                            type:
                                rightHealthConcernUIModel?.hazardType
                                    .toString(),
                            isFoodType: isHealthConcernsFoodType,
                          ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
