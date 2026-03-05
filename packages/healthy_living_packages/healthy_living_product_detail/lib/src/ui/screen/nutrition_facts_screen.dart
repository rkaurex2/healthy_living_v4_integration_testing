import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/widget/nutrition_facts_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NutritionFactsScreen extends StatelessWidget {
  final NutrientFactUIModel nutrientFactUIModel;

  const NutritionFactsScreen({required this.nutrientFactUIModel, super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    final ratingDetail = nutrientFactUIModel.ratingDetailModel;

    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 20),
            child: HeaderWithBadgeAndTitle(
              badgeWidget:
                  ratingDetail != null
                      ? (ratingDetail.isVerified ||
                              ratingDetail.hazardLevel == HazardLevel.verified)
                          ? const HeaderEwgVerifiedBadge()
                          : HeaderRatingScoreBadge(
                            text: ratingDetail.grade,
                            backgroundColor: ratingDetail.hazardLevel
                                .displayColor(context),
                            height: 28,
                            width: 28,
                          )
                      : const SizedBox.shrink(),
              title: nutrientFactUIModel.productName,
              textStyle: DSTextStyleType.primaryCaptionSemibold,
              leadIcon: DSIcons.icArrowLeft,
              onTapLeadIcon: () {
                context.pop();
              },
              maxLine: 2,
            ),
          ),
          DSDivider(),
          Expanded(
            child: Container(
              color: context.dsColors.surfaceNeutralBackgroundLight,

              child: Column(
                children: [
                  Expanded(
                    child: NutritionFactsContentScreen(
                      nutrientFactUIModel: nutrientFactUIModel,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
