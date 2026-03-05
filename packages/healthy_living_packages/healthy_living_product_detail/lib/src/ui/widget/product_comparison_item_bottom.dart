import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_comparison_ui_model.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_buy_add_to_lists_buttons.dart';
import 'package:healthy_living_product_detail/src/utils/product_details_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductComparisonItemBottom extends StatelessWidget {
  final ProductComparisonUiModel productComparisonUiModel;
  final bool preferenceBadgePadding;
  const ProductComparisonItemBottom({
    required this.productComparisonUiModel,
    required this.preferenceBadgePadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        if (ProductDetailsUtils.hasAnyPreference(
          productComparisonUiModel.ingredientPreferenceIndicatorModel,
        )) ...{
          IngredientPreferenceBadge(
            preference:
                HealthyLivingSharedUtils.getProductIngredientPreference(
                  ingredientPreferenceIndicator:
                      productComparisonUiModel
                          .ingredientPreferenceIndicatorModel,
                  isPremiumUser: true,
                )!,
            size: IngredientPreferenceBadgeSize.small,
          ),
        } else if (preferenceBadgePadding) ...{
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
        },
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        ProductComparisonBuyAddToListsButtons(
          productComparisonUiModel: productComparisonUiModel,
        ),
      ],
    );
  }
}
