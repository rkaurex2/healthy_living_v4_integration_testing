import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';

class NutritionFactsTitleSection extends StatelessWidget {
  const NutritionFactsTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.dsSpacing.sp300,
        horizontal: context.dsSpacing.sp400,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DSImage.asset(
            DSIcons.icHealthNotes,
            height: context.dsSizes.sz400,
            width: context.dsSizes.sz400,
          ),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
          Expanded(
            child: DSText(
              text: localizations.productDetail_labelInfo_nutritionFacts,
              textStyle: DSTextStyleType.primaryBodySMedium,
              textColor: context.dsColors.textPrimaryDefault,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          DSImage.asset(
            DSIcons.icChevronRight,
            height: context.dsSizes.sz200,
            width: context.dsSizes.sz200,
          ),
        ],
      ),
    );
  }
}
