import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/ui/model/browse_product_by_category_model.dart';
import 'package:healthy_living_home/src/ui/widgets/browse_product_by_category_grid_list_item.dart';
import 'package:healthy_living_home/src/utils/home_screen_utils.dart'
    show HomeScreenUtils;
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

class BrowseProductByCategoryGrid extends StatefulWidget {
  const BrowseProductByCategoryGrid({super.key});

  @override
  State<BrowseProductByCategoryGrid> createState() =>
      _BrowseProductByCategoryGridState();
}

class _BrowseProductByCategoryGridState
    extends State<BrowseProductByCategoryGrid> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BrowseCategoriesBloc>();

    final HealthyLivingHomeLocalizations localizations =
        HealthyLivingHomeLocalizations.of(context)!;
    final healthyLivingSharedLocalization =
        HealthyLivingSharedLocalizations.of(context)!;

    final List<BrowseProductByCategoryModel> categories =
        HomeScreenUtils.getBrowseProductByCategoryItem(
          localizations: localizations,
          healthyLivingSharedLocalization: healthyLivingSharedLocalization,
          dsColors: context.dsColors,
        );
    BrowseProductByCategoryModel browseProductByCategoryModel =
        BrowseProductByCategoryModel(
          title:
              healthyLivingSharedLocalization
                  .general_productCategory_ewgVerifiedR,
          imagePath: DSIcons.icBrowseByEwgVerified,
          bgColor: context.dsColors.surfaceCategoriesEwgVerified2,
          textColor: context.dsColors.textOnSurfaceDefault,
          type: BrowseProductByCategoryType.ewgVerified,
        );
    return Padding(
      padding: EdgeInsets.only(
        top: context.dsSpacing.sp200,
        bottom: context.dsSpacing.sp600,
      ),
      child: BlocConsumer<BrowseCategoriesBloc, BrowseCategoriesState>(
        listener: (context, state) {
          if (state is BrowseInternetFailure) {
            final errorMessage = HealthyLivingSharedUtils.getServerErrorMessage(
              localizations: HealthyLivingSharedLocalizations.of(context)!,
              exception: state.exception,
            );
            DSToast.show(context: context, title: errorMessage);
          } else if (state is BrowseCategoriesFailure) {
            if (state.exception is UnknownNetworkException) {
              DSToast.show(
                context: context,
                title:
                    healthyLivingSharedLocalization
                        .find_browse_failedToLoadCategories,
              );
            }
          }
        },
        listenWhen:
            (_, current) =>
                current is BrowseCategoriesFailure ||
                current is BrowseInternetFailure,

        buildWhen:
            (previous, current) =>
                current is BrowseCategoriesLoading ||
                current is BrowseCategoriesSuccess,

        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: context.dsSpacing.sp200,
                ),
                child: HeaderTitleType(
                  text:
                      healthyLivingSharedLocalization
                          .home_browse_browseProductByCategory,
                ),
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  context.pushNamed(AppRoutes.browseProductVerifiedScreen.name);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 84,
                  decoration: BoxDecoration(
                    color: browseProductByCategoryModel.bgColor,
                    borderRadius: BorderRadius.circular(context.dsRadius.rd300),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(context.dsSpacing.sp1000),
                            bottomRight: Radius.circular(
                              context.dsSpacing.sp300,
                            ),
                            topRight: Radius.circular(context.dsSpacing.sp300),
                          ),
                          child: DSImage.asset(
                            browseProductByCategoryModel.imagePath,
                            width: 114,
                            height: 85,
                          ),
                        ),
                      ),
                      Positioned(
                        left: context.dsSizes.sz400,
                        child: DSText(
                          text: browseProductByCategoryModel.title,
                          textStyle: DSTextStyleType.primaryHeadingSBold,
                          textColor: browseProductByCategoryModel.textColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
              Wrap(
                children: [
                  GridView.count(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: context.dsSpacing.sp400,
                    crossAxisSpacing: context.dsSpacing.sp400,
                    childAspectRatio: 1.05,
                    physics: const NeverScrollableScrollPhysics(),
                    children:
                        categories.map((item) {
                          return BrowseProductByCategoryGridListItem(
                            item: item,
                            onTap: () {
                              String routeName;
                              BrowseProductByCategoryParams? extraData;
                              switch (item.type) {
                                case BrowseProductByCategoryType.ewgVerified:
                                  routeName =
                                      AppRoutes
                                          .browseProductVerifiedScreen
                                          .name;
                                  break;
                                case BrowseProductByCategoryType.personalCare:
                                  routeName =
                                      AppRoutes.browseProductByCategory.name;
                                  extraData = BrowseProductByCategoryParams(
                                    type:
                                        BrowseProductByCategoryType
                                            .personalCare,
                                    categories: bloc.personalCare ?? [],
                                  );
                                  break;
                                case BrowseProductByCategoryType.cleaner:
                                  routeName =
                                      AppRoutes.browseProductByCategory.name;
                                  extraData = BrowseProductByCategoryParams(
                                    type: BrowseProductByCategoryType.cleaner,
                                    categories: bloc.cleaners ?? [],
                                  );
                                  break;
                                case BrowseProductByCategoryType.food:
                                  routeName =
                                      AppRoutes.browseProductByCategory.name;
                                  extraData = BrowseProductByCategoryParams(
                                    type: BrowseProductByCategoryType.food,
                                    categories: bloc.food ?? [],
                                  );
                                  break;
                                case BrowseProductByCategoryType.sunscreen:
                                  routeName =
                                      AppRoutes.browseProductByCategory.name;
                                  extraData = BrowseProductByCategoryParams(
                                    type: BrowseProductByCategoryType.sunscreen,
                                    categories:
                                        bloc.personalCare
                                            ?.where(
                                              (personalCategory) =>
                                                  personalCategory.name
                                                      ?.toLowerCase() ==
                                                  StringConstants
                                                      .browseSunCategoryGroupName
                                                      .toLowerCase(),
                                            )
                                            .toList(growable: false) ??
                                        [],
                                  );
                                  break;
                              }
                              context.pushNamed(routeName, extra: extraData);
                            },
                          );
                        }).toList(),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
