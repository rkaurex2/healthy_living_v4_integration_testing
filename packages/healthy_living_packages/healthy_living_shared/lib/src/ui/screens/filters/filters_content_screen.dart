import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/screens/filters/brand_filter_bottom_sheet.dart';
import 'package:healthy_living_shared/src/ui/screens/filters/category_filter_bottom_sheet.dart';
import 'package:healthy_living_shared/src/ui/widgets/filters/filter_tile.dart';
import 'package:healthy_living_shared/src/ui/widgets/filters/ingredient_preference_filter/non_premium_ingredient_preference_filter.dart';
import 'package:healthy_living_shared/src/ui/widgets/filters/ingredient_preference_filter_shimmer.dart';

class FiltersContentScreen extends StatefulWidget {
  const FiltersContentScreen({
    required this.productCategory,
    required this.isEWGVerifiedSearch,
    required this.filterOpenedFrom,
    required this.onManagePreferencesTap,
    required this.onTapLearnPremium,
    this.initialSelectedCategoryId,
    this.initialSelectedSubCategoryId,
    super.key,
  });

  final ProductCategory productCategory;
  final bool? isEWGVerifiedSearch;
  final FilterOpenedFrom filterOpenedFrom;
  final VoidCallback onManagePreferencesTap;
  final VoidCallback onTapLearnPremium;
  final int? initialSelectedCategoryId;
  final int? initialSelectedSubCategoryId;

  @override
  State<FiltersContentScreen> createState() => _FiltersContentScreenState();
}

class _FiltersContentScreenState extends State<FiltersContentScreen> {
  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    final filterBloc = context.read<FilterBloc>();
    final appBloc = context.read<AppBloc>();
    final sortOptions = FilterUtils().getSortFilters();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              HeaderWithTitle(
                title: sharedLocalizations.filters_contentScreen_title,
                textStyle: DSTextStyleType.primaryHeadingSBold,
                leadIcon: DSIcons.icClose,
                onTapLeadIcon: () {
                  context.pop();
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BlocBuilder<FilterBloc, FilterState>(
                        buildWhen: (_, current) {
                          return [
                            BasicFiltersInitialised,
                            SortFilterUpdated,
                            AllFiltersClearSuccess,
                          ].contains(current.runtimeType);
                        },
                        builder: (context, state) {
                          return FilterTile(
                            filterTitle:
                                sharedLocalizations
                                    .filters_contentScreen_sortFilterTitle,
                            selectedFilterText: FilterUtils()
                                .getSortOptionLabel(
                                  sortType: filterBloc.updatedSortOption.type,
                                  localizations: sharedLocalizations,
                                ),
                            titleIcon: DSIcons.icSort,
                            onTap: () {
                              DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
                                context: context,
                                fitToChildHeight: true,
                                child: SortByBottomSheetWidget(
                                  title:
                                      sharedLocalizations
                                          .filters_contentScreen_sortByTitle,
                                  options: sortOptions,
                                  selectedIndex:
                                      filterBloc.updatedSortOption.index,
                                  onChanged: (index) {
                                    final selectedOption = sortOptions[index];
                                    context.read<FilterBloc>().add(
                                      FilterEvent.setSortFilter(
                                        sortOption: selectedOption,
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                      DSDivider(),
                      BlocBuilder<FilterBloc, FilterState>(
                        buildWhen: (_, current) {
                          return [
                            BasicFiltersInitialised,
                            CategoryFilterUpdated,
                            AllFiltersClearSuccess,
                          ].contains(current.runtimeType);
                        },
                        builder: (context, state) {
                          final isDisabled =
                              !filterBloc.updatedCategoryItems.isValidList;
                          return FilterTile(
                            filterTitle:
                                sharedLocalizations
                                    .filters_contentScreen_categoriesFilterTitle,
                            selectedFilterText: getSelectedCategoryText(
                              initialCategoriesLength:
                                  filterBloc.categoryItems.length,
                              selectedCategoriesLength:
                                  filterBloc.selectedCategoryItems,
                              localizations: sharedLocalizations,
                              isDisabled: isDisabled,
                            ),
                            disabled: isDisabled,
                            onTap: () {
                              DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
                                context: context,
                                child: CategoryFilterBottomSheet(
                                  title: sharedLocalizations.general_categories,
                                  categories: filterBloc.updatedCategoryItems,
                                  initialSelectedCategoryId:
                                      widget.initialSelectedCategoryId,
                                  initialSelectedSubCategoryId:
                                      widget.initialSelectedSubCategoryId,
                                  productCategory: widget.productCategory,
                                  selectedCategories:
                                      filterBloc.updatedCategoryItems
                                          .map((category) => category.name)
                                          .toList(),
                                  onApply: (selectedCategories) {
                                    filterBloc.add(
                                      FilterEvent.setCategoryFilter(
                                        selectedCategories: selectedCategories,
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                      DSDivider(),
                      BlocBuilder<FilterBloc, FilterState>(
                        buildWhen: (_, current) {
                          return [
                            BasicFiltersInitialised,
                            HazardScoreFilterUpdated,
                            AllFiltersClearSuccess,
                          ].contains(current.runtimeType);
                        },
                        builder: (context, state) {
                          return Padding(
                            padding: EdgeInsets.all(context.dsSpacing.sp400),
                            child: HazardScoreFilter(
                              productCategory: widget.productCategory,
                              initialHazardLevel: filterBloc.updatedHazardLevel,
                              onHazardLevelChanged: (hazardLevel) {
                                if (hazardLevel != null) {
                                  filterBloc.add(
                                    FilterEvent.setHazardScoreFilter(
                                      hazardLevel: hazardLevel,
                                    ),
                                  );
                                }
                              },
                              isEWGVerified: widget.isEWGVerifiedSearch,
                            ),
                          );
                        },
                      ),
                      DSDivider(),
                      BlocBuilder<FilterBloc, FilterState>(
                        buildWhen: (_, current) {
                          return [
                            BasicFiltersInitialised,
                            BrandFilterUpdated,
                            AllFiltersClearSuccess,
                          ].contains(current.runtimeType);
                        },
                        builder: (context, state) {
                          final isDisabled =
                              !filterBloc.updatedBrandItems.isValidList;
                          return FilterTile(
                            filterTitle:
                                sharedLocalizations
                                    .filters_contentScreen_brandsFilterTitle,
                            selectedFilterText: getSelectedBrandText(
                              initialBrandsLength: filterBloc.brandItems.length,
                              selectedBrandsLength:
                                  filterBloc.selectedBrandItems,
                              localizations: sharedLocalizations,
                              isDisabled: isDisabled,
                            ),
                            disabled: isDisabled,
                            onTap: () {
                              DSBottomSheetWidget.showBottomSheetWithFullScreenSupport(
                                context: context,
                                child: BrandFilterBottomSheet(
                                  title:
                                      sharedLocalizations
                                          .filters_contentScreen_brandsFilterTitle,
                                  initialBrands: filterBloc.updatedBrandItems,
                                  onApply: (selectedBrands) {
                                    filterBloc.add(
                                      FilterEvent.setBrandFilter(
                                        selectedBrands: selectedBrands,
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                      DSDivider(),
                      if (appBloc.isAuthenticated && appBloc.isPremiumUser) ...{
                        BlocBuilder<FilterBloc, FilterState>(
                          buildWhen: (_, current) {
                            return [
                              IngredientPreferencesFilterLoadInProgress,
                              IngredientPreferencesFilterLoadSuccess,
                              IngredientPreferencesFilterLoadFailure,
                              IngredientPreferencesFilterUpdated,
                              AllFiltersClearSuccess,
                            ].contains(current.runtimeType);
                          },
                          builder: (context, state) {
                            if (state
                                is IngredientPreferencesFilterLoadInProgress) {
                              return IngredientPreferenceFilterShimmer();
                            } else if (state
                                    is IngredientPreferencesFilterLoadSuccess ||
                                state is IngredientPreferencesFilterUpdated ||
                                state is AllFiltersClearSuccess) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.dsSpacing.sp400,
                                  vertical: context.dsSpacing.sp600,
                                ),
                                child: IngredientPreferencesFilter(
                                  preferences:
                                      filterBloc
                                          .updatedIngredientPreferencesFilterModel,
                                  hasAnyAvoidedIngredientPreferenceList:
                                      filterBloc
                                          .hasAnyAvoidedIngredientPreferenceList(
                                            productCategory:
                                                widget.productCategory,
                                          ),
                                  hasAnyPreferredIngredientPreferenceList:
                                      filterBloc
                                          .hasAnyPreferredIngredientPreferenceList(
                                            productCategory:
                                                widget.productCategory,
                                          ),
                                  onPreferencesChanged: (
                                    IngredientPreferencesFilterModel value,
                                  ) {
                                    filterBloc.add(
                                      FilterEvent.setIngredientPreferencesFilter(
                                        ingredientPreferencesFilter: value,
                                      ),
                                    );
                                  },
                                  onManagePreferencesTap: (appRoute) {
                                    widget.onManagePreferencesTap();
                                  },
                                ),
                              );
                            }
                            return SizedBox.shrink();
                          },
                        ),
                      } else ...{
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.dsSpacing.sp400,
                            vertical: context.dsSpacing.sp600,
                          ),
                          child: NonPremiumIngredientPreferenceFilter(
                            onTap: _onNonPremiumIngredientPreferenceFilterTap,
                            isAuthenticated: appBloc.isAuthenticated,
                            onLearnAboutPremiumTap: widget.onTapLearnPremium,
                          ),
                        ),
                      },
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            child: Row(
              children: [
                Flexible(
                  child: DSButtonPrimary.ghost(
                    text:
                        sharedLocalizations
                            .filters_contentScreen_clearAllButton,
                    size: DSButtonSize.small,
                    onPressed: () {
                      filterBloc.add(FilterEvent.allFiltersCleared());
                    },
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp500),
                BlocBuilder<FilterBloc, FilterState>(
                  builder: (context, state) {
                    return Flexible(
                      child: DSButtonPrimary.fill(
                        text:
                            sharedLocalizations
                                .filters_contentScreen_showResultsButton,
                        size: DSButtonSize.small,
                        state:
                            filterBloc.isShowResultsCtaEnabled()
                                ? DSButtonState.normal
                                : DSButtonState.disabled,
                        onPressed: () {
                          context.pop(
                            ProductFiltersModel(
                              sortOption: filterBloc.updatedSortOption,
                              hazardLevel: filterBloc.updatedHazardLevel,
                              categories: filterBloc.updatedCategoryItems,
                              brands: filterBloc.updatedBrandItems,
                              ingredientPreferences:
                                  filterBloc
                                      .updatedIngredientPreferencesFilterModel,
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String getSelectedCategoryText({
    required HealthyLivingSharedLocalizations localizations,
    required int initialCategoriesLength,
    required int selectedCategoriesLength,
    required bool isDisabled,
  }) {
    if (isDisabled) {
      return localizations.filters_categoryFilter_selectedCategoriesWithCount(
        0,
      );
    } else if (selectedCategoriesLength == 0) {
      return "";
    } else if (initialCategoriesLength == selectedCategoriesLength) {
      return localizations.filters_categoryFilter_all;
    } else if (selectedCategoriesLength > 0) {
      return selectedCategoriesLength > 1
          ? localizations.filters_categoryFilter_selectedCategoriesWithCount(
            selectedCategoriesLength,
          )
          : localizations.filters_categoryFilter_selectedCategoryWithCount(
            selectedCategoriesLength,
          );
    }
    return "";
  }

  String getSelectedBrandText({
    required HealthyLivingSharedLocalizations localizations,
    required int initialBrandsLength,
    required int selectedBrandsLength,
    required bool isDisabled,
  }) {
    if (isDisabled) {
      return localizations.filters_brandFilter_selectedBrandsWithCount(0);
    } else if (selectedBrandsLength == 0) {
      return "";
    } else if (selectedBrandsLength > 0) {
      if (initialBrandsLength == selectedBrandsLength) {
        return localizations.filters_categoryFilter_all;
      } else {
        return selectedBrandsLength > 1
            ? localizations.filters_brandFilter_selectedBrandsWithCount(
              selectedBrandsLength,
            )
            : localizations.filters_brandFilter_selectedBrandWithCount(
              selectedBrandsLength,
            );
      }
    }
    return "";
  }

  void _onNonPremiumIngredientPreferenceFilterTap() {
    context.pop(
      FilterScreenResult(
        openPaywall: true,
        paywallSource:
            widget.filterOpenedFrom == FilterOpenedFrom.search
                ? PaywallSource.searchFiltersIngredientPreference
                : PaywallSource.browseFiltersIngredientPreference,
      ),
    );
  }
}
