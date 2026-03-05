import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_list_for_category_widget.dart';
import 'package:healthy_living_product_detail/src/ui/widget/title_row_for_category_widget.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_section_header.dart';

class ProductCompareIngredientsSection extends StatelessWidget {
  const ProductCompareIngredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        border: Border.all(
          color: context.dsColors.strokeNeutralDefault,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(context.dsSizes.sz100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          ProductComparisonSectionHeader(
            title: localizations.productDetail_ingredients_ingredientsTitle,
          ),
          TitleRowForCategoryWidget(),
          const DSDivider(),
          IngredientListForCategoryWidget(),
        ],
      ),
    );
  }
}
