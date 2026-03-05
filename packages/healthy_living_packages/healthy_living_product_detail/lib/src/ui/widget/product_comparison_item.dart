import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_comparison_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductComparisonItem extends StatelessWidget {
  final ProductComparisonUiModel productComparisonUiModel;

  const ProductComparisonItem({
    required this.productComparisonUiModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hazardLevel = productComparisonUiModel.productScore.ratingHazardLevel;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onTap: () {
                navigateToProductDetail(
                  productId: int.parse(productComparisonUiModel.productId),
                  context: context,
                  productCategory: productComparisonUiModel.productCategory,
                );
              },
              child: SizedBox(
                width: 156,
                child: DSImage.network(
                  productComparisonUiModel.productImage,
                  height: 156,
                  fit: BoxFit.contain,
                  errorWidget: PlaceholderImage(
                    containerSize: 156,
                    imageSize: 100,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child:
                  productComparisonUiModel.isVerified
                      ? const HeaderEwgVerifiedBadge()
                      : productComparisonUiModel.productScore.isValidValue &&
                          hazardLevel != null
                      ? HeaderRatingScoreBadge(
                        text:
                            productComparisonUiModel.productCategory ==
                                    ProductCategory.food
                                ? HealthyLivingSharedUtils.formatFoodScoreDecimal(
                                  double.tryParse(
                                    productComparisonUiModel.productScore,
                                  ),
                                )
                                : productComparisonUiModel.productScore,
                        backgroundColor: hazardLevel.displayColor(context),
                        height: context.dsSizes.sz700,
                        width: context.dsSizes.sz700,
                        textStyle: DSTextStyleType.primaryHeadingS,
                        border: Border.all(
                          color: context.dsColors.surfaceNeutralContainerWhite,
                          width: context.dsSizes.sz100,
                        ),
                      )
                      : SizedBox.shrink(),
            ),
          ],
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

        DSText(
          text: productComparisonUiModel.productBrand,
          textStyle: DSTextStyleType.primaryBodySRegular,
          textColor: context.dsColors.textNeutralSecondary,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
        DSText(
          text: productComparisonUiModel.productName,
          textStyle: DSTextStyleType.primaryBodyMMedium,
          textColor: context.dsColors.textPrimaryDefault,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        if (productComparisonUiModel.productSize.isValidValue) ...[
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          DSText(
            text: productComparisonUiModel.productSize,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: context.dsColors.textNeutralSecondary,
            lineHeight: 1.5,
          ),
        ],
      ],
    );
  }

  void navigateToProductDetail({
    required int productId,
    required ProductCategory productCategory,
    required BuildContext context,
  }) {
    if (productId.toString().isValidValue) {
      context.pushNamed(
        AppRoutes.findProductDetail.name,
        extra: ProductDetailParamModel(
          productCategory: productCategory,
          productId: productId,
        ),
      );
    }
  }
}
