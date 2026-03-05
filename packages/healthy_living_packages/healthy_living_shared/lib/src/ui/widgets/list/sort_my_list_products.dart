import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SortMyListProducts extends StatefulWidget {
  const SortMyListProducts({super.key});

  @override
  State<SortMyListProducts> createState() => _SortMyListProductsState();
}

class _SortMyListProductsState extends State<SortMyListProducts> {
  int selectedSortIndex = -1;

  List<String?>? list;

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    list = HealthyLivingSharedUtils.getSortMyListProducts(
      healthyLivingSharedLocalizations: healthyLivingSharedLocalizations,
    );
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          HeaderWithTitle(
            leadIcon: DSIcons.icClose,
            title: healthyLivingSharedLocalizations.general_list_sortBy,
            onTapLeadIcon: () => context.pop(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
            child: ListView.separated(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp200,
                vertical: context.dsSpacing.sp400,
              ),
              separatorBuilder: (context, index) {
                return DSSpacingWidget.vertical(
                  spacing: context.dsSpacing.sp200,
                );
              },
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedSortIndex == index
                              ? context.dsColors.surfacePrimaryLight1
                              : null,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: context.dsSpacing.sp300,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DSText(
                                  text: list?[index] ?? "",
                                  textStyle: DSTextStyleType.primarySubHeadingM,
                                  textColor:
                                      context.dsColors.textNeutralOnWhite,
                                ),
                              ],
                            ),
                          ),
                          if (selectedSortIndex == index) ...{
                            DSImage.asset(
                              DSIcons.icCheck,
                              width: context.dsSizes.sz500,
                              height: context.dsSizes.sz500,
                              color: context.dsColors.iconPrimary,
                            ),
                          },
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: list?.length ?? 0,
            ),
          ),
        ],
      ),
    );
  }
}
