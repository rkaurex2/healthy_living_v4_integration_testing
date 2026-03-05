import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/src/ui/models/ingredient_list_item_params.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientListItem extends StatelessWidget {
  const IngredientListItem({required this.ingredientListItemParam, super.key});

  final IngredientListItemParams ingredientListItemParam;

  @override
  Widget build(BuildContext context) {
    final hasText =
        ingredientListItemParam.item != null &&
        ingredientListItemParam.item!.name.trim().isNotEmpty;

    return GestureDetector(
      onTap: () {
        context.pushNamed(
          AppRoutes.ingredientDetails.name,
          queryParameters:
              IngredientDetailScreenParams(
                ingredientId: ingredientListItemParam.item!.id.toString(),
              ).toQueryParameters(),
        );
      },
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child:
                  (ingredientListItemParam.item != null)
                      ? Padding(
                        padding: EdgeInsets.all(context.dsSpacing.sp400),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DSText(
                                    text: ingredientListItemParam.item?.name.toSmartTitleCase(),
                                    textStyle:
                                        DSTextStyleType.primaryBodyMRegular,
                                    textColor:
                                        context.dsColors.textNeutralOnWhite,
                                  ),
                                  if (ingredientListItemParam.item?.score !=
                                          null &&
                                      ingredientListItemParam
                                              .item
                                              ?.scoreBackgroundColor !=
                                          null &&
                                      !ingredientListItemParam
                                          .isVerifiedProduct)
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: context.dsSpacing.sp200,
                                      ),
                                      child: ScoreBadgeLabelWithData(
                                        score:
                                            ingredientListItemParam
                                                .item!
                                                .score!,
                                        scoreBackgroundColor:
                                            ingredientListItemParam
                                                .item!
                                                .scoreBackgroundColor!,
                                        hazardText:
                                            ingredientListItemParam
                                                .item!
                                                .hazardText,
                                        dataText:
                                            ingredientListItemParam
                                                .item!
                                                .dataText,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            DSSpacingWidget.horizontal(
                              spacing: context.dsSpacing.sp300,
                            ),
                            DSImage.asset(
                              DSIcons.icChevronRight,
                              width: context.dsSizes.sz400,
                              height: context.dsSizes.sz400,
                              color: context.dsColors.iconNeutralDefault,
                            ),
                          ],
                        ),
                      )
                      : const SizedBox.shrink(),
            ),
          ),
          if (hasText && !ingredientListItemParam.isLast) DSDivider(),
        ],
      ),
    );
  }
}
