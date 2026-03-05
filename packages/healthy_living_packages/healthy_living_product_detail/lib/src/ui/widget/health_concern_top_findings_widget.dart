import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_page_details_model.dart';
import 'package:healthy_living_product_detail/src/ui/model/top_findings_section.dart';
import 'package:healthy_living_product_detail/src/ui/models/health_concern_top_findings_ui_item_model.dart';
import 'package:healthy_living_product_detail/src/ui/models/health_concern_top_findings_ui_model.dart';
import 'package:healthy_living_product_detail/src/ui/widget/health_concern_top_findings_content_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HealthConcernTopFindingsWidget extends StatelessWidget {
  final String score;
  final String title;
  final List<FoodDetailPageDetailsModel>? findingsFoodList;

  const HealthConcernTopFindingsWidget({
    required this.title,
    required this.score,
    required this.findingsFoodList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          text: localization.productDetail_healthConcern_ewgTopFindings,
          textStyle: DSTextStyleType.primaryHeadingXs,
          textColor: context.dsColors.textNeutralOnWhite,
        ),
        DSSpacingWidget.vertical(spacing: 18),
        for (final foodFindings in _getTopFindings(
          findingsList: findingsFoodList,
          localizations: localization,
        )) ...[
          TopFindingsContentWidget(
            healthConcernTopFindingsUIModel: foodFindings,
            score: score,
            title: title,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        ],
      ],
    );
  }

  List<HealthConcernTopFindingsUIModel> _getTopFindings({
    required List<FoodDetailPageDetailsModel>? findingsList,
    required HealthyLivingProductDetailLocalizations localizations,
  }) {
    final positives = <HealthConcernTopFindingsUIItemModel>[];
    final negatives = <HealthConcernTopFindingsUIItemModel>[];
    final others = <HealthConcernTopFindingsUIItemModel>[];

    for (final list in findingsList ?? const []) {
      final isTopFindings = (list.location ?? '').trim().toLowerCase();

      final rating = (list.rating ?? '').toLowerCase();
      if (isTopFindings == StringConstants.topFindingsLocation) {
        if (rating == TopFindingsSection.positive.name) {
          positives.add(
            HealthConcernTopFindingsUIItemModel(
              summaryText: list.summaryText ?? "",
              readMoreText: list.readMoreText ?? "",
              location: StringConstants.positive,
              type: StringConstants.positive,
            ),
          );
        } else if (rating == StringConstants.negative) {
          negatives.add(
            HealthConcernTopFindingsUIItemModel(
              summaryText: list.summaryText ?? "",
              readMoreText: list.readMoreText ?? "",
              type: StringConstants.negative,
              location: StringConstants.negative,
            ),
          );
        }
      } else if (isTopFindings == StringConstants.otherInformation) {
        others.add(
          HealthConcernTopFindingsUIItemModel(
            summaryText: list.summaryText ?? "",
            readMoreText: list.readMoreText ?? "",
            location: StringConstants.otherInformation,
            type: rating,
          ),
        );
      }
    }

    final sections = [
      if (negatives.isNotEmpty)
        HealthConcernTopFindingsUIModel(
          title: localizations.productDetail_healthConcern_negatives,
          iconPath: DSIcons.icNegatives,
          topFindingList: negatives,
        ),
      if (positives.isNotEmpty)
        HealthConcernTopFindingsUIModel(
          title: localizations.productDetail_healthConcern_positives,
          iconPath: DSIcons.icPositives,
          topFindingList: positives,
        ),
      if (others.isNotEmpty)
        HealthConcernTopFindingsUIModel(
          title: localizations.productDetail_healthConcern_otherInfo,
          iconPath: DSIcons.icOtherInformation,
          topFindingList: others,
        ),
    ];

    return sections;
  }
}
