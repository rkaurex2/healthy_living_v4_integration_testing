import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_contains_prefer.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_free_from_avoid.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductComparisonIngredient extends StatelessWidget {
  final IngredientPreferenceIndicatorModel? left;
  final IngredientPreferenceIndicatorModel? right;

  const ProductComparisonIngredient({this.left, this.right, super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {0: FlexColumnWidth(), 1: FlexColumnWidth()},
      border: TableBorder(
        verticalInside: BorderSide(
          color: context.dsColors.strokeNeutralDefault,
          width: 1,
        ),
      ),
      defaultVerticalAlignment: TableCellVerticalAlignment.top,
      children: [
        TableRow(
          children: [
            ProductComparisonFreeFromAvoid(
              hasAvoid: left?.hasAvoid ?? false,
              avoidedIngredients:
                  left?.avoidedIngredients.map((e) => e.name).toList() ?? [],
            ),

            ProductComparisonFreeFromAvoid(
              hasAvoid: right?.hasAvoid ?? false,
              avoidedIngredients:
                  right?.avoidedIngredients.map((e) => e.name).toList() ?? [],
            ),
          ],
        ),

        TableRow(
          children: [
            if ((left?.preferredIngredients ?? []).isValidList) ...{
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                ),
                child: DSDivider(),
              ),
            } else ...{
              SizedBox(),
            },
            if ((right?.preferredIngredients ?? []).isValidList) ...{
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                ),
                child: DSDivider(),
              ),
            } else ...{
              SizedBox(),
            },
          ],
        ),

        // Row 4: Preferred ingredients list
        TableRow(
          children: [
            if ((left?.preferredIngredients ?? []).isValidList) ...{
              ProductComparisonContainsPrefer(
                preferIngredients:
                    left?.preferredIngredients.map((e) => e.name).toList() ??
                    [],
              ),
            } else ...{
              SizedBox(),
            },
            if ((right?.preferredIngredients ?? []).isValidList) ...{
              ProductComparisonContainsPrefer(
                preferIngredients:
                    right?.preferredIngredients.map((e) => e.name).toList() ??
                    [],
              ),
            } else ...{
              SizedBox(),
            },
          ],
        ),
      ],
    );
  }
}
