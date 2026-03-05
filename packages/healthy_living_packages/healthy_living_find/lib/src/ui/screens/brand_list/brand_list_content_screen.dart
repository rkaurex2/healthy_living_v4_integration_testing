import 'package:design_system/design_system.dart'
    show BuildContextExtensions, DSDivider, DSIcons, DSSpacingWidget, DSToast;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_brand_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_state.dart';
import 'package:healthy_living_find/src/ui/models/brand_list_update_callback.dart';
import 'package:healthy_living_find/src/ui/widgets/shimmer/brand_list_screen_shimmer.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AnalyticsEvents,
        AppRoutes,
        HealthyLivingSharedUtils,
        IntegerConstants,
        ListValidate,
        NoSearchResultsWidget,
        SearchResultsRowItem,
        SearchScreenParams,
        SearchTabType,
        Validate,
        injector;
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';

class BrandListContentScreen extends StatefulWidget {
  const BrandListContentScreen({
    required this.searchedText,
    required this.onBrandListUpdate,
    this.initialBrandList,
    this.pagination,
    super.key,
  });

  final String searchedText;
  final BrandListUpdateCallback onBrandListUpdate;
  final List<SearchBrandModel>? initialBrandList;
  final SearchPaginationItemModel? pagination;

  @override
  State<BrandListContentScreen> createState() => _BrandListContentScreenState();
}

class _BrandListContentScreenState extends State<BrandListContentScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (context.mounted) {
        final brandListBloc = context.read<BrandListBloc>();
        if (_scrollController.offset >=
                (_scrollController.position.maxScrollExtent *
                    IntegerConstants.defaultPaginationThreshold) &&
            !brandListBloc.isFetchingBrandList &&
            !brandListBloc.hasReachedMaxItems) {
          brandListBloc.add(BrandsSearched(searchQuery: widget.searchedText));
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final findLocalization = HealthyLivingFindLocalizations.of(context)!;
    final brandListBloc = context.read<BrandListBloc>();

    // KEY: TestKeys.brandsScreen
    return BlocConsumer<BrandListBloc, BrandListState>(
      key: const Key('brands_screen'),
      listenWhen:
          (_, current) =>
              [BrandsInitial, BrandsLoadFailure].contains(current.runtimeType),
      listener: (context, state) {
        if (state is BrandsInitial) {
          if (widget.searchedText.isValidValue &&
              widget.initialBrandList?.isEmpty == true &&
              widget.pagination == null) {
            brandListBloc.add(BrandsSearched(searchQuery: widget.searchedText));
          }
        } else if (state is BrandsLoadFailure) {
          final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
            localizations: healthyLivingSharedLocalizations,
            exception: state.exception,
          );
          DSToast.show(
            context: context,
            title: errorMessage.title,
            leadingIconPath: DSIcons.icWarning,
          );
        }
      },
      buildWhen: (_, current) {
        return [
          BrandsLoadInProgress,
          BrandsLoadSuccess,
          BrandsLoadFromCacheSuccess,
          BrandsLoadFailure,
        ].contains(current.runtimeType);
      },
      builder: (context, state) {
        final brandList = brandListBloc.brandList;

        if (state is BrandsLoadSuccess) {
          widget.onBrandListUpdate(state.brands, state.pagination);
        }

        if ((state is BrandsLoadSuccess && !brandList.isValidList) ||
            (state is BrandsInitial &&
                !widget.initialBrandList.isValidList &&
                widget.pagination != null)) {
          return NoSearchResultsWidget(
            title: findLocalization.find_search_noResultsMatch(
              widget.searchedText,
            ),
            description: findLocalization.find_search_checkTheSpelling,
          );
        }

        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                ),
                child: Column(
                  children: [
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                    // KEY: TestKeys.brandCard (dynamic per brand)
                    ...brandList.map(
                      (brand) => Column(
                        key: Key('brand_card_${brand.id}'),
                        children: [
                          SearchResultsRowItem(
                            title: brand.name?.trim() ?? '',
                            highLightText: brand.highlights?.name ?? '',
                            onTap: () async {
                              /// Logs GA4 Event
                              await injector
                                  .get<SearchAnalytics>()
                                  .logSearchStart(
                                source:
                                AnalyticsEvents
                                    .searchBrandTabSelectBrandName,
                              );
                              if(!context.mounted) return;
                              await context.pushNamed(
                                AppRoutes.find.name,
                                extra: SearchScreenParams(
                                  initialSelectedTabType:
                                  SearchTabType.products,
                                  shouldDisplayTabBar: false,
                                  initialSearchQuery:
                                  HealthyLivingSharedUtils.removeHtmlTags(
                                    brand.name ?? "",
                                  ),
                                  brandId: brand.id,
                                ),
                              );
                            },
                          ),
                          DSDivider(),
                        ],
                      ),
                    ),
                    if ((state is BrandsLoadInProgress) &&
                        state is! BrandsLoadFailure) ...{
                      if (brandListBloc.page == 1) ...{
                        BrandListScreenShimmer(),
                      } else ...{
                        BrandListScreenShimmer(
                          listItemLength:
                              IntegerConstants
                                  .defaultSearchTabPaginationSkeletonLength,
                        ),
                      },
                    },
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
