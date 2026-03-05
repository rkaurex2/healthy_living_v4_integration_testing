import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_event.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_state.dart';
import 'package:healthy_living_find/src/ui/widgets/browse_product_category_content_screen.dart';
import 'package:healthy_living_find/src/ui/widgets/browse_product_options.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductCategoryScreen extends StatelessWidget {
  final BrowseProductByCategoryParam param;

  const BrowseProductCategoryScreen({required this.param, super.key});

  @override
  Widget build(BuildContext context) {
    final shareLocalization = HealthyLivingSharedLocalizations.of(context)!;
    return BlocProvider<BrowseBloc>(
      create: (_) => injector.get<BrowseBloc>(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: context.dsSpacing.sp500),
              color: _getBgColor(context),
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 14,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => context.pop(),
                        child: Container(
                          height: context.dsSizes.sz600,
                          width: context.dsSizes.sz700,
                          alignment: Alignment.centerLeft,
                          child: DSImage.asset(
                            DSIcons.icArrowLeft,
                            fit: BoxFit.none,
                            height: context.dsSizes.sz500,
                            width: context.dsSizes.sz500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.dsSpacing.sp400,
                          ),
                          child: DSText(
                            text: param.categoryGroupTitle,
                            textStyle: DSTextStyleType.primaryHeadingS,
                            textColor: context.dsColors.textPrimaryDefault,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              /// Logs GA4 Event
                              await injector
                                  .get<SearchAnalytics>()
                                  .logSearchStart(
                                source:
                                AnalyticsEvents
                                    .browseProductCategoryScreen,
                              );
                              if(!context.mounted) return;
                              await context.pushNamed(
                                AppRoutes.find.name,
                                extra: SearchScreenParams(
                                  initialSelectedTabType:
                                      SearchTabType.products,
                                  shouldDisplayTabBar: false,
                                  searchType: SearchType.fromName(
                                    param.type.value,
                                  ),
                                  textInputHintText: _getHintText(context),
                                  isEWGVerified: param.isEWGVerified,
                                ),
                              );
                            },
                            child: DSImage.asset(
                              DSIcons.icSearch,
                              height: context.dsSizes.sz500,
                              width: context.dsSizes.sz500,
                              color: context.dsColors.iconPrimary,
                            ),
                          ),
                          DSSpacingWidget.horizontal(
                            spacing: context.dsSpacing.sp400,
                          ),
                          BlocListener<
                            PremiumPurchasesBloc,
                            PremiumPurchasesState
                          >(
                            listenWhen: (_, current) {
                              return current is PaywallLoadSuccess &&
                                  current.paywallSource ==
                                      PaywallSource.compareBottomSheet;
                            },
                            listener: (context, state) {
                              if (state is PaywallLoadSuccess &&
                                  (state.paywallResult ==
                                          AppPaywallResult.purchased ||
                                      state.paywallResult ==
                                          AppPaywallResult.restored)) {
                                context
                                    .pushNamed(
                                      AppRoutes
                                          .entitlementVerificationScreen
                                          .name,
                                    )
                                    .then((result) {
                                      if (!context.mounted) {
                                        return;
                                      }

                                      HealthyLivingSharedUtils.entitlementVerificationScreenOnComplete(
                                        context: context,
                                        result: result,
                                      );
                                    });
                              }
                            },
                            child: BlocConsumer<BrowseBloc, BrowseState>(
                              listenWhen: (_, current) {
                                return current is CompareUpgradeNowTapSuccess;
                              },
                              listener: (context, state) {
                                if (state is CompareUpgradeNowTapSuccess) {
                                  context.read<PremiumPurchasesBloc>().add(
                                    PremiumPurchasesEvent.paywallPresented(
                                      paywallSource:
                                          PaywallSource.compareBottomSheet,
                                    ),
                                  );
                                }
                              },
                              builder: (context, state) {
                                final bloc = context.read<BrowseBloc>();
                                return InkWell(
                                  onTap: () {
                                    if (bloc.productOptionsItem ==
                                        ProductSelectionOptionsItem.none) {
                                      DSBottomSheetWidget.showBottomSheet(
                                        context: context,
                                        child: BlocProvider.value(
                                          value: bloc,
                                          child: BrowseProductOptions(
                                            browseProductByCategoryParam:
                                                param,
                                            onTapCompare: () {
                                              DSModal.show(
                                                context: context,
                                                title:
                                                    shareLocalization
                                                        .productDetail_compareModal_makeMostInformedPurchase,
                                                caption:
                                                    shareLocalization
                                                        .productDetail_compareModal_unAuthenticateDescription,
                                                centerImageWidget:
                                                    DsModalCircleImage(
                                                      primaryImagePath:
                                                          DSIcons
                                                              .icCompareModalImage,
                                                      secondaryImagePath:
                                                          DSIcons
                                                              .icCompareDisable,
                                                    ),
                                                primaryButtonType:
                                                    DSModalPrimaryButtonType
                                                        .dsSecondary,
                                                primaryButtonText:
                                                    shareLocalization
                                                        .general_signIn,
                                                secondaryButtonText:
                                                    shareLocalization
                                                        .general_createAccount,
                                                onPrimaryPressed: () {
                                                  context.pop();
                                                  _navigateToSignInScreen(
                                                    context: context,
                                                  );
                                                },
                                                onSecondaryPressed: () {
                                                  context.pop();
                                                  _navigateToCreateAccountScreen(
                                                    context: context,
                                                  );
                                                },
                                                buttonSize:
                                                    DSButtonSize.small,
                                              );
                                            },
                                          ),
                                        ),
                                      ).then((result) {
                                        if (result is bool && result) {
                                          bloc.add(
                                            BrowseEvent.compareUpgradeNowTapped(),
                                          );
                                        }
                                      });
                                    }
                                  },
                                  child: DSImage.asset(
                                    DSIcons.icMoreHorizontalDots,
                                    height: context.dsSizes.sz500,
                                    width: context.dsSizes.sz500,
                                    color:
                                        bloc.productOptionsItem !=
                                                ProductSelectionOptionsItem
                                                    .none
                                            ? context
                                                .dsColors
                                                .iconNeutralDisabled
                                            : context.dsColors.iconPrimary,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            BrowseProductCategoryContentScreen(param: param),
          ],
        ),
      ),
    );
  }

  Color _getBgColor(BuildContext context) {
    if (param.type == BrowseProductByCategoryType.food) {
      return context.dsColors.surfaceCategoriesFoodLight;
    } else if (param.type == BrowseProductByCategoryType.cleaner) {
      return context.dsColors.surfaceCategoriesCleanersLight;
    } else if (param.type == BrowseProductByCategoryType.personalCare) {
      return context.dsColors.surfaceCategoriesPersonalCareLight;
    }
    return context.dsColors.surfaceCategoriesFoodLight;
  }

  String _getHintText(BuildContext context) {
    final localization = HealthyLivingSharedLocalizations.of(context)!;
    if (param.type == BrowseProductByCategoryType.food) {
      return localization.healthyLivingShared_browseByProduct_searchFood;
    } else if (param.type == BrowseProductByCategoryType.cleaner) {
      return localization.healthyLivingShared_browseByProduct_searchCleaners;
    } else if (param.type == BrowseProductByCategoryType.personalCare) {
      return localization
          .healthyLivingShared_browseByProduct_searchPersonalCare;
    }
    return localization.healthyLivingShared_browseByProduct_searchFood;
  }

  void _navigateToSignInScreen({required BuildContext context}) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: true).toQueryParameters(),
      extra: {StringConstants.openedFrom: AppRoutes.browseCategoryScreen.name},
    );
  }

  void _navigateToCreateAccountScreen({required BuildContext context}) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: false).toQueryParameters(),
      extra: {StringConstants.openedFrom: AppRoutes.browseCategoryScreen.name},
    );
  }
}
