import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_nutrient_fact_model.dart';
import 'package:healthy_living_product_detail/src/ui/widget/facts_row_widget.dart';

class NutritionFactList extends StatelessWidget {
  final List<FoodDetailNutrientFactModel> nutrientFactList;

  const NutritionFactList({required this.nutrientFactList, super.key});

  @override
  Widget build(BuildContext context) {
    if (nutrientFactList.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        nutrientFactList.length,
            (index) => FactsRowWidget(item: nutrientFactList[index]),
      ),
    );
  }
}
