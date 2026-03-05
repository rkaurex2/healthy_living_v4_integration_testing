import 'package:design_system/design_system.dart'
    show
        DSBottomSheetWidget,
        DSDivider,
        DSErrorView,
        DSIcons,
        DSImage,
        DSSpacingWidget,
        DSText,
        DSTextStyleType,
        DSToast;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_state.dart';
import 'package:healthy_living_my_items/src/ui/widgets/history_sort_by_bottom_sheet_widget.dart';
import 'package:healthy_living_my_items/src/ui/widgets/no_history_results_widget.dart';
import 'package:healthy_living_my_items/src/utils/my_items_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppBloc,
        AppRoutes,
        AppState,
        HealthyLivingSharedLocalizations,
        HealthyLivingSharedUtils,
        HistoryType,
        IntegerConstants,
        ListValidate,
        MoveToHistory,
        ProductCategory,
        ProductDetailParamModel,
        ProductListShimmerWidget,
        ProductRowItem,
        SmartTitleCaseExtension,
        StringConstants,
        SubmitProductInfoParams,
        Validate;

class HistoryContentScreen extends StatefulWidget {
  const HistoryContentScreen({super.key});

  @override
  State<HistoryContentScreen> createState() => _HistoryContentScreenState();
}

class _HistoryContentScreenState extends State<HistoryContentScreen> {
  late final ScrollController _scrollController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (context.mounted) {
        final historyBloc = context.read<HistoryListBloc>();
        if (_scrollController.offset >=
                (_scrollController.position.maxScrollExtent *
                    IntegerConstants.defaultPaginationThreshold) &&
            !historyBloc.isFetchingList &&
            !historyBloc.hasReachedMaxItems) {
          historyBloc.add(
            HistoryListEvent.fetchHistory(
              sortOption: historyBloc.selectedSortOption,
            ),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();
    final historyListBloc = context.read<HistoryListBloc>();
    selectedIndex = historyListBloc.selectedSortIndex;
    // KEY: TestKeys.historyScreen
    return BlocListener<AppBloc, AppState>(
      key: const Key('history_screen'),
      listenWhen: (_, current) => current is MoveToHistory,
      listener: (BuildContext context, AppState state) {
        historyListBloc.add(
          HistoryListEvent.sortChanged(
            IntegerConstants.myListHistoryFilterDefaultSelection,
          ),
        );
        historyListBloc.add(
          HistoryListEvent.fetchHistory(
            sortOption: MyItemsUtils().getDefaultHistorySortOption(),
            page: IntegerConstants.defaultPage,
          ),
        );
      },
      child: Column(
        children: [
          BlocBuilder<HistoryListBloc, HistoryListState>(
            buildWhen: (_, current) => current is UpdateSortIndex,
            builder: (BuildContext context, HistoryListState state) {
              if (state is UpdateSortIndex) {
                selectedIndex = state.selectedSortIndex;
              }
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                  vertical: context.dsSpacing.sp300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      // KEY: TestKeys.myItemsFilterAll
                      key: const Key('my_items_filter_all'),
                      onTap: () {
                        DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
                          context: context,
                          fitToChildHeight: true,
                          child: HistorySortByBottomSheetWidget(
                            title: sharedLocalizations.filter_header_title,
                            selectedIndex: selectedIndex,
                            leadIcon: DSIcons.icClose,
                            onChanged: (index) {
                              historyListBloc.add(
                                HistoryListEvent.sortChanged(index),
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: context.dsSizes.sz600,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          vertical: context.dsSpacing.sp100,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            context.dsRadius.rd1000,
                          ),
                          border: Border.all(
                            color: context.dsColors.strokeNeutralDisabled,
                          ),
                        ),
                        child: DSText(
                          text: MyItemsUtils().getLocalizedHistorySortName(
                            sharedLocalizations,
                            historyListBloc.selectedSortOption.type,
                          ),
                          textStyle: DSTextStyleType.primaryButtonSRegular,
                          textColor: context.dsColors.textNeutralOnWhite,
                        ),
                      ),
                    ),

                    //todo this will be uncomment when history management introduced
                    /* GestureDetector(
                      onTap: () {
                        DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
                          context: context,
                          fitToChildHeight: true,
                          child: HistorySortByBottomSheetWidget(
                            title: sharedLocalizations.filter_header_title,
                            selectedIndex: selectedIndex,
                            leadIcon: DSIcons.icClose,
                            onChanged: (index) {
                              historyListBloc.add(
                                HistoryListEvent.sortChanged(index),
                              );
                            },
                          ),
                        );
                      },
                      child: DSImage.asset(DSIcons.icMoreHorizontalDots),
                    ),*/
                  ],
                ),
              );
            },
          ),
          BlocConsumer<HistoryListBloc, HistoryListState>(
            listenWhen: (_, current) => current is HistoryListLoadFailure,
            listener: (context, state) {
              if (state is HistoryListLoadFailure) {
                final errorMessage =
                    HealthyLivingSharedUtils.getServerErrorMessage(
                      localizations: sharedLocalizations,
                      exception: state.exception,
                    );
                DSToast.showErrorToast(context: context, title: errorMessage);
              }
            },
            buildWhen: (_, current) {
              return [
                HistoryListLoadInProgress,
                HistoryListLoadSuccess,
                HistoryListLoadFailure,
              ].contains(current.runtimeType);
            },
            builder: (context, state) {
              final currentPage = historyListBloc.page;
              // Show persistent error view for initial data-load failure
              if (state is HistoryListLoadFailure && currentPage == 1) {
                return Expanded(
                  child: DSErrorView(
                    onRetry: () => context
                        .read<HistoryListBloc>()
                        .add(const HistoryListEvent.initialized()),
                  ),
                );
              }
              if (state is HistoryListLoadInProgress && currentPage == 1) {
                return Expanded(
                  child: ProductListShimmerWidget(
                    padding: EdgeInsets.only(
                      left: context.dsSpacing.sp400,
                      right: context.dsSpacing.sp400,
                      top: context.dsSpacing.sp400,
                    ),
                  ),
                );
              } else if (state is HistoryListLoadSuccess &&
                  !historyListBloc.historyItems.isValidList &&
                  currentPage == 1 &&
                  historyListBloc.hasReachedMaxItems) {
                return Column(
                  children: [
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                    NoHistoryResultsWidget(),
                  ],
                );
              }

              return Expanded(
                child: Container(
                  height: context.dsSizes.sz600,
                  color: context.dsColors.surfaceNeutralContainerWhite,
                  child: ListView.separated(
                    controller: _scrollController,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(
                      horizontal: context.dsSpacing.sp400,
                    ),
                    itemCount: historyListBloc.historyItems.length,
                    separatorBuilder: (_, __) => DSDivider(),
                    itemBuilder: (context, index) {
                      final item = historyListBloc.historyItems[index];
                      final product = item.product;
                      if (product == null) {
                        return const SizedBox.shrink();
                      }
                      final productId =
                          historyListBloc.historyItems[index].productId;
                      final productCategory = ProductCategory.fromName(
                        getProductCategory(product.productType),
                      );

                      final (
                        String? score,
                        _,
                      ) = HealthyLivingSharedUtils.getProductCategoryScore(
                        productCategory: productCategory,
                        personalCareScore:
                            product.score != null
                                ? product.score.toString()
                                : "",
                        cleanerScore: product.grade,
                        foodScore: product.scores?.overall,
                      );

                      final shouldDisplayShimmer =
                          historyListBloc.isFetchingList &&
                          index + 1 ==
                              historyListBloc.historyData?.items.length;

                      final historyType = HistoryType.fromName(
                        historyListBloc.historyItems[index].listType,
                      );
                      final isProductSubmissionType =
                          historyType == HistoryType.productSubmission;

                      return Column(
                        children: [
                          ProductRowItem(
                            imageUrl: product.imageUrl ?? '',
                            brand: product.brandName ?? '',
                            title: product.name ?? '',
                            isEWGVerified: product.ewgVerified == true,
                            score: score,
                            id: product.productId,
                            categoryType:
                                isProductSubmissionType
                                    ? product.productType
                                    : "",
                            onTap: () {
                              if (productCategory != null &&
                                  productId.toString().isValidValue &&
                                  product.productId != -1) {
                                context
                                    .pushNamed(
                                      AppRoutes.myItemsProductDetail.name,
                                      extra: ProductDetailParamModel(
                                        productCategory: productCategory,
                                        productId: product.productId!,
                                      ),
                                    )
                                    .then((_) {
                                      historyListBloc.add(
                                        HistoryListEvent.fetchHistory(
                                          page: IntegerConstants.defaultPage,
                                          sortOption:
                                              historyListBloc
                                                  .selectedSortOption,
                                        ),
                                      );
                                    });
                              } else {
                                if (productCategory != null &&
                                    productId.toString().isValidValue &&
                                    product.score != null &&
                                    product.ocrJobId.isValidValue) {
                                  context
                                      .pushNamed(
                                        AppRoutes
                                            .instantHazardScoreHistoryScreen
                                            .name,
                                        extra: SubmitProductInfoParams(
                                          productCategoryType: productCategory,
                                          productName: product.name ?? "",
                                          brandName: product.brandName ?? "",
                                          ingredients: '',
                                          jobId: product.ocrJobId,
                                        ),
                                      )
                                      .then((_) {
                                        historyListBloc.add(
                                          HistoryListEvent.fetchHistory(
                                            page: IntegerConstants.defaultPage,
                                            sortOption:
                                                historyListBloc
                                                    .selectedSortOption,
                                          ),
                                        );
                                      });
                                }
                              }
                            },
                            ingredientPreference:
                                HealthyLivingSharedUtils.getProductIngredientPreference(
                                  ingredientPreferenceIndicator:
                                      product.ingredientPreferenceIndicator,
                                  isPremiumUser: appBloc.isPremiumUser,
                                ),
                            historyType: historyType,
                          ),
                          if (shouldDisplayShimmer) ...{
                            ProductListShimmerWidget(itemCount: 1),
                          },
                        ],
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  String getProductCategory(String? productType) {
    if (productType != null) {
      if (productType.contains(StringConstants.personalCareTitle)) {
        return StringConstants.personalCare;
      }
      return productType;
    } else {
      return StringConstants.personalCare;
    }
  }
}
