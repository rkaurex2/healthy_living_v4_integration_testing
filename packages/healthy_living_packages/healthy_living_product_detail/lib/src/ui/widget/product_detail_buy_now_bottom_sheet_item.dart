import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductDetailBuyNowBottomSheetItem extends StatelessWidget {
  final RetailerModel item;

  const ProductDetailBuyNowBottomSheetItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalization =
        HealthyLivingSharedLocalizations.of(context)!;

    return Container(
      height: context.dsSizes.sz800,
      padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
      child: GestureDetector(
        onTap: () {
          HealthyLivingSharedUtils.urlLaunch(
            localizations: healthyLivingSharedLocalization,
            url: item.url,
            errorCallback: (value) {
              DSToast.show(context: context, title: value);
            },
          );
          context.pop();
        },
        child: Row(
          children: [
            if (_businessLogo().isValidValue) ...[
              DSImage.asset(
                _businessLogo()!,
                width: context.dsSizes.sz500,
                height: context.dsSizes.sz500,
              ),
              DSSpacingWidget.horizontal(spacing: DSSpacing.sp300),
            ],
            Expanded(
              child: DSText(
                text: item.name?.toSmartTitlePrepositionCase(),
                textStyle: DSTextStyleType.primaryBodyMMedium,
                textColor: context.dsColors.textNeutralOnWhite,
              ),
            ),
            DSImage.asset(
              DSIcons.icArrowRight,
              height: context.dsSizes.sz500,
              width: context.dsSizes.sz500,
            ),
          ],
        ),
      ),
    );
  }

  String? _businessLogo() {
    String? brandType = item.type?.toLowerCase();
    if (!brandType.isValidValue ||
        brandType == StringConstants.brandLine ||
        brandType == StringConstants.business) {
      return null;
    }

    if (brandType!.contains(StringConstants.amazon)) {
      return DSIcons.icAmazon;
    } else if (brandType.contains(StringConstants.google)) {
      return DSIcons.icGoogle;
    }

    return null;
  }
}
