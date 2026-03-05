import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/src/analytics/product_details_analytics.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_detail_basic_information_model.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_state.dart';
import 'package:healthy_living_product_detail/src/ui/widget/footer/product_detail_footer.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_preference_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_detail_bottom_action.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_detail_buy_now_bottom_sheet.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_detail_content_skeleton.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_info_card.dart';
import 'package:healthy_living_product_detail/src/ui/widget/tab_section.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductDetailContentScreen extends StatefulWidget {
  final ProductDetailParamModel product;

  const ProductDetailContentScreen({required this.product, super.key});

  @override
  State<ProductDetailContentScreen> createState() =>
      _ProductDetailContentScreenState();
}

class _ProductDetailContentScreenState
    extends State<ProductDetailContentScreen> {
  late final ScrollController _scrollController;
  bool _showCollapsedHeader = false;
  ProductDetailBasicInformationModel? productInformationModel;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void didUpdateWidget(covariant ProductDetailContentScreen oldWidget) {
    if (context.mounted &&
        widget.product.productId != oldWidget.product.productId) {
      final appBloc = context.read<AppBloc>();
      context.read<ProductDetailBloc>().add(
        ProductDetailEvent.initialized(
          product: widget.product,
          isAuthenticated: appBloc.isAuthenticated,
          isPremiumUser: appBloc.isPremiumUser,
        ),
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  void _handleScroll() {
    const double collapseThreshold = 280.0;
    final bool shouldShow =
        _scrollController.hasClients &&
        _scrollController.offset > collapseThreshold;
    if (shouldShow != _showCollapsedHeader) {
      setState(() {
        _showCollapsedHeader = shouldShow;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalization =
        HealthyLivingSharedLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();
    final productDetailBloc = context.read<ProductDetailBloc>();

    return BlocListener<AppBloc, AppState>(
      listenWhen:
          (_, current) =>
              current is MoveToPaywall || current is RefreshUserLoginState,
      listener: (context, state) {
        final isCurrent = ModalRoute.of(context)?.isCurrent ?? false;
        if (!isCurrent) return;
        if (state is MoveToPaywall) {
          context.read<PremiumPurchasesBloc>().add(
            PremiumPurchasesEvent.paywallPresented(
              paywallSource: PaywallSource.productDetail,
            ),
          );
        } else if (state is RefreshUserLoginState) {
          appBloc.add(
            AppEvent.navigationDataAfterAuthenticationSaved(
              navigationDataAfterAuthentication:
                  NavigationDataAfterAuthentication(
                    searchTerm: null,
                    searchTabType: null,
                  ),
              triggerPaywall:
                  appBloc.isAuthenticated && !appBloc.isPremiumUser
                      ? true
                      : false,
            ),
          );
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              BlocListener<PremiumPurchasesBloc, PremiumPurchasesState>(
                listenWhen: (_, current) {
                  return current is PaywallLoadSuccess &&
                      current.paywallSource == PaywallSource.productDetail;
                },

                listener: (BuildContext context, PremiumPurchasesState state) {
                  if (state is PaywallLoadSuccess &&
                      (state.paywallResult == AppPaywallResult.purchased ||
                          state.paywallResult == AppPaywallResult.restored)) {
                    context
                        .pushNamed(AppRoutes.entitlementVerificationScreen.name)
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
                child: BlocBuilder<ProductDetailBloc, ProductDetailState>(
                  buildWhen: (_, current) {
                    return current is ProductDetailSuccess;
                  },
                  builder: (context, state) {
                    final productInformationModel =
                        state is ProductDetailSuccess
                            ? state.productInformationModel
                            : null;
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        // KEY: TestKeys.shareProductButton
                        HeaderWithTitle(
                          key: const Key('share_product_button'),
                          title: "",
                          leadIcon: DSIcons.icArrowLeft,
                          trailIcon: DSIcons.icShare,
                          onTapLeadIcon: () => context.pop(),
                          onTapTrailIcon: () {
                            if (productInformationModel == null) return;
                            productDetailBloc.add(
                              ProductDetailShare(
                                messageTitle: healthyLivingSharedLocalization
                                    .healthyLivingShared_deepLink_shareProductTitle(
                                      productInformationModel.name,
                                    ),
                                messageText: healthyLivingSharedLocalization
                                    .healthyLivingShared_deepLink_shareProductMessage(
                                      productInformationModel.name,
                                    ),
                                sharingTitle:
                                    healthyLivingSharedLocalization
                                        .healthyLivingShared_deepLink_shareProductSheetTitle,
                              ),
                            );
                          },
                        ),
                        if (state is ProductDetailSuccess) ...[
                          Builder(
                            builder: (context) {
                              final ratingDetail =
                                  productInformationModel?.rating;

                              return HeaderWithBadgeAndTitleAnimated(
                                showCollapsedHeader: _showCollapsedHeader,
                                headerTitle:
                                    productInformationModel?.name ?? "",
                                leading:
                                    ratingDetail != null
                                        ? (ratingDetail.isVerified ||
                                                ratingDetail.hazardLevel ==
                                                    HazardLevel.verified)
                                            ? const HeaderEwgVerifiedBadge()
                                            : HeaderRatingScoreBadge(
                                              text: ratingDetail.grade,
                                              backgroundColor: ratingDetail
                                                  .hazardLevel
                                                  .displayColor(context),
                                            )
                                        : const SizedBox.shrink(),
                              );
                            },
                          ),
                        ],
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      controller: _scrollController,
                      child: BlocConsumer<
                        ProductDetailBloc,
                        ProductDetailState
                      >(
                        listener: (context, state) {
                          if (state is ProductDetailFailure) {
                            final errorMessage =
                                HealthyLivingSharedUtils.getServerErrorMessage(
                                  localizations:
                                      healthyLivingSharedLocalization,
                                  exception: state.exception,
                                );
                            if (errorMessage.isValidValue) {
                              DSToast.show(
                                context: context,
                                title: errorMessage,
                              );
                            }
                          }
                        },
                        buildWhen:
                            (_, current) =>
                                current is ProductDetailSuccess ||
                                current is ProductDetailLoading ||
                                current is ProductDetailFailure,
                        builder: (context, state) {
                          // Show persistent error view for initial data-load failure
                          if (state is ProductDetailFailure) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.5,
                              child: DSErrorView(
                                onRetry: () {
                                  final appBloc = context.read<AppBloc>();
                                  context.read<ProductDetailBloc>().add(
                                    ProductDetailEvent.initialized(
                                      product: widget.product,
                                      isAuthenticated: appBloc.isAuthenticated,
                                      isPremiumUser: appBloc.isPremiumUser,
                                    ),
                                  );
                                },
                              ),
                            );
                          }
                          if (state is ProductDetailSuccess) {
                            productInformationModel =
                                state.productInformationModel;

                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: context.dsSpacing.sp400,
                                  ),
                                  child: ProductInfoCard(
                                    productCategory:
                                        widget.product.productCategory,
                                    brandName:
                                        productInformationModel?.brandName,
                                    productName: productInformationModel?.name,
                                    productSize: productInformationModel?.size,
                                    categories:
                                        productInformationModel?.category,
                                    ratingDetail:
                                        productInformationModel?.rating,
                                    dataLevel:
                                        productInformationModel?.dataLevel,
                                    productImageUrl:
                                        productInformationModel?.imageUrl,
                                    onTap: () {},
                                  ),
                                ),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp400,
                                ),
                                if (productInformationModel
                                            ?.ingredientPreferenceLabels !=
                                        null &&
                                    appBloc.isPremiumUser) ...{
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                      context.dsSpacing.sp400,
                                      context.dsSpacing.sp0,
                                      context.dsSpacing.sp400,
                                      context.dsSpacing.sp500,
                                    ),
                                    child: IngredientPreferenceSection(
                                      ingredientPreferenceLabels:
                                          productInformationModel!
                                              .ingredientPreferenceLabels!,
                                      hasAvoidIngredientPreferenceSet:
                                          productDetailBloc
                                              .hasAvoidIngredientPreferenceSet,
                                    ),
                                  ),
                                },
                                TabSection(
                                  title: productInformationModel?.name ?? "",
                                  score:
                                      productInformationModel?.rating.grade ??
                                      "",
                                  productId: widget.product.productId,
                                ),
                                ProductDetailFooter(),
                              ],
                            );
                          } else {
                            return const ProductDetailContentSkeleton();
                          }
                        },
                      ),
                    ),
                    BlocBuilder<ProductDetailBloc, ProductDetailState>(
                      buildWhen: (previous, current) {
                        return current is CompareProductInitiate;
                      },
                      builder: (context, state) {
                        if (productDetailBloc.isCompareProductProgress) {
                          CompareProductItem
                          defaultCompareItem = CompareProductItem(
                            skinDeepId:
                                ProductCategory.fromName(
                                          productInformationModel
                                                  ?.productCategory
                                                  .value ??
                                              "",
                                        ) ==
                                        ProductCategory.personalCare
                                    ? int.tryParse(
                                          productInformationModel?.productId ??
                                              "",
                                        ) ??
                                        0
                                    : null,
                            id: int.tryParse(
                              productInformationModel?.productId ?? "",
                            ),
                            imageUrl: productInformationModel?.imageUrl ?? "",
                            brand: productInformationModel?.brandName ?? "",
                            title: productInformationModel?.name ?? "",
                            isEwgVerified:
                                productInformationModel?.isEwgVerified ?? false,
                            categoryType:
                                ProductCategory.fromName(
                                          productInformationModel
                                                  ?.productCategory
                                                  .value ??
                                              "",
                                        ) ==
                                        ProductCategory.cleaner
                                    ? SearchType.cleaner
                                    : SearchType.fromName(
                                      productInformationModel
                                          ?.productCategory
                                          .value,
                                    ),
                            score: productInformationModel?.rating.grade,
                          );
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CompareProductSheet(
                                scanOnPressed: () async {
                                  final analytics =
                                      injector.get<ProductDetailsAnalytics>();

                                  /// Logs GA4 Event
                                  await analytics.logScanStart(
                                    source:
                                        AnalyticsEvents.productDetailCompare,
                                  );

                                  if (!context.mounted) return;
                                  await context
                                      .push(
                                        AppRoutes.scan.path,
                                        extra: ScanScreenParams(
                                          defaultCompareProductItem:
                                              defaultCompareItem,
                                        ),
                                      )
                                      .then((result) async {
                                        if (result is ProductScanScreenResult &&
                                            result.routeToOpenAfterScanClose ==
                                                AppRoutes.find) {
                                          if (context.mounted) {
                                            /// Logs GA4 Event
                                            await injector
                                                .get<ProductDetailsAnalytics>()
                                                .logSearchStart(
                                                  source: AppRoutes.scan.name,
                                                );
                                            if (!context.mounted) return;
                                            context.goNamed(
                                              AppRoutes.find.name,
                                              extra: SearchScreenParams(
                                                initialSelectedTabType:
                                                    SearchTabType.products,
                                                shouldDisplayTabBar: false,
                                                textInputHintText:
                                                    result.textInputHintText,
                                              ),
                                            );
                                          }
                                        }
                                      });
                                },
                                searchOnPressed: () async {
                                  /// Logs GA4 Event
                                  await injector
                                      .get<ProductDetailsAnalytics>()
                                      .logSearchStart(
                                        source:
                                            AnalyticsEvents
                                                .productDetailCompare,
                                      );
                                  if (!context.mounted) return;
                                  await context.pushNamed(
                                    AppRoutes.find.name,
                                    extra: SearchScreenParams(
                                      productListSelectionActivate: true,
                                      defaultCompareProductItem:
                                          defaultCompareItem,
                                      productSelectionOptionsItem:
                                          ProductSelectionOptionsItem
                                              .compareProducts,
                                      initialSelectedTabType:
                                          SearchTabType.products,
                                      shouldDisplayTabBar: false,
                                      searchType:
                                          ProductCategory.fromName(
                                                    productInformationModel
                                                            ?.productCategory
                                                            .value ??
                                                        "",
                                                  ) ==
                                                  ProductCategory.cleaner
                                              ? SearchType.cleaner
                                              : SearchType.fromName(
                                                productInformationModel
                                                    ?.productCategory
                                                    .value,
                                              ),
                                      isFromProductDetail: true,
                                    ),
                                  );
                                },
                                isScanEnabled: true,
                                isSearchEnabled: true,
                                isDisableDefaultItem: true,
                                compareProductCardType:
                                    CompareProductCardType.addScanSearch,
                                onRemoveProduct: (index, compareProductItem) {
                                  TooltipOverlay.dismiss();
                                },
                                onTapCompareProducts: () {
                                  TooltipOverlay.dismiss();
                                },
                                compareProductList: [defaultCompareItem],
                                onTapClose: () {
                                  TooltipOverlay.dismiss();
                                  productDetailBloc.add(
                                    ProductDetailEvent.onCloseCompare(),
                                  );
                                },
                              ),
                            ],
                          );
                        }
                        return SizedBox();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BlocBuilder<ProductDetailBloc, ProductDetailState>(
          buildWhen: (previous, current) {
            return current is ProductDetailSuccess ||
                current is ProductDetailTabChange ||
                current is CompareProductInitiate;
          },
          builder: (context, state) {
            if (state is ProductDetailSuccess ||
                state is ProductDetailTabChange ||
                state is CompareProductInitiate) {
              final productInformationModel =
                  productDetailBloc.productBasicDetail;
              if (state is CompareProductInitiate &&
                  state.isCompareProductInProgress) {
                return SizedBox();
              }
              return BlocBuilder<AppBloc, AppState>(
                buildWhen: (previous, current) {
                  return current is RefreshUserLoginState;
                },
                builder: (context, state) {
                  return ProductDetailBottomAction(
                    onSaveProductDetailForNavigation: (shouldReset) {
                      appBloc.add(
                        AppEvent.productDetailsSaved(
                          productId:
                              shouldReset ? null : widget.product.productId,
                          productCategory:
                              shouldReset
                                  ? null
                                  : widget.product.productCategory,
                        ),
                      );
                    },
                    onCompare: () {
                      productDetailBloc.add(
                        ProductDetailEvent.onPressCompare(),
                      );
                    },
                    onAddToList: () {
                      if (!appBloc.isAuthenticated) {
                        context.goNamed(
                          AppRoutes.myItems.name,
                          extra: MyItemScreenParam(tabIndex: 0),
                        );
                      } else {
                        DSBottomSheetWidget.showBottomSheet(
                          context: context,
                          isDismissible: false,
                          useRootNavigator: false,
                          isFullScreen: true,
                          child: AddToListWidget(
                            userListItemsAttributesModel: [
                              UserListItemsAttributesModel(
                                productType:
                                    productInformationModel
                                        ?.productCategory
                                        .name ??
                                    "",
                                productId: int.parse(
                                  productInformationModel?.productId ?? "-1",
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    onBuy: () {
                      final bloc = productDetailBloc;
                      if (bloc.retailers.isValidList) {
                        DSBottomSheetWidget.showBottomSheet(
                          context: context,
                          child: ProductDetailBuyNowBottomSheet(
                            retailers: bloc.retailers ?? [],
                          ),
                        );
                      }
                    },
                    showBuy:
                        widget.product.productCategory != ProductCategory.food,
                  );
                },
              );
            } else {
              return Container(
                color: context.dsColors.surfacePrimaryDefault,
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp300,
                  vertical: context.dsSpacing.sp200,
                ),
                child: SizedBox(height: 42),
              );
            }
          },
        ),
      ),
    );
  }
}
