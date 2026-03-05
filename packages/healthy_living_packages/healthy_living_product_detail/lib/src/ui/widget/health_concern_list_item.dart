import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/models/finding_health_concern_list_param.dart';
import 'package:healthy_living_product_detail/src/ui/models/health_concern_list_item_params.dart';
import 'package:healthy_living_product_detail/src/ui/widget/findings_health_concerns_food_list_item.dart';
import 'package:healthy_living_product_detail/src/ui/widget/findings_health_concerns_list_item.dart';
import 'package:healthy_living_product_detail/src/ui/widget/health_concerns_compared_widget.dart';

class HealthConcernListItem extends StatelessWidget {
  final HealthConcernListItemParam param;

  const HealthConcernListItem({required this.param, super.key});

  @override
  Widget build(BuildContext context) {
    if (param.isHealthConcernsFoodType) {
      if (param.isProductCompare) {
        return HealthConcernsComparedWidget(
          isLeftProductVerified: param.isLeftProductVerified ?? false,
          isRightProductVerified: param.isRightProductVerified ?? false,
          leftHealthConcernUIModel: param.leftHealthConcernUIModel,
          rightHealthConcernUIModel: param.rightHealthConcernUIModel,
          isHealthConcernsFoodType: param.isHealthConcernsFoodType,
        );
      } else {
        return FindingsHealthConcernsFoodListItem(
          findingHealthConcernListParam: FindingHealthConcernListParam(
            healthConcernUiModel: param.leftHealthConcernUIModel,
            isProductCompare: param.isProductCompare,
          ),
        );
      }
    } else {
      if (param.isProductCompare) {
        return HealthConcernsComparedWidget(
          isLeftProductVerified: param.isLeftProductVerified ?? false,
          isRightProductVerified: param.isRightProductVerified ?? false,
          leftHealthConcernUIModel: param.leftHealthConcernUIModel,
          rightHealthConcernUIModel: param.rightHealthConcernUIModel,
          isHealthConcernsFoodType: param.isHealthConcernsFoodType,
        );
      } else {
        return FindingsHealthConcernsListItem(
          findingHealthConcernListParam: FindingHealthConcernListParam(
            healthConcernUiModel: param.leftHealthConcernUIModel,
          ),
        );
      }
    }
  }
}
