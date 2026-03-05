import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show HealthyLivingSharedLocalizations, ProductCategory, StringConstants;
import 'package:healthy_living_shared/src/ui/models/ingredient_item_ui_model.dart';
import 'package:healthy_living_shared/src/ui/widgets/ingredient_row_item.dart';

class IngredientListWidget extends StatefulWidget {
  const IngredientListWidget({
    required this.items,
    required this.onTap,
    required this.productCategory,
    this.isVerifiedProduct = false,
    this.itemPadding,
    this.openFrom = StringConstants.productDetails,
    super.key,
  });

  final List<IngredientItemUIModel> items;
  final bool isVerifiedProduct;
  final EdgeInsets? itemPadding;
  final Function(int) onTap;
  final ProductCategory? productCategory;
  final String? openFrom;

  @override
  State<IngredientListWidget> createState() => _IngredientListWidgetState();
}

class _IngredientListWidgetState extends State<IngredientListWidget> {
  static const int _maxCollapsedItems = 5;

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;

    final bool hasOverflow = widget.items.length > _maxCollapsedItems;
    final List<IngredientItemUIModel> visibleItems =
        !_isExpanded && hasOverflow
            ? widget.items.take(_maxCollapsedItems).toList()
            : widget.items;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int index = 0; index < visibleItems.length; index += 1) ...{
          Column(
            children: [
              IngredientRowItem(
                item: visibleItems[index],
                isVerifiedProduct: widget.isVerifiedProduct,
                padding: widget.itemPadding,
                onTap: () => widget.onTap(index),
                showTrailingIcon:
                    (widget.productCategory != ProductCategory.food) &&
                    !getIsListItemDisabled(index),
                disabled: getIsListItemDisabled(index),
              ),
              DSDivider(),
            ],
          ),
        },
        if (hasOverflow) ...[
          Padding(
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            child: DSButtonPrimary.fill(
              text: _getHasOverFlowText(localizations),
              trailingIconPath:
                  _isExpanded ? DSIcons.icArrowUp : DSIcons.icArrowDown,
              onPressed: () => setState(() => _isExpanded = !_isExpanded),
              size: DSButtonSize.small,
              textStyle: DSTextStyleType.primaryButtonLRegular,
            ),
          ),
        ],
      ],
    );
  }

  String _getHasOverFlowText(
      HealthyLivingSharedLocalizations localizations,
  ) {
    final isFromCompareProducts =
        widget.openFrom == StringConstants.productsCompare;

    if (_isExpanded) {
      if (isFromCompareProducts) {
        return localizations.productDetail_ingredientList_seeLess;
      } else {
        return localizations.productDetail_ingredientList_seeLessIngredients;
      }
    } else {
      if (isFromCompareProducts) {
        return localizations.productDetail_ingredientList_seeAll;
      } else {
        return localizations.productDetail_ingredientList_seeAllIngredients;
      }
    }
  }

  bool getIsListItemDisabled(int index) {
    return widget.items[index].id == null || widget.items[index].id == -1;
  }
}
