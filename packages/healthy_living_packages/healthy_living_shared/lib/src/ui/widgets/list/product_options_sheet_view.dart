import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/product_option_item_widget.dart';
import 'package:healthy_living_shared/src/ui/widgets/popups/upgrade_now_popup_widget.dart';

class ProductOptionsSheetView extends StatefulWidget {
  final Function(ProductSelectionOptionsItem, BuildContext) onTap;
  final VoidCallback onTapClose;
  final ProductSelectionOptionsItem selectedProductOptionsItem;
  final bool isPremiumUser;
  final bool isAuthenticated;
  final String searchQuery;

  const ProductOptionsSheetView({
    required this.onTap,
    required this.onTapClose,
    required this.selectedProductOptionsItem,
    required this.isPremiumUser,
    required this.isAuthenticated,
    required this.searchQuery,
    super.key,
  });

  @override
  State<ProductOptionsSheetView> createState() =>
      _ProductOptionsSheetViewState();
}

class _ProductOptionsSheetViewState extends State<ProductOptionsSheetView> {
  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          HeaderWithTitle(
            leadIcon: DSIcons.icClose,
            title: healthyLivingSharedLocalizations.general_productOptions,
            onTapLeadIcon: () {
              context.pop();
              widget.onTapClose.call();
            },
          ),

          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.isAuthenticated) ...{
                // KEY: TestKeys.addToListFromMenu
                ProductOptionItemWidget(
                  key: const Key('add_to_list_from_menu'),
                  title: healthyLivingSharedLocalizations.general_addToList,
                  isSelected:
                      widget.selectedProductOptionsItem.name ==
                      ProductSelectionOptionsItem.addToList.name,
                  icon: DSIcons.icListMultipleSelect,
                  onTap: (productOptionItemWidgetContext) {
                    widget.onTap(
                      ProductSelectionOptionsItem.addToList,
                      productOptionItemWidgetContext,
                    );
                  },
                ),
              } else ...{
                // KEY: TestKeys.addToListFromMenu
                ProductOptionItemWidget(
                  key: const Key('add_to_list_from_menu'),
                  title: healthyLivingSharedLocalizations.general_addToList,
                  isSelected:
                      widget.selectedProductOptionsItem.name ==
                      ProductSelectionOptionsItem.addToList.name,
                  icon: DSIcons.icListMultipleSelect,
                  isItemDisable: !widget.isAuthenticated,
                  onTap: (productOptionItemWidgetContext) {
                    widget.onTap(
                      ProductSelectionOptionsItem.addToList,
                      productOptionItemWidgetContext,
                    );
                  },
                ),
              },
              DSDivider(),
              if (widget.isPremiumUser) ...{
                // KEY: TestKeys.compareFromMenu
                ProductOptionItemWidget(
                  key: const Key('compare_from_menu'),
                  title:
                      healthyLivingSharedLocalizations.general_compareProducts,
                  isSelected:
                      widget.selectedProductOptionsItem.name ==
                      ProductSelectionOptionsItem.compareProducts.name,
                  icon: DSIcons.icCompareDisable,
                  isItemDisable: false,
                  onTap: (productOptionItemWidgetContext) {
                    widget.onTap(
                      ProductSelectionOptionsItem.compareProducts,
                      productOptionItemWidgetContext,
                    );
                  },
                ),
              } else ...{
                // KEY: TestKeys.compareFromMenu
                ProductOptionItemWidget(
                  key: const Key('compare_from_menu'),
                  title:
                      healthyLivingSharedLocalizations.general_compareProducts,
                  isSelected:
                      widget.selectedProductOptionsItem.name ==
                      ProductSelectionOptionsItem.compareProducts.name,
                  icon: DSIcons.icCompareDisable,
                  isItemDisable: !widget.isPremiumUser,
                  isItemPremiumFeatured: !widget.isPremiumUser,
                  onTap: (productOptionItemWidgetContext) {
                    widget.onTap(
                      ProductSelectionOptionsItem.compareProducts,
                      productOptionItemWidgetContext,
                    );
                  },
                ),
              },
            ],
          ),
        ],
      ),
    );
  }
}
