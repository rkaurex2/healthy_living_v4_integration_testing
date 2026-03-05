import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart';
import 'package:healthy_living_product_detail/src/ui/models/health_concern_top_findings_ui_item_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class TopFindingsContentItemWidget extends StatelessWidget {
  final HealthConcernTopFindingsUIItemModel topFindingsItemModel;
  final String score;
  final String title;

  const TopFindingsContentItemWidget({
    required this.topFindingsItemModel,
    required this.score,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp300),
          child: InkWell(
            onTap: () {
              context.pushNamed(
                AppRoutes.topFindingDetail.name,
                extra: TopFindingDetailParamModel(
                  title: title,
                  score: score,
                  readMoreText: topFindingsItemModel.readMoreText,
                  summaryText: topFindingsItemModel.summaryText,
                  findingsTypeColor: _findingsTypeColor(
                    type: topFindingsItemModel.type,
                    location: topFindingsItemModel.location,
                    context: context,
                  ),
                ),
              );
            },
            child: Row(
              children: [
                Expanded(
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
                          color: _findingsTypeColor(
                            type: topFindingsItemModel.type,
                            location: topFindingsItemModel.location,
                            context: context,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      DSSpacingWidget.horizontal(
                        spacing: context.dsSpacing.sp200,
                      ),
                      Expanded(
                        child: DSText(
                          text: topFindingsItemModel.summaryText,
                          textStyle: DSTextStyleType.primaryButtonSRegular,
                          textColor: context.dsColors.textNeutralSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                DSImage.asset(
                  DSIcons.icChevronRight,
                  height: context.dsSpacing.sp400,
                  width: context.dsSpacing.sp400,
                ),
              ],
            ),
          ),
        ),
        DSDivider(height: 2),
      ],
    );
  }

  Color _findingsTypeColor({
    required String location,
    required String type,
    required BuildContext context,
  }) {
    if (location == StringConstants.negative) {
      return context.dsColors.surfaceScoresWorse;
    } else if (location == StringConstants.positive) {
      return context.dsColors.surfaceScoresGood;
    } else if (location == StringConstants.otherInformation) {
      if (type == StringConstants.negative) {
        return context.dsColors.surfaceScoresWorse;
      } else if (type == StringConstants.positive) {
        return context.dsColors.surfaceScoresGood;
      }
      return context.dsColors.surfaceNeutralContainer6;
    }
    return context.dsColors.surfaceScoresGood;
  }
}
