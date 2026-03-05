import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';

class SuggestAFixWidget extends StatefulWidget {
  const SuggestAFixWidget({
    required this.ingredients,
    required this.originalIngredients,
    required this.onCancel,
    required this.onSubmit,
    super.key,
  });

  final String ingredients;
  final VoidCallback onCancel;
  final ValueChanged<String> onSubmit;
  final String originalIngredients;

  @override
  State<SuggestAFixWidget> createState() => _SuggestAFixWidgetState();
}

class _SuggestAFixWidgetState extends State<SuggestAFixWidget> {
  late TextEditingController ingredientsController;
  bool isSubmitted = false;

  @override
  void initState() {
    super.initState();
    ingredientsController = TextEditingController(text: widget.ingredients);
    ingredientsController.addListener(() {
      final updatedText = ingredientsController.text.trim();
      widget.onSubmit(updatedText);
      setState(() {});
    });
  }

  @override
  void dispose() {
    ingredientsController.dispose();
    super.dispose();
  }

  void _revertToOriginal() {
    setState(() {
      ingredientsController.text = widget.originalIngredients;
    });
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final HealthyLivingSharedLocalizations sharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final bool hasChanges =
        ingredientsController.text.trim() != widget.ingredients.trim();

    final bool isDifferentFromOriginal =
        ingredientsController.text.trim() != widget.originalIngredients.trim();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          text: localization.submitProduct_productSubmission_suggestAFix,
          textStyle: DSTextStyleType.primaryHeadingS,
          textColor: context.dsColors.textNeutralOnWhite,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
        DSText(
          text:
              localization
                  .submitProduct_productSubmission_yourCorrectionWillBeSent,
          textStyle: DSTextStyleType.primaryBodySRegular,
          textColor: context.dsColors.textNeutralSecondary,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DSText(
              text:
                  isDifferentFromOriginal
                      ? localization
                          .submitProduct_productSubmission_ingredientsEdited
                      : localization
                          .submitProduct_productSubmission_ingredients,
              textStyle: DSTextStyleType.primaryCaption,
              textColor: context.dsColors.textNeutralOnWhite,
            ),

            DSText.rich(
              textSpan: TextSpan(
                text:
                    localization
                        .submitProduct_productSubmission_revertToOriginal,
                recognizer:
                    isSubmitted
                        ? null
                        : (TapGestureRecognizer()..onTap = _revertToOriginal),
                style: DSTextStyleType.primaryLinkS.getTextStyle().copyWith(
                  color:
                      isDifferentFromOriginal && !isSubmitted
                          ? context.dsColors.textPrimaryLink
                          : context.dsColors.textNeutralDisabled,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      isDifferentFromOriginal && !isSubmitted
                          ? context.dsColors.textPrimaryLink
                          : context.dsColors.textNeutralDisabled,
                ),
              ),

              textStyle: DSTextStyleType.primaryLinkS,
              textColor: context.dsColors.textNeutralDisabled,
            ),
          ],
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

        DSTextInput(
          controller: ingredientsController,
          maxLines: 10,
          enabled: !isSubmitted,
          textStyle: DSTextStyleType.primaryBodySRegular,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
        DSText(
          text:
              localization
                  .submitProduct_productSubmission_useACommaSeparatedList,
          textStyle: DSTextStyleType.primaryCaption,
          textColor: context.dsColors.textNeutralFade,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
        /*if (!isSubmitted) ...[
          DSButtonPrimary(
            text: localization.submitProduct_productSubmission_submitForReview,
            state: hasChanges ? DSButtonState.normal : DSButtonState.disabled,
            onPressed: hasChanges ? _handleSubmit : null,
            size: DSButtonSize.small,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          Center(
            child: TextButton(
              onPressed: widget.onCancel,
              child: DSText(
                text: sharedLocalizations.general_cancel,
                textStyle: DSTextStyleType.primarySubHeadingM,
                textColor: context.dsColors.textNeutralSecondary,
              ),
            ),
          ),
        ] else ...{
          Padding(
            padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DSImage.asset(DSIcons.icLike),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp100),
                DSText(
                  text:
                      localization
                          .submitProduct_productSubmission_yourSuggestionWasSaved,
                  textStyle: DSTextStyleType.primaryButtonLRegular,
                  textColor: context.dsColors.textPrimaryDefault,
                ),
              ],
            ),
          ),
        },*/
      ],
    );
  }
}
