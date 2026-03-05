import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_detail_tab.dart';
import 'package:healthy_living_product_detail/src/utils/product_details_utils.dart';

class ProductDetailTabBar extends StatelessWidget {
  const ProductDetailTabBar({
    required this.selectedProductDetailTab,
    this.onTap,
    this.isEwgVerified = false,
    super.key,
  });

  final ProductDetailTab selectedProductDetailTab;
  final Function(ProductDetailTab)? onTap;
  final bool isEwgVerified;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;

    final tabBarData = ProductDetailsUtils().getTabsData(
      localization: localization,
      productCategory: context.read<ProductDetailBloc>().productCategory,
      isEwgVerified: isEwgVerified,
    );

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(tabBarData.length, (index) {
          final tab = tabBarData[index];
          final isSelectedTab = selectedProductDetailTab == tab.tabType;

          return Padding(
            padding: EdgeInsets.only(
              right: index < tabBarData.length - 1
                  ? context.dsSpacing.sp400
                  : 0,
            ),
            child: GestureDetector(
              // KEY: TestKeys.findingsTab / ingredientsTabPD / labelInfoTab
              key: Key('${tab.tabType.name}_tab'),
              onTap: () => onTap?.call(tab.tabType),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: context.dsSpacing.sp200,
                  horizontal: context.dsSpacing.sp300,
                ),
                decoration: BoxDecoration(
                  color: isSelectedTab
                      ? context.dsColors.surfacePrimaryDefault
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DSText(
                  text: tab.name,
                  textStyle: isSelectedTab
                      ? DSTextStyleType.primaryButtonSMedium
                      : DSTextStyleType.primaryButtonSRegular,
                  textColor: isSelectedTab
                      ? context.dsColors.textOnSurfaceDefault
                      : context.dsColors.textNeutralOnWhite,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
