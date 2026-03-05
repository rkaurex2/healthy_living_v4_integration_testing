import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/ui/widgets/horizontal_list_with_title.dart'
    as browse;
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductByCategoryContentScreen extends StatelessWidget {
  final BrowseProductByCategoryParams params;

  const BrowseProductByCategoryContentScreen({required this.params, super.key});

  @override
  Widget build(BuildContext context) {
    List<BrowseMainCategoryModel> categorySections = List.from(
      params.categories ?? [],
    )..sort(
      (a, b) =>
          (a.name ?? '').toLowerCase().compareTo((b.name ?? '').toLowerCase()),
    );

    // KEY: TestKeys.browseByCategory
    return ListView.builder(
      key: const Key('browse_by_category'),
      padding: EdgeInsets.only(top: context.dsSpacing.sp200),
      itemBuilder: (context, index) {
        return categorySections[index].categories.isValidList
            ? browse.HorizontalListWithTitle(
              // KEY: TestKeys.subcategoryList (per section)
              key: Key('subcategory_list_$index'),
              headerTitle: categorySections[index].name?.toSmartTitleCase() ?? '',
              subcategoriesList: categorySections[index].categories ?? [],
              onHeaderTap: () {
                context.pushNamed(
                  AppRoutes.browseCategoryScreen.name,
                  extra: BrowseProductByCategoryParam(
                    type: params.type,
                    categoryGroupTitle: categorySections[index].name?.toSmartTitleCase() ?? '',
                    categoryGroupId: categorySections[index].id.toString(),
                  ),
                );
              },
              type: params.type,
              hasArrow: true,
              categoryGroupId: categorySections[index].id.toString(),
            )
            : SizedBox.shrink();
      },

      itemCount: categorySections.length,
    );
  }
}
