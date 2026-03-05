import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/models/health_concern_top_findings_ui_model.dart';
import 'package:healthy_living_product_detail/src/ui/widget/health_concern_top_findings_content_item_widget.dart';

class TopFindingsContentWidget extends StatelessWidget {
  final HealthConcernTopFindingsUIModel healthConcernTopFindingsUIModel;
  final String score;
  final String title;
  const TopFindingsContentWidget({
    required this.healthConcernTopFindingsUIModel,
    required this.score,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            DSImage.asset(
              healthConcernTopFindingsUIModel.iconPath,
              height: context.dsSizes.sz500,
              width: context.dsSizes.sz500,
            ),
            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),

            DSText(
              text: healthConcernTopFindingsUIModel.title,
              textStyle: DSTextStyleType.primaryButtonSMedium,
              textColor: context.dsColors.textNeutralOnWhite,
            ),
          ],
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(0),
          itemCount: healthConcernTopFindingsUIModel.topFindingList.length,
          itemBuilder: (context, index) {
            return TopFindingsContentItemWidget(
              score: score,
              title: title,
              topFindingsItemModel:
                  healthConcernTopFindingsUIModel.topFindingList[index],
            );
          },
        ),
      ],
    );
  }
}
