import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_detail_buy_now_bottom_sheet_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductDetailBuyNowBottomSheet extends StatelessWidget {
  final List<RetailerModel> retailers;

  const ProductDetailBuyNowBottomSheet({required this.retailers, super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HeaderWithTitle(
            leadIcon: DSIcons.icClose,
            title: localization.productDetail_bottomSheetBuyNow_buyNow,
            onTapLeadIcon: () => context.pop(),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: context.dsSpacing.sp400,
              vertical: 0,
            ),
            itemCount: retailers.length,
            itemBuilder:
                (context, i) =>
                    ProductDetailBuyNowBottomSheetItem(item: retailers[i]),
          ),
        ],
      ),
    );
  }
}
