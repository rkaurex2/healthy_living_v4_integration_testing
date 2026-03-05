import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/analytics/browse_analytics.dart';
import 'package:healthy_living_find/src/ui/widgets/browser_header.dart';
import 'package:healthy_living_find/src/ui/widgets/gradient_grid_section.dart';
import 'package:healthy_living_find/src/ui/widgets/horizontal__featured_category_list.dart';
import 'package:healthy_living_find/src/ui/widgets/shimmer/find_screen_shimmer.dart';
import 'package:healthy_living_find/src/ui/widgets/sunscreen_product_card.dart';
import 'package:healthy_living_find/src/ui/widgets/verified_product_card.dart';
import 'package:healthy_living_find/src/utils/find_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

class BrowseContentScreen extends StatefulWidget {
  const BrowseContentScreen({super.key});

  @override
  State<BrowseContentScreen> createState() => _BrowseContentScreenState();
}

class _BrowseContentScreenState extends State<BrowseContentScreen> {
  final ScrollController _scrollController = ScrollController();
  final BrowseAnalytics _browseAnalytics = injector.get<BrowseAnalytics>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _retryIfNeeded();
    });
  }

  void _retryIfNeeded() {
    final bloc = context.read<BrowseCategoriesBloc>();
    if (!bloc.hasBrowseData) {
      bloc.add(
        BrowseCategoriesEvent.browseCategoriesInitialize(isEwgVerified: false),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingFindLocalizations.of(context)!;
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;

    final bloc = context.read<BrowseCategoriesBloc>();

    // KEY: TestKeys.findLandingScreen
    return Scaffold(
      key: const Key('find_landing_screen'),
      backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
      body: SafeArea(
        child: BlocConsumer<BrowseCategoriesBloc, BrowseCategoriesState>(
          listener: (context, state) {
            if (state is BrowseInternetFailure) {
              final errorMessage =
                  HealthyLivingSharedUtils.getServerErrorMessage(
                    localizations:
                        HealthyLivingSharedLocalizations.of(context)!,
                    exception: state.exception,
                  );
              DSToast.show(context: context, title: errorMessage);
            } else if (state is BrowseCategoriesFailure) {
              if (state.exception is UnknownNetworkException) {
                DSToast.show(
                  context: context,
                  title: localization.find_browse_failedToLoadCategories,
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
                  current is BrowseCategoriesSuccess ||
                  current is BrowseCategoriesFailure ||
                  current is BrowseInternetFailure,

          builder: (context, state) {
            // Show persistent error view for initial data-load failures
            if (state is BrowseCategoriesFailure ||
                state is BrowseInternetFailure) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: context.dsSpacing.sp200,
                    ),
                    child: BrowserHeader(),
                  ),
                  Expanded(
                    child: DSErrorView(
                      onRetry: () => context
                          .read<BrowseCategoriesBloc>()
                          .add(
                            BrowseCategoriesEvent.browseCategoriesInitialize(
                              isEwgVerified: false,
                            ),
                          ),
                    ),
                  ),
                ],
              );
            }

            final categories = FindUtils().getFeaturedCategories(
              browsePersonalCareData: bloc.personalCare ?? [],
              localizations: localization,
            );
            final sunscreenCategoryGroup =
                categories
                    .where(
                      (category) =>
                          category.name.toLowerCase() ==
                          StringConstants.browseSunCategoryGroupName
                              .toLowerCase(),
                    )
                    .firstOrNull;
            if (state is BrowseCategoriesSuccess) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: context.dsSpacing.sp200,
                    ),
                    child: BrowserHeader(),
                  ),
                  Expanded(
                    child: Scrollbar(
                      controller: _scrollController,
                      thumbVisibility: true,
                      thickness: 4,
                      radius: Radius.circular(context.dsRadius.rd300),
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: context.dsSpacing.sp200,
                                left: context.dsSpacing.sp400,
                                right: context.dsSpacing.sp400,
                                bottom: context.dsSpacing.sp500,
                              ),
                              child: VerifiedProductCard(
                                onPressed: () {
                                  /// Logs GA4 event
                                  _logBrowseProductType(
                                    productType: BrowseProductByCategoryType
                                        .ewgVerified
                                        .value,
                                    categories: bloc.verifiedCategoriesForLogs,
                                  );

                                  context.goNamed(
                                    AppRoutes.browseProductVerifiedScreen.name,
                                  );
                                },
                              ),
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.dsSpacing.sp400,
                                vertical: context.dsSpacing.sp400,
                              ),
                              child: DSText(
                                text:
                                    sharedLocalizations
                                        .home_browse_browseProductByCategory,
                                textStyle: DSTextStyleType.secondaryHeadingM,
                                textColor: context.dsColors.textNeutralOnWhite,
                              ),
                            ),
                            GradientGridSection(
                              title: localization.browse_personal_care_category,
                              titleImage: DSIcons.icPersonalCareCategory,
                              gradientColors: [
                                context.dsColors.surfaceNeutralBackgroundLight,
                                context.dsColors.surfaceAdditionalBlush100,
                                context.dsColors.surfaceCategoriesCleaners,
                              ],
                              gradientStops: [0.0, 0.15, 1.0],
                              onPressed: () {
                                /// Logs GA4 event
                                _logBrowseProductType(
                                  productType:
                                      BrowseProductByCategoryType
                                          .personalCare
                                          .value,
                                  categories: bloc.personalCare ?? [],
                                );

                                context.pushNamed(
                                  AppRoutes.browseProductByCategory.name,
                                  extra: BrowseProductByCategoryParams(
                                    type:
                                        BrowseProductByCategoryType
                                            .personalCare,
                                    categories: bloc.personalCare ?? [],
                                  ),
                                );
                              },
                              params: BrowseProductByCategoryParams(
                                type: BrowseProductByCategoryType.personalCare,
                                categories: bloc.personalCare ?? [],
                              ),
                              imageWidth: 121,
                              imageHeight: 96,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    context.dsColors.surfaceCategoriesCleaners,
                                    context.dsColors.surfaceCategoriesCleaners,
                                  ],
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(top: 18),
                                padding: EdgeInsets.only(
                                  top: context.dsSpacing.sp200,
                                  left: context.dsSpacing.sp400,
                                  right: context.dsSpacing.sp400,
                                  bottom: 50,
                                ),
                                child: SunscreenProductCard(
                                  onPressed: () {
                                    if (sunscreenCategoryGroup != null) {
                                      context.pushNamed(
                                        AppRoutes.browseCategoryScreen.name,
                                        extra: BrowseProductByCategoryParam(
                                          type:
                                              sunscreenCategoryGroup
                                                  .categoryType,
                                          categoryGroupTitle:
                                              sunscreenCategoryGroup.nameForUi,
                                          categoryGroupId:
                                              sunscreenCategoryGroup
                                                  .categoryGroupId
                                                  .toString(),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            GradientGridSection(
                              title: localization.browse_cleaners_category,
                              titleImage: DSIcons.icCleanersCategory,
                              params: BrowseProductByCategoryParams(
                                type: BrowseProductByCategoryType.cleaner,
                                categories: bloc.cleaners ?? [],
                              ),
                              gradientColors: [
                                context.dsColors.surfaceCategoriesCleaners,
                                context.dsColors.surfacePrimaryLightPress,
                              ],
                              onPressed: () {
                                /// Logs GA4 event
                                _logBrowseProductType(
                                  productType:
                                      BrowseProductByCategoryType.cleaner.value,
                                  categories: bloc.cleaners ?? [],
                                );

                                context.pushNamed(
                                  AppRoutes.browseProductByCategory.name,
                                  extra: BrowseProductByCategoryParams(
                                    type: BrowseProductByCategoryType.cleaner,
                                    categories: bloc.cleaners ?? [],
                                  ),
                                );
                              },
                              imageWidth: 141,
                              imageHeight: 80,
                            ),
                            GradientGridSection(
                              title: localization.browse_food_category,
                              titleImage: DSIcons.icFoodCategory,
                              params: BrowseProductByCategoryParams(
                                type: BrowseProductByCategoryType.food,
                                categories: bloc.food ?? [],
                              ),
                              gradientColors: [
                                context.dsColors.surfacePrimaryLightPress,
                                Color(0xFFE1F2E1), //todo not available in DS
                              ],
                              onPressed: () {
                                /// Logs GA4 event
                                _logBrowseProductType(
                                  productType:
                                      BrowseProductByCategoryType.food.value,
                                  categories: bloc.food ?? [],
                                );

                                context.pushNamed(
                                  AppRoutes.browseProductByCategory.name,
                                  extra: BrowseProductByCategoryParams(
                                    type: BrowseProductByCategoryType.food,
                                    categories: bloc.food ?? [],
                                  ),
                                );
                              },
                              imageWidth: 150,
                              imageHeight: 89,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                            HorizontalFeaturedCategoryList(
                              titleList: categories,
                              headerTitle:
                                  localization.find_browse_featuredCategories,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp500,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.dsSpacing.sp200,
                  ),
                  child: BrowserHeader(),
                ),
                Expanded(child: FindScreenShimmer()),
              ],
            );
          },
        ),
      ),
    );
  }

  /// logs GA4 Events
  Future<void> _logBrowseProductType({
    required String productType,
    required List<BrowseMainCategoryModel> categories,
  }) async {
    await _browseAnalytics.logBrowseProductType(
      productType: productType,
      categories: categories.isValidList ? [categories.first] : [],
    );
  }
}
