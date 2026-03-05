import 'dart:math' as math;

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/model/ingredient_list_section_param.dart';
import 'package:healthy_living_product_detail/src/ui/models/ingredient_list_item_params.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_list_item.dart';

class IngredientListSection extends StatefulWidget {
  final IngredientListSectionParam ingredientListSectionParam;

  const IngredientListSection({
    required this.ingredientListSectionParam,
    super.key,
  });

  @override
  State<IngredientListSection> createState() => _IngredientListSectionState();
}

class _IngredientListSectionState extends State<IngredientListSection> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;

    final maxLength = math.max(
      widget.ingredientListSectionParam.leftProduct.length,
      widget.ingredientListSectionParam.rightProduct.length,
    );
    final isExpandable = maxLength > 5; // show button if either side > 5
    final visibleCount = _expanded ? maxLength : math.min(5, maxLength);
    return Container(
      color: context.dsColors.surfaceNeutralContainerWhite,
      child: Column(
        children: [
          Column(
            children: [
              ...List.generate(visibleCount, (index) {
                final leftItem =
                    index < widget.ingredientListSectionParam.leftProduct.length
                        ? widget.ingredientListSectionParam.leftProduct[index]
                        : null;
                final rightItem =
                    index <
                            widget
                                .ingredientListSectionParam
                                .rightProduct
                                .length
                        ? widget.ingredientListSectionParam.rightProduct[index]
                        : null;
                final isLast = index == visibleCount - 1;

                return IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: IngredientListItem(
                          ingredientListItemParam: IngredientListItemParams(
                            item: leftItem,
                            index: index,
                            isLast: isLast,
                            onTap: widget.ingredientListSectionParam.onTap,
                            isVerifiedProduct:
                                widget
                                    .ingredientListSectionParam
                                    .isFirstVerifiedProduct ??
                                false,
                          ),
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        width: 0,
                        color: context.dsColors.strokeNeutralDefault,
                      ),
                      Expanded(
                        child: IngredientListItem(
                          ingredientListItemParam: IngredientListItemParams(
                            item: rightItem,
                            index: index,
                            isLast: isLast,
                            onTap: widget.ingredientListSectionParam.onTap,
                            isVerifiedProduct:
                                widget
                                    .ingredientListSectionParam
                                    .isSecondVerifiedProduct ??
                                false,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),

          if (isExpandable)
            Column(
              children: [
                DSDivider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dsSpacing.sp400,
                    vertical: context.dsSpacing.sp400,
                  ),
                  child: DSButtonPrimary(
                    size: DSButtonSize.small,
                    text:
                        _expanded
                            ? localization.productDetail_ingredientList_seeLess
                            : localization.productDetail_ingredientList_seeAll,
                    trailingIconPath:
                        _expanded ? DSIcons.icArrowUp : DSIcons.icArrowDown,
                    onPressed: () => setState(() => _expanded = !_expanded),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
