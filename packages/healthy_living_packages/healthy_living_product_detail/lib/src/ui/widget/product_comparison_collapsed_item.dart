import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_comparison_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductComparisonCollapsedItem extends StatelessWidget {
  final ProductComparisonUiModel productComparisonUiModel;

  const ProductComparisonCollapsedItem({
    required this.productComparisonUiModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hazardLevel = productComparisonUiModel.productScore.ratingHazardLevel;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            DSImage.network(
              productComparisonUiModel.productImage,
              height: 60,
              width: 60,
              fit: BoxFit.contain,
              errorWidget: PlaceholderImage(containerSize: 60, imageSize: 40),
            ),
            Positioned(
              top: 0,
              left: 0,
              child:
                  productComparisonUiModel.isVerified
                      ? const HeaderEwgVerifiedBadge()
                      : HeaderRatingScoreBadge(
                        text:
                            productComparisonUiModel.productCategory ==
                                    ProductCategory.food
                                ? HealthyLivingSharedUtils.formatFoodScoreDecimal(
                                  double.tryParse(
                                    productComparisonUiModel.productScore,
                                  ),
                                )
                                : productComparisonUiModel.productScore,
                        backgroundColor: hazardLevel!.displayColor(context),
                        height: context.dsSizes.sz500,
                        width: context.dsSizes.sz500,
                        textStyle: DSTextStyleType.primarySubHeadingS,
                      ),
            ),
          ],
        ),

        DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
        Expanded(
          child: DSText(
            text: productComparisonUiModel.productName,
            textStyle: DSTextStyleType.primaryCaptionSemibold,
            textColor: context.dsColors.textPrimaryDefault,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
