import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/ui/widgets/category_selection_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubCategorySelectionContentScreen extends StatefulWidget {
  final SubmitProductInfoParams infoUIModel;

  const SubCategorySelectionContentScreen({
    required this.infoUIModel,
    super.key,
  });

  @override
  State<SubCategorySelectionContentScreen> createState() =>
      _SubCategorySelectionContentScreenState();
}

class _SubCategorySelectionContentScreenState
    extends State<SubCategorySelectionContentScreen> {
  int? _selectedCategoryId;
  int? _selectedSubCategoryId;

  void _onSelectCategory(int categoryId) async {
    final bool wasAlreadySelected = _selectedCategoryId == categoryId;
    setState(() {
      if (_selectedCategoryId == categoryId) {
        _selectedCategoryId = null;
        _selectedSubCategoryId = null;
      } else {
        _selectedCategoryId = categoryId;
        _selectedSubCategoryId = null;
      }
    });

    if (!wasAlreadySelected &&
        widget.infoUIModel.productCategoryType == ProductCategory.food) {
      final categories =
          widget.infoUIModel.groupCategoryModel?.categories ?? [];
      final selectedCategory = categories.firstWhere(
        (cat) => cat.id == categoryId,
      );
      final updatedModel = widget.infoUIModel.copyWith(
        categoryGroupName: widget.infoUIModel.groupCategoryModel?.name,
        categoryName: selectedCategory.name,
      );

      await injector.get<ProductSubmissionAnalytics>().logSubmitAddDetails(
        submissionId: updatedModel.submissionId ?? "",
        productCategory: updatedModel.productCategoryType.name,
        addDetailScreen: updatedModel.categoryName ?? "",
      );
      if (!context.mounted) return;
      await context.pushNamed(
        AppRoutes.submitProductsAdditionalInfoScreen.name,
        extra: updatedModel,
      );
    }
  }

  void _onSelectSubCategory(int subId) async {
    setState(() => _selectedSubCategoryId = subId);

    if (widget.infoUIModel.productCategoryType ==
            ProductCategory.personalCare ||
        widget.infoUIModel.productCategoryType == ProductCategory.sunscreen) {
      final categories =
          widget.infoUIModel.groupCategoryModel?.categories ?? [];

      final selectedCategory = categories.firstWhere(
        (cat) => cat.id == _selectedCategoryId,
      );
      final selectedSubCategory = selectedCategory.subCategories?.firstWhere(
        (sub) => sub.id == subId,
      );
      final updatedModel = widget.infoUIModel.copyWith(
        categoryGroupName: widget.infoUIModel.groupCategoryModel?.name,
        categoryName: selectedCategory.name,
        subCategoryName: selectedSubCategory?.name,
      );

      await injector.get<ProductSubmissionAnalytics>().logSubmitAddDetails(
        submissionId: updatedModel.submissionId ?? "",
        productCategory: updatedModel.productCategoryType.name,
        addDetailScreen:
            widget.infoUIModel.groupCategoryModel?.name?.toSmartTitleCase() ??
            "",
      );
      if (!context.mounted) return;

      await context.pushNamed(
        AppRoutes.submitProductFormScreen.name,
        extra: updatedModel,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeSelection();
  }

  void _initializeSelection() {
    final categories = widget.infoUIModel.groupCategoryModel?.categories ?? [];

    if (widget.infoUIModel.categoryName != null && categories.isNotEmpty) {
      try {
        final matchingCategory = categories.firstWhere(
          (cat) => cat.name == widget.infoUIModel.categoryName,
        );

        _selectedCategoryId = matchingCategory.id;

        if (widget.infoUIModel.subCategoryName != null) {
          final subCategories = matchingCategory.subCategories ?? [];
          try {
            final matchingSubCategory = subCategories.firstWhere(
              (sub) => sub.name == widget.infoUIModel.subCategoryName,
            );
            _selectedSubCategoryId = matchingSubCategory.id;
          } catch (_) {}
        }
      } catch (_) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final main = widget.infoUIModel.groupCategoryModel;
    final categories = List<BrowseCategoryModel>.from(
      main?.categories ?? [],
    )..sort(
      (a, b) =>
          (a.name ?? '').toLowerCase().compareTo((b.name ?? '').toLowerCase()),
    );

    final bool isFoodCategory =
        widget.infoUIModel.productCategoryType == ProductCategory.food;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: context.dsSpacing.sp400,
          right: context.dsSpacing.sp400,
        ),
        child: SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSText(
                text:
                    widget.infoUIModel.groupCategoryModel?.name
                        ?.toSmartTitleCase(),
                textStyle: DSTextStyleType.primaryHeadingS,
                textColor: context.dsColors.textNeutralOnWhite,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
              DSText(
                text: localization.submitProduct_info_selectTheSubcategory,
                textStyle: DSTextStyleType.primaryBodySRegular,
                textColor: context.dsColors.textNeutralSecondary,
                lineHeight: 1.5,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

              if (!categories.isValidList)
                Center(
                  child: DSText(
                    text: localization.submitProduct_info_dataNotLoaded,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    textColor: context.dsColors.textNeutralSecondary,
                  ),
                )
              else
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: context.dsSpacing.sp400),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      final isSelected = category.id == _selectedCategoryId;
                      final sortedSubs = List<BrowseSubCategoryModel>.from(
                        category.subCategories ?? [],
                      )..sort(
                        (a, b) => (a.name ?? '').toLowerCase().compareTo(
                          (b.name ?? '').toLowerCase(),
                        ),
                      );
                      final sortedCategory = category.copyWith(
                        subCategories: sortedSubs,
                      );
                      return CategorySelectionItem(
                        category: sortedCategory,
                        selected: isSelected,
                        onTap: () => _onSelectCategory(category.id!),
                        onSelectSubCategory:
                            isFoodCategory ? (_) {} : _onSelectSubCategory,
                        selectedSubCategoryId: _selectedSubCategoryId,
                        showSubCategories: !isFoodCategory,
                      );
                    },
                  ),
                ),

              GestureDetector(
                onTap: () async {
                  /// Logs GA4 Skip Detail Event
                  await injector
                      .get<ProductSubmissionAnalytics>()
                      .logSubmitSkipDetails(
                        skipDetailScreen:
                            widget.infoUIModel.groupCategoryModel?.name
                                ?.toSmartTitleCase() ??
                            "",
                        productCategory:
                            widget.infoUIModel.productCategoryType.name,
                        submissionId: widget.infoUIModel.submissionId ?? "",
                      );
                  setState(() {
                    _selectedCategoryId = null;
                    _selectedSubCategoryId = null;
                  });
                  final clearedModel = widget.infoUIModel.copyWith(
                    categoryGroupName: widget.infoUIModel.categoryGroupName,
                    categoryName: null,
                    subCategoryName: null,
                  );
                  if (context.mounted) {
                    if (widget.infoUIModel.productCategoryType ==
                            ProductCategory.personalCare ||
                        widget.infoUIModel.productCategoryType ==
                            ProductCategory.sunscreen) {
                      await context.pushNamed(
                        AppRoutes.submitProductFormScreen.name,
                        extra: clearedModel,
                      );
                    } else {
                      await context.pushNamed(
                        AppRoutes.submitProductsAdditionalInfoScreen.name,
                        extra: clearedModel,
                      );
                    }
                  }
                },
                child: Container(
                  height: 74,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(context.dsSpacing.sp400),
                  child: DSText(
                    text: localization.submitProduct_info_skip,
                    textStyle: DSTextStyleType.primaryButtonLRegular,
                    textColor: context.dsColors.textPrimaryDefault,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
