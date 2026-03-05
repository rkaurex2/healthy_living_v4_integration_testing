import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/src/ui/models/top_finding_detail_param_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class TopFindingDetails extends StatelessWidget {
  final TopFindingDetailParamModel topFindingDetailParamModel;

  const TopFindingDetails({
    required this.topFindingDetailParamModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String score = topFindingDetailParamModel.score;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: context.dsColors.surfaceNeutralContainerWhite,
        title: Row(
          children: [
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                context.pop();
              },
              child: Container(
                height: context.dsSizes.sz600,
                width: context.dsSizes.sz600,
                alignment: Alignment.centerLeft,
                child: DSImage.asset(
                  DSIcons.icArrowLeft,
                  fit: BoxFit.none,
                  height: context.dsSizes.sz500,
                  width: context.dsSizes.sz500,
                ),
              ),
            ),
            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp100),
            ScoreBadgeLabelWithData(
              score: score,
              scoreBackgroundColor:
                  score.ratingHazardLevel?.displayColor(context) ??
                  Colors.transparent,
            ),
            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
            Expanded(
              child: DSText(
                text: topFindingDetailParamModel.title,
                textStyle: DSTextStyleType.primaryButtonSMedium,
                textColor: context.dsColors.textNeutralOnWhite,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          DSDivider(),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.dsSpacing.sp400,
              vertical: context.dsSpacing.sp300,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: context.dsSpacing.sp200,
                  height: context.dsSpacing.sp200,
                  margin: EdgeInsets.symmetric(
                    vertical: context.dsSpacing.sp100,
                  ),
                  decoration: BoxDecoration(
                    color: topFindingDetailParamModel.findingsTypeColor,
                    shape: BoxShape.circle,
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                Expanded(
                  child: DSText(
                    text: topFindingDetailParamModel.summaryText,
                    textStyle: DSTextStyleType.primaryButtonSRegular,
                    textColor: context.dsColors.textNeutralSecondary,
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              ],
            ),
          ),
          DSDivider(),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: context.dsSpacing.sp400,
                      horizontal: context.dsSpacing.sp500,
                    ),
                    child: DSText(
                      text: topFindingDetailParamModel.readMoreText,
                      textStyle: DSTextStyleType.primaryButtonSRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                  ),
                  DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
