import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/widgets/categories_radio_selection_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CategorySelectionItem extends StatelessWidget {
  const CategorySelectionItem({
    required this.category,
    required this.selected,
    required this.onTap,
    required this.onSelectSubCategory,
    required this.selectedSubCategoryId,
    this.showSubCategories = true,
    super.key,
  });

  final BrowseCategoryModel category;
  final bool selected;
  final VoidCallback onTap;
  final void Function(int subId) onSelectSubCategory;
  final int? selectedSubCategoryId;
  final bool showSubCategories;

  @override
  Widget build(BuildContext context) {
    final hasSubs =
        showSubCategories && (category.subCategories ?? []).isNotEmpty;
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;

    final sortedSubs = List<BrowseSubCategoryModel>.from(
      category.subCategories ?? [],
    )..sort(
      (a, b) =>
          (a.name ?? '').toLowerCase().compareTo((b.name ?? '').toLowerCase()),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            child: Row(
              children: [
                CategoriesRadioSelectionWidget(isChecked: selected),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp300),
                Expanded(
                  child: DSText(
                    text: category.name?.toTitleCase() ?? '-',
                    textStyle:
                        showSubCategories == false
                            ? DSTextStyleType.primaryBodySRegular
                            : DSTextStyleType.primaryBodyMMedium,
                    textColor: context.dsColors.textNeutralOnWhite,
                  ),
                ),
                if (selected && hasSubs)
                  DSText.rich(
                    textSpan: TextSpan(
                      text: localization.submitProduct_info_collapse,
                      recognizer: TapGestureRecognizer()..onTap = onTap,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: context.dsColors.textPrimaryLink,
                      ),
                    ),
                    textStyle: DSTextStyleType.primaryBodyMMedium,
                    textColor: context.dsColors.textPrimaryLink,
                  ),
              ],
            ),
          ),
        ),

        if (selected && hasSubs) ...[
          for (final sub in sortedSubs)
            InkWell(
              onTap: () => onSelectSubCategory(sub.id!),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  context.dsSpacing.sp800,
                  context.dsSpacing.sp400,
                  context.dsSpacing.sp400,
                  context.dsSpacing.sp400,
                ),
                child: Row(
                  children: [
                    CategoriesRadioSelectionWidget(
                      isChecked: selectedSubCategoryId == sub.id,
                    ),
                    DSSpacingWidget.horizontal(
                      spacing: context.dsSpacing.sp300,
                    ),
                    Expanded(
                      child: DSText(
                        text: sub.name?.toTitleCase() ?? '-',
                        textStyle: DSTextStyleType.primaryBodySRegular,
                        textColor: context.dsColors.textNeutralOnWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ],
    );
  }
}
