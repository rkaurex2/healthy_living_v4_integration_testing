import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductInfoCard extends StatelessWidget {
  final String? brandName;
  final String? productName;
  final String? productSize;
  final String? dataLevel;
  final List<String>? categories;
  final RatingDetailModel? ratingDetail;
  final String? productImageUrl;
  final ProductCategory productCategory;
  final VoidCallback? onTap;

  const ProductInfoCard({
    required this.productCategory,
    super.key,
    this.brandName,
    this.productName,
    this.productSize,
    this.dataLevel,
    this.categories,
    this.ratingDetail,
    this.productImageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // KEY: TestKeys.productCard
    return GestureDetector(
      key: const Key('product_card'),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralBackgroundWhite,
          borderRadius: BorderRadius.circular(context.dsRadius.rd200),
        ),
        child: Stack(
          children: [
            // Main content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

                // Product Image
                _buildProductImage(context),

                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

                // Product Details
                _buildProductDetails(context),

                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

                // Categories
                if (categories != null && categories!.isNotEmpty)
                  _buildCategories(context),

                // Data Availability
                if (dataLevel.isValidValue) ...{
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                  _buildDataAvailability(context),
                },
              ],
            ),

            // Score Badge (positioned absolutely)
            // KEY: TestKeys.hazardBadge
            if (ratingDetail != null)
              Positioned(
                key: const Key('hazard_badge'),
                top: context.dsSpacing.sp0,
                left: context.dsSpacing.sp0,
                child: Padding(
                  padding: EdgeInsets.all(context.dsSpacing.sp200),
                  child:
                      (ratingDetail!.isVerified ||
                              ratingDetail!.hazardLevel == HazardLevel.verified)
                          ? EwgVerifiedBadge(
                            onTap: () {
                              context.pushNamed(AppRoutes.aboutScores.name);
                            },
                          )
                          : RatingScoreBadge(
                            text: ratingDetail!.grade,
                            backgroundColor: ratingDetail!.hazardLevel
                                .displayColor(context),
                            onTap: () {
                              context.pushNamed(AppRoutes.aboutScores.name);
                            },
                          ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductImage(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.dsRadius.rd500),
        ),
        child:
            productImageUrl == null
                ? Icon(
                  Icons.image,
                  size: 48,
                  color: context.dsColors.iconNeutralFade,
                )
                : ClipRRect(
                  borderRadius: BorderRadius.circular(
                    context.dsRadius.rd500,
                  ), // match container radius
                  child: DSImage.network(
                    productImageUrl!,
                    width: 200,
                    fit: BoxFit.contain,
                    errorWidget: PlaceholderImage(
                      containerSize: 200,
                      imageSize: 60,
                    ),
                  ),
                ),
      ),
    );
  }

  Widget _buildProductDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Brand Name
        DSText(
          text: brandName,
          textStyle: DSTextStyleType.primaryBodySMedium,
          textColor: context.dsColors.textNeutralSecondary,
        ),

        // Product Name
        ...[
          if (brandName?.isNotEmpty ?? false)
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
          DSText(
            text: productName,
            textStyle: DSTextStyleType.primaryHeadingS,
            textColor: context.dsColors.textPrimaryDefault,
          ),
        ],

        // Product Size
        ...[
          if (productName != null && productName!.isNotEmpty)
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
          DSText(
            text: productSize,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: context.dsColors.textNeutralSecondary,
          ),
        ],
      ],
    );
  }

  Widget _buildCategories(BuildContext context) {
    return Wrap(
      spacing: context.dsSpacing.sp200,
      runSpacing: context.dsSpacing.sp200,
      children:
          categories!
              .map((category) => _buildCategoryTag(context, category))
              .toList(),
    );
  }

  Widget _buildCategoryTag(BuildContext context, String category) {
    return Container(
      padding: EdgeInsets.all(context.dsSpacing.sp100),
      decoration: BoxDecoration(
        color: context.dsColors.surfaceAdditionalNude0,
        borderRadius: BorderRadius.circular(context.dsRadius.rd200),
      ),
      child: DSText(
        text: category.toTitleCase(),
        textStyle: DSTextStyleType.primaryCaptionSemibold,
        textColor: context.dsColors.textNeutralSecondary,
      ),
    );
  }

  Widget _buildDataAvailability(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    final ingredientDisclosureColor = dataLevel?.getIngredientDisclosureColor(
      dsColors: context.dsColors,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Brand Name
        DSText(
          text:
              productCategory == ProductCategory.personalCare
                  ? localization.productDetail_information_dataAvailability
                  : localization.productDetail_information_ingredientDisclosure,
          textStyle: DSTextStyleType.primaryBodySRegular,
          textColor: context.dsColors.textNeutralSecondary,
        ),
        if (productCategory == ProductCategory.cleaner &&
            ingredientDisclosureColor != null) ...{
          Container(
            margin: EdgeInsets.only(
              left: context.dsSpacing.sp200,
              right: context.dsSpacing.sp200,
            ),
            width: context.dsSpacing.sp200,
            height: context.dsSpacing.sp200,
            decoration: BoxDecoration(
              color: ingredientDisclosureColor,
              shape: BoxShape.circle,
            ),
          ),
        },
        DSText(
          text: dataLevel?.toTitleCase(),
          textStyle: DSTextStyleType.primaryBodySRegular,
          textColor:
              productCategory == ProductCategory.cleaner
                  ? context.dsColors.textNeutralSecondary
                  : context.dsColors.textNeutralOnWhite,
        ),
      ],
    );
  }
}
