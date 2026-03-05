import 'package:design_system/design_system.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_comparison_ui_model.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_detail_buy_now_bottom_sheet.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:flutter/material.dart';

class ProductComparisonBuyAddToListsButtons extends StatelessWidget {
  final ProductComparisonUiModel productComparisonUiModel;

  const ProductComparisonBuyAddToListsButtons({
    required this.productComparisonUiModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;

    return Column(
      children: [
        if (productComparisonUiModel.retailers.isValidList) ...[
          DSButtonPrimary(
            text: localizations.productDetail_bottomSheetBuyNow_buyNow,
            leadingIconPath: DSIcons.icShoppingBuy,
            size: DSButtonSize.small,
            onPressed: () {
              DSBottomSheetWidget.showBottomSheet(
                context: context,
                child: ProductDetailBuyNowBottomSheet(
                  retailers: productComparisonUiModel.retailers,
                ),
              );
            },
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        ],
        DSButtonPrimary(
          text: localizations.productDetail_bottomAction_addToList,
          leadingIconPath: DSIcons.icList,
          type: DSButtonType.outline,
          size: DSButtonSize.small,
          onPressed: () {
            DSBottomSheetWidget.showBottomSheet(
              context: context,
              isDismissible: false,
              useRootNavigator: false,
              isFullScreen: true,
              child: AddToListWidget(
                userListItemsAttributesModel: [
                  UserListItemsAttributesModel(
                    productType: productComparisonUiModel.productCategory.name,
                    productId: int.parse(productComparisonUiModel.productId),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
