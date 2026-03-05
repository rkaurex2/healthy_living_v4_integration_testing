import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/healthy_living_find.dart';
import 'package:healthy_living_find/src/ui/widgets/browse_horizontal_lits_with_title_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HorizontalListWithTitle extends StatelessWidget {
  final List<BrowseCategoryModel> subcategoriesList;
  final String headerTitle;
  final VoidCallback onHeaderTap;
  final BrowseProductByCategoryType type;
  final bool hasArrow;
  final String categoryGroupId;


  const HorizontalListWithTitle({
    required this.headerTitle,
    required this.subcategoriesList,
    required this.onHeaderTap,
    required this.type,
    required this.hasArrow,
    required this.categoryGroupId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sortedSubcategories = List<BrowseCategoryModel>.from(
      subcategoriesList,
    )..sort(
      (a, b) =>
          (a.name ?? '').toLowerCase().compareTo((b.name ?? '').toLowerCase()),
    );

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: context.dsSpacing.sp200,
            horizontal: context.dsSpacing.sp400,
          ),
          child: HeaderWithArrow(
            headerTitle: headerTitle,
            onPressed: onHeaderTap,
            hasArrow: hasArrow,
            iconBackgroundColor: context.dsColors.surfaceNeutralContainerWhite,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        SizedBox(
          height: 104,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 104,
                margin: EdgeInsets.only(
                  left: index == 0 ? context.dsSpacing.sp400 : 0,
                  right:
                      index < sortedSubcategories.length - 1
                          ? context.dsSpacing.sp200
                          : context.dsSpacing.sp400,
                ),
                child: BrowseHorizontalListWithTitleItem(
                  subCategoryModel: sortedSubcategories[index],
                  onCategoryTap: () {
                    context.pushNamed(
                      AppRoutes.browseCategoryScreen.name,
                      extra: BrowseProductByCategoryParam(
                        type: type,
                        categoryGroupTitle:
                            sortedSubcategories[index].name ?? "",
                        categoryName:
                            sortedSubcategories[index].name.toString(),
                        categoryGroupId: categoryGroupId,
                        categoryId: sortedSubcategories[index].id,
                      ),
                    );
                  },
                ),
              );
            },

            itemCount: sortedSubcategories.length,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
      ],
    );
  }
}
