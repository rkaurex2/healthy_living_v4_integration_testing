import 'package:design_system/design_system.dart'
    show BuildContextExtensions, DSDivider, DSIcons, DSSpacingWidget, DSToast;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/domain/models/search_category_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_state.dart';
import 'package:healthy_living_find/src/ui/models/category_list_update_callback.dart';
import 'package:healthy_living_find/src/ui/widgets/shimmer/brand_list_screen_shimmer.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show AppRoutes, BrowseProductByCategoryParam, BrowseProductByCategoryType, HealthyLivingSharedUtils, IntegerConstants, ListValidate, NoSearchResultsWidget, SearchResultsRowItem, SmartTitleCaseExtension, StringConstants;
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';

class CategoryListContentScreen extends StatefulWidget {
  const CategoryListContentScreen({
    required this.searchedText,
    required this.onCategoryListUpdate,
    this.initialCategoryList,
    this.pagination,
    super.key,
  });

  final String searchedText;
  final CategoryListUpdateCallback onCategoryListUpdate;
  final List<SearchCategoryItemModel>? initialCategoryList;
  final SearchPaginationItemModel? pagination;

  @override
  State<CategoryListContentScreen> createState() =>
      _CategoryListContentScreenState();
}

class _CategoryListContentScreenState extends State<CategoryListContentScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (context.mounted) {
        final categoryListBloc = context.read<CategoryListBloc>();
        if (_scrollController.offset >=
                (_scrollController.position.maxScrollExtent *
                    IntegerConstants.defaultPaginationThreshold) &&
            !categoryListBloc.isFetchingCategoryList &&
            !categoryListBloc.hasReachedMaxItems) {
          context.read<CategoryListBloc>().add(
            CategoriesSearched(searchQuery: widget.searchedText),
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
    final categoryListBloc = context.read<CategoryListBloc>();

    return BlocConsumer<CategoryListBloc, CategoryListState>(
      listenWhen:
          (_, current) => [
            CategoriesInitial,
            CategoriesLoadFailure,
          ].contains(current.runtimeType),
      listener: (context, state) {
        if (state is CategoriesInitial) {
          if (widget.searchedText.isNotEmpty &&
              widget.initialCategoryList?.isEmpty == true &&
              widget.pagination == null) {
            categoryListBloc.add(
              CategoriesSearched(searchQuery: widget.searchedText),
            );
          }
        } else if (state is CategoriesLoadFailure) {
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
          CategoriesLoadInProgress,
          CategoriesLoadSuccess,
          CategoriesLoadFromCacheSuccess,
          CategoriesLoadFailure,
        ].contains(current.runtimeType);
      },
      builder: (context, state) {
        final categoryList = categoryListBloc.categoryList;

        if (state is CategoriesLoadSuccess) {
          widget.onCategoryListUpdate(state.categoryList, state.pagination!);
        }

        if ((state is CategoriesLoadSuccess && !categoryList.isValidList) ||
            (state is CategoriesInitial &&
                !widget.initialCategoryList.isValidList &&
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
                    ...categoryList.map(
                      (category) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SearchResultsRowItem(
                            title: category.name?.trim() ?? '',
                            highLightText: category.highlights?.name ?? '',
                            onTap: () {
                              context.pushNamed(
                                AppRoutes.browseCategoryScreen.name,
                                extra: BrowseProductByCategoryParam(
                                  type:
                                      BrowseProductByCategoryType.fromName(
                                        category.productType ==
                                                StringConstants.cleaner
                                            ? StringConstants.cleaners
                                            : category.productType,
                                      )!,
                                  categoryGroupTitle:
                                      HealthyLivingSharedUtils.removeHtmlTags(
                                        category.name ?? '',
                                      ).toSmartTitleCase(),
                                  categoryName:
                                      HealthyLivingSharedUtils.removeHtmlTags(
                                        category.name ?? '',
                                      ).toSmartTitleCase(),
                                  subCategoryId:
                                      category.productType !=
                                              StringConstants.cleaner
                                          ? category.id
                                          : null,
                                  categoryId:
                                      category.productType ==
                                              StringConstants.cleaner
                                          ? category.id
                                          : null,
                                ),
                              );
                            },
                          ),
                          DSDivider(),
                        ],
                      ),
                    ),
                    if (state is CategoriesLoadInProgress &&
                        state is! CategoriesLoadFailure) ...{
                      if (categoryListBloc.page == 1) ...{
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
