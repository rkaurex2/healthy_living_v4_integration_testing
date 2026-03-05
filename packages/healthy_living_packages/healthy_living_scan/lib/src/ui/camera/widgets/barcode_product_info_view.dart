import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BarcodeProductInfoView extends StatelessWidget {
  final GeneralProductListItemUIModel product;
  final VoidCallback onClose;
  final VoidCallback onShare;
  final VoidCallback onTap;

  const BarcodeProductInfoView({
    required this.product,
    required this.onClose,
    required this.onShare,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBloc>();

    final ingredientPreference =
        HealthyLivingSharedUtils.getProductIngredientPreference(
          ingredientPreferenceIndicator: product.ingredientPreferenceIndicator,
          isPremiumUser: appBloc.isPremiumUser,
        );

    return Container(
      padding: EdgeInsets.only(
        left: context.dsSpacing.sp400,
        right: context.dsSpacing.sp400,
        bottom: context.dsSpacing.sp400,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.dsSpacing.sp100,
              vertical: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onClose,
                  child: DSImage.asset(
                    DSIcons.icClose,
                    color: context.dsColors.iconPrimary,
                    width: context.dsSizes.sz500,
                    height: context.dsSizes.sz500,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: onShare,
                  child: DSImage.asset(
                    DSIcons.icShare,
                    color: context.dsColors.iconPrimary,
                    width: context.dsSizes.sz500,
                    height: context.dsSizes.sz500,
                  ),
                ),
              ],
            ),
          ),
          ProductRowItem(
            imageUrl: product.imageUrl,
            brand: product.brandName,
            title: product.productName,
            isEWGVerified: product.isEWGVerified,
            score: product.score,
            ingredientPreference: ingredientPreference,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
