import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/brand_bloc/brand_filter_state.dart';
import 'package:healthy_living_shared/src/ui/models/filters/brand_ui_item.dart';

class BrandFilterBottomSheet extends StatelessWidget {
  final String title;
  final List<BrandUiItem> initialBrands;
  final ValueChanged<List<BrandUiItem>> onApply;

  const BrandFilterBottomSheet({
    required this.title,
    required this.initialBrands,
    required this.onApply,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              injector.get<BrandFilterBloc>()
                ..add(BrandFiltersInitialised(brands: initialBrands)),
      child: _BrandFilterView(title: title, onApply: onApply),
    );
  }
}

class _BrandFilterView extends StatelessWidget {
  final String title;
  final ValueChanged<List<BrandUiItem>> onApply;

  const _BrandFilterView({required this.title, required this.onApply});

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;
    final colors = context.dsColors;

    return SafeArea(
      child: BlocBuilder<BrandFilterBloc, BrandFilterState>(
        builder: (context, state) {
          final brandFilterBloc = context.read<BrandFilterBloc>();

          final isFilteredBrandEmpty =
              state.filteredBrands.isEmpty &&
              brandFilterBloc.searchQuery.isNotEmpty;

          return Container(
            decoration: BoxDecoration(
              color: colors.surfaceNeutralContainerWhite,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(context.dsRadius.rd500),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        isFilteredBrandEmpty
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                    children: [
                      HeaderWithTitle(
                        title: title,
                        textStyle: DSTextStyleType.primaryHeadingSBold,
                        leadIcon: DSIcons.icChevronLeft,
                        onTapLeadIcon: () => context.pop(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.dsSpacing.sp400,
                          vertical: context.dsSpacing.sp300,
                        ),
                        child: DSTextInput(
                          hintText: 'Search brands',
                          size: DSTextInputSize.small,
                          borderRadius: BorderRadius.circular(
                            context.dsRadius.rd1000,
                          ),
                          leadingIconPath: DSIcons.icSearch,
                          trailingIconPath:
                              state.searchQuery.isNotEmpty
                                  ? DSIcons.icClose
                                  : null,
                          onChanged: (query) {
                            brandFilterBloc.add(
                              BrandFilterEvent.searchQueryChanged(query.trim()),
                            );
                          },
                          onTextClearIconTap: () {
                            brandFilterBloc.add(
                              BrandFilterEvent.searchQueryChanged(''),
                            );
                          },
                          enableTextClearIcon: true,
                        ),
                      ),
                      if (isFilteredBrandEmpty) ...{
                        NoSearchResultsWidget(
                          title: localizations.find_search_noResultsMatch(
                            brandFilterBloc.searchQuery,
                          ),
                          description:
                              localizations.find_search_checkTheSpelling,
                          showLinkCta: false,
                        ),
                      } else ...{
                        if (!brandFilterBloc.searchQuery.isValidValue) ...{
                          Padding(
                            padding: EdgeInsets.all(context.dsSpacing.sp400),
                            child: GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap:
                                  () => brandFilterBloc.add(
                                    BrandFilterEvent.allBrandsToggled(),
                                  ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IgnorePointer(
                                    child: DSCheckbox(
                                      status:
                                          brandFilterBloc.allSelected
                                              ? DSCheckboxStatus.selected
                                              : DSCheckboxStatus.unSelected,
                                      state: DSCheckboxState.defaultState,
                                      onChanged: (_) => (),
                                    ),
                                  ),
                                  DSText(
                                    text:
                                        localizations
                                            .filters_categoryFilter_all,
                                    textStyle:
                                        DSTextStyleType.primaryButtonLMedium,
                                    textColor: colors.textNeutralOnWhite,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          DSDivider(),
                        },
                        Flexible(
                          child: Scrollbar(
                            child: ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount:
                                  brandFilterBloc.searchQuery.isNotEmpty
                                      ? state.filteredBrands.length
                                      : brandFilterBloc.updatedBrands.length,
                              itemBuilder: (context, index) {
                                final brand =
                                    brandFilterBloc.searchQuery.isNotEmpty
                                        ? brandFilterBloc.filteredBrands[index]
                                        : brandFilterBloc.updatedBrands[index];

                                return Padding(
                                  padding: EdgeInsets.all(
                                    context.dsSpacing.sp400,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.opaque,
                                      onTap:
                                          () => context
                                              .read<BrandFilterBloc>()
                                              .add(BrandToggled(brand.name)),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IgnorePointer(
                                            child: DSCheckbox(
                                              status:
                                                  brand.isSelected
                                                      ? DSCheckboxStatus
                                                          .selected
                                                      : DSCheckboxStatus
                                                          .unSelected,
                                              state:
                                                  DSCheckboxState.defaultState,
                                              onChanged: (_) => (),
                                            ),
                                          ),
                                          Flexible(
                                            child: DSText(
                                              text: brand.name,
                                              textStyle:
                                                  DSTextStyleType
                                                      .primaryButtonLMedium,
                                              textColor:
                                                  colors.textNeutralOnWhite,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      },
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(context.dsSpacing.sp400),
                  decoration: BoxDecoration(
                    color: colors.surfaceNeutralBackgroundWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.08),
                        offset: const Offset(0, -1),
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: DSButtonPrimary.ghost(
                          text: localizations.filters_categoryFilter_clearAll,
                          size: DSButtonSize.small,
                          onPressed: () {
                            brandFilterBloc.add(BrandFiltersCleared());
                          },
                        ),
                      ),
                      DSSpacingWidget.horizontal(
                        spacing: context.dsSpacing.sp500,
                      ),
                      Expanded(
                        child: DSButtonPrimary.fill(
                          text: localizations.filters_categoryFilter_apply,
                          size: DSButtonSize.small,
                          state:
                              brandFilterBloc.isApplyCtaEnabled
                                  ? DSButtonState.normal
                                  : DSButtonState.disabled,
                          onPressed: () {
                            onApply(brandFilterBloc.updatedBrands);
                            context.pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
