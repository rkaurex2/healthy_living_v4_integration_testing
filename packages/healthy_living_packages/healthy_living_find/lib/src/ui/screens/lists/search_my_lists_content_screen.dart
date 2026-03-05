import 'package:design_system/design_system.dart'
    show BuildContextExtensions, DSDivider, DSIcons, DSSpacingWidget, DSToast;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_event.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_state.dart';
import 'package:healthy_living_find/src/ui/models/search_my_lists_cached_data_model.dart';
import 'package:healthy_living_find/src/ui/widgets/shimmer/brand_list_screen_shimmer.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppRoutes,
        HealthyLivingSharedUtils,
        IntegerConstants,
        ListValidate,
        NoSearchResultsWidget,
        SearchResultsRowItem,
        UserListScreenParams,
        Validate;
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';

class SearchMyListsContentScreen extends StatefulWidget {
  const SearchMyListsContentScreen({
    required this.searchedText,
    required this.onMyListsUpdate,
    this.initialMyLists,
    this.pagination,
    super.key,
  });

  final String searchedText;
  final Function(SearchMyListsCachedDataModel myListsData) onMyListsUpdate;
  final List<SearchListsModel>? initialMyLists;
  final SearchPaginationItemModel? pagination;

  @override
  State<SearchMyListsContentScreen> createState() =>
      _SearchMyListsContentScreenState();
}

class _SearchMyListsContentScreenState
    extends State<SearchMyListsContentScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (context.mounted) {
        final myListsBloc = context.read<SearchMyListsBloc>();
        if (_scrollController.offset >=
                (_scrollController.position.maxScrollExtent *
                    IntegerConstants.defaultPaginationThreshold) &&
            !myListsBloc.isFetchingList &&
            !myListsBloc.hasReachedMaxItems) {
          myListsBloc.add(
            SearchMyListsEvent.searchMyListsSearched(
              searchQuery: widget.searchedText,
            ),
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
    final myListsBloc = context.read<SearchMyListsBloc>();

    return BlocConsumer<SearchMyListsBloc, SearchMyListsState>(
      listenWhen:
          (_, current) => [
            MyListsInitial,
            MyListsLoadFailure,
          ].contains(current.runtimeType),
      listener: (context, state) {
        if (state is MyListsInitial) {
          if (widget.searchedText.isValidValue &&
              widget.initialMyLists?.isValidList == false &&
              widget.pagination == null) {
            myListsBloc.add(
              SearchMyListsEvent.searchMyListsSearched(
                searchQuery: widget.searchedText,
              ),
            );
          }
        } else if (state is MyListsLoadFailure) {
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
          MyListsLoadInProgress,
          MyListsLoadSuccess,
          MyListsLoadFromCacheSuccess,
          MyListsLoadFailure,
        ].contains(current.runtimeType);
      },
      builder: (context, state) {
        final myLists = myListsBloc.listItems;

        if (state is MyListsLoadSuccess) {
          widget.onMyListsUpdate(
            SearchMyListsCachedDataModel(
              myLists: state.lists,
              pagination: state.pagination,
            ),
          );
        }

        if ((state is MyListsLoadSuccess && !myLists.isValidList) ||
            (state is MyListsInitial &&
                !widget.initialMyLists.isValidList &&
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
                    ...myLists.map(
                      (list) => Column(
                        children: [
                          SearchResultsRowItem(
                            title: list.name.trim(),
                            highLightText: list.highlights?.name ?? '',
                            onTap:
                                () => onListItemTap(
                                  context: context,
                                  listId: list.id.toString(),
                                ),
                          ),
                          DSDivider(),
                        ],
                      ),
                    ),
                    if ((state is MyListsLoadInProgress) &&
                        state is! MyListsLoadFailure) ...{
                      if (myListsBloc.page == 1) ...{
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

  void onListItemTap({required BuildContext context, required String listId}) {
    context.pushNamed(
      AppRoutes.myItemMyListDetail.name,
      extra: UserListScreenParams(listId: listId),
    );
  }
}
