import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        CategoryUiItem,
        HeaderWithTitle,
        HealthyLivingSharedLocalizations,
        LinkTextWidget,
        ProductCategory,
        injector;
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/category_bloc/category_filter_state.dart';

class CategoryFilterBottomSheet extends StatelessWidget {
  final String title;
  final List<CategoryUiItem> categories;
  final List<String> selectedCategories;
  final ValueChanged<List<CategoryUiItem>> onApply;
  final int? initialSelectedCategoryId;
  final int? initialSelectedSubCategoryId;
  final ProductCategory productCategory;

  const CategoryFilterBottomSheet({
    required this.title,
    required this.categories,
    required this.selectedCategories,
    required this.onApply,
    required this.productCategory,
    this.initialSelectedCategoryId,
    this.initialSelectedSubCategoryId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              injector.get<CategoryFilterBloc>()..add(
                CategoryFilterEvent.initialised(
                  categories:
                      categories
                          .map(
                            (category) => CategoryUiItem(
                              id: category.id,
                              count: category.count,
                              name: category.name,
                              subCategories: category.subCategories,
                              isExpanded: category.isExpanded,
                            ),
                          )
                          .toList(),
                  initiallySelected: selectedCategories.toSet(),
                  initialSelectedCategoryId: initialSelectedCategoryId,
                  initialSelectedSubCategoryId: initialSelectedSubCategoryId,
                  productCategory: productCategory,
                ),
              ),
      child: _CategoryFilterView(title: title, onApply: onApply),
    );
  }
}

class _CategoryFilterView extends StatelessWidget {
  final String title;
  final ValueChanged<List<CategoryUiItem>> onApply;

  const _CategoryFilterView({required this.title, required this.onApply});

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;
    final colors = context.dsColors;

    return BlocBuilder<CategoryFilterBloc, CategoryFilterState>(
      builder: (context, state) {
        final categoryFilterBloc = context.read<CategoryFilterBloc>();

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
                  children: [
                    HeaderWithTitle(
                      title: title,
                      textStyle: DSTextStyleType.primaryHeadingSBold,
                      leadIcon: DSIcons.icChevronLeft,
                      onTapLeadIcon: () => context.pop(),
                    ),
                    Flexible(
                      child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: state.categories.length,
                        separatorBuilder: (_, __) => DSDivider(),
                        itemBuilder: (context, index) {
                          final category =
                              categoryFilterBloc.updatedCategories[index];
                          final hasSubCategories =
                              category.subCategories.isNotEmpty;
                          final isSelected = category.isFullySelected;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(
                                  context.dsSpacing.sp400,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap:
                                            () => categoryFilterBloc.add(
                                              CategoryFilterEvent.categoryToggled(
                                                category.id,
                                              ),
                                            ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            IgnorePointer(
                                              child: DSCheckbox(
                                                status:
                                                    isSelected
                                                        ? DSCheckboxStatus
                                                            .selected
                                                        : DSCheckboxStatus
                                                            .unSelected,
                                                state:
                                                    DSCheckboxState
                                                        .defaultState,
                                                onChanged: (_) => (),
                                              ),
                                            ),
                                            Flexible(
                                              child: DSText(
                                                text: category.name,
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
                                    if (hasSubCategories &&
                                        (category.isAnySelected ||
                                            category.isExpanded))
                                      GestureDetector(
                                        onTap:
                                            () => categoryFilterBloc.add(
                                              CategoryFilterEvent.expandToggled(
                                                category.id,
                                              ),
                                            ),
                                        behavior: HitTestBehavior.opaque,
                                        child: LinkTextWidget(
                                          title:
                                              category.isExpanded
                                                  ? localizations
                                                      .filters_categoryFilter_collapse
                                                  : localizations
                                                      .filters_categoryFilter_expand,
                                          textStyle:
                                              DSTextStyleType
                                                  .primaryBodySRegular,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (category.isExpanded && hasSubCategories)
                                ...category.subCategories.map((sub) {
                                  final isSubSelected = sub.isSelected;
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      left: context.dsSpacing.sp800,
                                      right: context.dsSpacing.sp400,
                                      bottom: context.dsSpacing.sp400,
                                    ),
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.opaque,
                                      onTap:
                                          () => categoryFilterBloc.add(
                                            CategoryFilterEvent.subCategoryToggled(
                                              categoryId: category.id,
                                              subcategoryId: sub.id,
                                            ),
                                          ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IgnorePointer(
                                            child: DSCheckbox(
                                              status:
                                                  isSubSelected
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
                                              text: sub.name,
                                              textStyle:
                                                  DSTextStyleType
                                                      .primaryButtonLRegular,
                                              textColor:
                                                  colors.textNeutralOnWhite,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                            ],
                          );
                        },
                      ),
                    ),
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
                      blurRadius: context.dsRadius.rd100,
                      spreadRadius: context.dsRadius.rd100,
                    ),
                  ],
                ),
                child: SafeArea(
                  top: false,
                  child: Row(
                    children: [
                      Expanded(
                        child: DSButtonPrimary.ghost(
                          text: localizations.filters_categoryFilter_clearAll,
                          size: DSButtonSize.small,
                          onPressed:
                              () => categoryFilterBloc.add(
                                const CategoryFilterEvent.filtersCleared(),
                              ),
                        ),
                      ),
                      DSSpacingWidget.horizontal(
                        spacing: context.dsSpacing.sp500,
                      ),
                      Expanded(
                        child: DSButtonPrimary.fill(
                          text: localizations.filters_categoryFilter_apply,
                          size: DSButtonSize.small,
                          onPressed: () {
                            onApply(categoryFilterBloc.updatedCategories);
                            context.pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
