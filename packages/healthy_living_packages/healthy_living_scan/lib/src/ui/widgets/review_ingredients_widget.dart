import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/widgets/active_ingredient_section_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/suggest_a_fix_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ReviewIngredientsWidget extends StatefulWidget {
  const ReviewIngredientsWidget({
    required this.infoUIModel,
    required this.onIngredientUpdate,
    super.key,
  });

  final SubmitProductInfoParams infoUIModel;
  final ValueChanged<String> onIngredientUpdate;

  @override
  State<ReviewIngredientsWidget> createState() =>
      _ReviewIngredientsWidgetState();
}

class _ReviewIngredientsWidgetState extends State<ReviewIngredientsWidget> {
  bool isSuggestActive = false;

  String get _displayIngredients {
    return widget.infoUIModel.ingredientText ?? widget.infoUIModel.ingredients;
  }

  bool get _hasSubmittedSuggestion {
    final edited = widget.infoUIModel.ingredientText;
    final original = widget.infoUIModel.ingredients;

    if (edited == null) return false;

    return edited.trim().isNotEmpty && edited.trim() != original.trim();
  }

  @override
  void initState() {
    super.initState();
    if (_hasSubmittedSuggestion) {
      isSuggestActive = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final HealthyLivingSharedLocalizations sharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;

    void toggleSuggestFix() {
      setState(() {
        isSuggestActive = !isSuggestActive;
      });
    }

    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralBackgroundLight,
          borderRadius: BorderRadius.circular(context.dsRadius.rd200),
          border: Border.all(
            color: context.dsColors.textPrimaryHighlightSearch,
          ),
        ),
        padding: EdgeInsets.all(context.dsSpacing.sp400),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DSText(
              text:
                  localization
                      .submitProduct_productSubmission_reviewIngredients,
              textStyle: DSTextStyleType.primaryHeadingS,
              textColor: context.dsColors.textNeutralOnWhite,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
            DSText(
              text:
                  localization.submitProduct_productSubmission_wePulledThisList,
              textStyle: DSTextStyleType.primaryBodySRegular,
              textColor: context.dsColors.textNeutralSecondary,
            ),

            if (widget.infoUIModel.productCategoryType ==
                    ProductCategory.sunscreen &&
                widget.infoUIModel.activeIngredient.isValidList) ...[
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
              ActiveIngredientSectionWidget(infoUIModel: widget.infoUIModel),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),

              DSText(
                text: localization.submitProduct_info_inactiveIngredients,
                textStyle: DSTextStyleType.primaryCaption,
                textColor: context.dsColors.textNeutralDisabled,
              ),
            ] else ...[
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),

              DSText(
                text: localization.submitProduct_productSubmission_ingredients,
                textStyle: DSTextStyleType.primaryCaption,
                textColor: context.dsColors.textNeutralDisabled,
              ),
            ],
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),

            Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp300,
                vertical: context.dsSpacing.sp200,
              ),
              decoration: BoxDecoration(
                color: context.dsColors.strokeNeutralDisabled,
                borderRadius: BorderRadius.circular(context.dsRadius.rd200),
                border: Border.all(
                  color: context.dsColors.strokeNeutralDefault,
                ),
              ),
              child: DSText(
                text:
                    widget.infoUIModel.ingredients.isValidValue
                        ? widget.infoUIModel.ingredients
                        : sharedLocalizations.general_na,
                textStyle: DSTextStyleType.primaryBodySRegular,
                textColor: context.dsColors.textNeutralSecondary,
              ),
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),

            if (!isSuggestActive)
              Column(
                children: [
                  Center(
                    child: TextButton.icon(
                      onPressed: toggleSuggestFix,
                      icon: DSImage.asset(
                        DSIcons.icFix,
                        height: context.dsSizes.sz400,
                        width: context.dsSizes.sz400,
                      ),
                      label: DSText(
                        text:
                            localization
                                .submitProduct_productSubmission_suggestAFix,
                        textStyle: DSTextStyleType.primarySubHeadingM,
                        textColor: context.dsColors.textPrimaryDefault,
                      ),
                    ),
                  ),
                ],
              ),
            if (isSuggestActive)
              SuggestAFixWidget(
                ingredients: _displayIngredients,
                onCancel: () {
                  setState(() {
                    isSuggestActive = false;
                  });
                },
                onSubmit: (updatedIngredients) {
                  widget.onIngredientUpdate(updatedIngredients);
                  setState(() {
                    isSuggestActive = true;
                  });
                },
                originalIngredients: widget.infoUIModel.ingredients,
              ),
          ],
        ),
      ),
    );
  }
}
