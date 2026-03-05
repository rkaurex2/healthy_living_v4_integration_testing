import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/widgets/product_category_filter_item.dart';

class BrowseProductFilterSection extends StatelessWidget {
  const BrowseProductFilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingFindLocalizations localizations =
        HealthyLivingFindLocalizations.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DSImage.asset(
          DSIcons.icFilterChips,
          height: context.dsSizes.sz600,
          width: context.dsSizes.sz600,
        ),
        ProductCategoryFilterItem(
          filterImage: DSIcons.icIngredient,
          onFilterTap: () {},

        ),
      ],
    );
  }
}
