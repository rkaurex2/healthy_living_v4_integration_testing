import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_nutrient_fact_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FactsRowWidget extends StatelessWidget {
  const FactsRowWidget({required this.item, super.key});

  final FoodDetailNutrientFactModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DSText(
                text: item.nutrientName?.toSmartTitleCase(),
                textStyle: DSTextStyleType.primaryBodyMRegular,
                textColor: context.dsColors.textNeutralOnWhite,
              ),

              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),

              DSText(
                text: _nutrientValue(),
                textStyle: DSTextStyleType.primaryBodyMMedium,
                textColor: context.dsColors.textNeutralOnWhite,
              ),

              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),

              Expanded(
                child: DSText(
                  text:
                      item.nutrientDvp == null
                          ? item.nutrientValue
                          : "${item.nutrientDvp}%",
                  textStyle: DSTextStyleType.primaryBodyMMedium,
                  textColor: context.dsColors.textNeutralOnWhite,
                  textAlign: TextAlign.end,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Divider(height: 2, color: context.dsColors.strokeNeutralDefault),
      ],
    );
  }

  String _nutrientValue() {
    String nutrientValue = "";
    if (item.nutrientValue.toString().toLowerCase() !=
        StringConstants.noValueOnPresentLabel) {
      if (item.nutrientValue is double) {
        nutrientValue =
            "${(item.nutrientValue as double?).toClearDecimalZero()} ${item.nutrientUom} ";
      }
    } else {
      return "";
    }
    return "${_nutrientSymbol()} $nutrientValue";
  }

  String _nutrientSymbol() {
    if (item.nutrientSymbol != "=") {
      return item.nutrientSymbol ?? "";
    }
    return "";
  }
}
