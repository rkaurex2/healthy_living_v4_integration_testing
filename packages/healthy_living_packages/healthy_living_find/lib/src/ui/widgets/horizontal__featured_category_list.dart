import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/ui/models/browse_feature_category_list_item_model.dart';
import 'package:healthy_living_find/src/ui/widgets/horizontal_lits_with_title_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HorizontalFeaturedCategoryList extends StatelessWidget {
  final List<BrowseFeatureCategoryListItemModel> titleList;
  final String headerTitle;

  const HorizontalFeaturedCategoryList({
    required this.headerTitle,
    required this.titleList,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: context.dsSpacing.sp200,
            horizontal: context.dsSpacing.sp400,
          ),
          child: HeaderWithArrow(headerTitle: headerTitle, hasArrow: false),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              titleList.length,
              (index) => Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right:
                        index < titleList.length - 1
                            ? context.dsSpacing.sp200
                            : 0,
                  ),
                  child: HorizontalListWithTitleItem(
                    title: titleList[index].nameForUi,
                    onItemTap: () {
                      _onFeaturedCategoryTap(index: index, context: context);
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
      ],
    );
  }

  void _onFeaturedCategoryTap({
    required int index,
    required BuildContext context,
  }) {
    final category = titleList[index];
    final categoryNameLower = category.name.toLowerCase();

    final isDiapersSubcategory =
        categoryNameLower ==
        StringConstants.browseDiaperSubCategoryName.toLowerCase();
    final isSunCategoryGroup =
        categoryNameLower ==
        StringConstants.browseSunCategoryGroupName.toLowerCase();

    final param = BrowseProductByCategoryParam(
      type: BrowseProductByCategoryType.personalCare,
      categoryGroupTitle: category.nameForUi,
      categoryGroupId: category.categoryGroupId.toString(),
      categoryId: _getCategoryId(
        isDiapersSubcategory,
        isSunCategoryGroup,
        category,
      ),
      categoryName: _getCategoryName(isSunCategoryGroup, category),
      subCategoryId: isDiapersSubcategory ? category.subCategoryId : null,
    );

    context.pushNamed(AppRoutes.browseCategoryScreen.name, extra: param);
  }

  int? _getCategoryId(
    bool isDiapersSubcategory,
    bool isSunCategoryGroup,
    BrowseFeatureCategoryListItemModel category,
  ) {
    return (isDiapersSubcategory || isSunCategoryGroup)
        ? null
        : category.categoryId;
  }

  String? _getCategoryName(bool isSunCategoryGroup, dynamic category) {
    return isSunCategoryGroup ? null : category.name;
  }
}
