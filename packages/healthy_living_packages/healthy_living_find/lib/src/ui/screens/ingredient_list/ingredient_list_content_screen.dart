import 'package:design_system/design_system.dart'
    show BuildContextExtensions, DSDivider, DSIcons, DSSpacingWidget, DSToast;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/domain/models/search_ingredient_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_state.dart';
import 'package:healthy_living_find/src/ui/models/ingredient_list_update_callback.dart';
import 'package:healthy_living_find/src/ui/widgets/shimmer/brand_list_screen_shimmer.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppRoutes,
        HealthyLivingSharedUtils,
        IngredientDetailScreenParams,
        IntegerConstants,
        ListValidate,
        NoSearchResultsWidget,
        SearchResultsRowItem,
        WidgetKeyConstants;
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';

class IngredientListContentScreen extends StatefulWidget {
  const IngredientListContentScreen({
    required this.searchedText,
    required this.onIngredientListUpdate,
    this.initialIngredientList,
    this.pagination,
    super.key,
  });

  final String searchedText;
  final IngredientListUpdateCallback onIngredientListUpdate;
  final List<SearchIngredientModel>? initialIngredientList;
  final SearchPaginationItemModel? pagination;

  @override
  State<IngredientListContentScreen> createState() =>
      _IngredientListContentScreenState();
}

class _IngredientListContentScreenState
    extends State<IngredientListContentScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (context.mounted) {
        final ingredientListBloc = context.read<IngredientListBloc>();
        if (_scrollController.offset >=
                (_scrollController.position.maxScrollExtent *
                    IntegerConstants.defaultPaginationThreshold) &&
            !ingredientListBloc.isFetchingIngredientList &&
            !ingredientListBloc.hasReachedMaxItems) {
          context.read<IngredientListBloc>().add(
            IngredientsSearched(searchQuery: widget.searchedText),
          );
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
    final ingredientListBloc = context.read<IngredientListBloc>();

    return BlocConsumer<IngredientListBloc, IngredientListState>(
      listenWhen:
          (_, current) => [
            IngredientsInitial,
            IngredientsLoadFailure,
          ].contains(current.runtimeType),
      listener: (context, state) {
        if (state is IngredientsInitial) {
          if (widget.searchedText.isNotEmpty &&
              widget.initialIngredientList?.isEmpty == true &&
              widget.pagination == null) {
            ingredientListBloc.add(
              IngredientsSearched(searchQuery: widget.searchedText),
            );
          }
        } else if (state is IngredientsLoadFailure) {
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
          IngredientsLoadInProgress,
          IngredientsLoadSuccess,
          IngredientsLoadFromCacheSuccess,
          IngredientsLoadFailure,
        ].contains(current.runtimeType);
      },
      builder: (context, state) {
        final ingredientList = ingredientListBloc.ingredientList;

        if (state is IngredientsLoadSuccess) {
          widget.onIngredientListUpdate(
            state.ingredientList,
            state.pagination!,
          );
        }

        if ((state is IngredientsLoadSuccess && !ingredientList.isValidList) ||
            (state is IngredientsInitial &&
                !widget.initialIngredientList.isValidList &&
                widget.pagination != null)) {
          return NoSearchResultsWidget(
            title: findLocalization.find_search_noResultsMatch(
              widget.searchedText,
            ),
            description: findLocalization.find_search_checkTheSpelling,
          );
        }

        return SingleChildScrollView(
          key: PageStorageKey<String>(
            WidgetKeyConstants.ingredientListContentScreen,
          ),
          controller: _scrollController,
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
              ...ingredientList.map(
                (ingredient) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SearchResultsRowItem(
                      title: ingredient.name?.trim() ?? '',
                      highLightText: ingredient.highlights?.name ?? '',
                      onTap: () {
                        context.pushNamed(
                          AppRoutes.searchIngredientDetails.name,
                          queryParameters:
                              IngredientDetailScreenParams(
                                ingredientId: ingredient.id.toString(),
                              ).toQueryParameters(),
                        );
                      },
                    ),
                    DSDivider(),
                  ],
                ),
              ),
              if (state is IngredientsLoadInProgress &&
                  state is! IngredientsLoadFailure) ...{
                if (ingredientListBloc.page == 1) ...{
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
        );
      },
    );
  }
}
