import 'dart:async';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/ui/widgets/usage_tile_widget.dart';
import 'package:healthy_living_scan/src/utils/submit_product_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductsAdditionalInfoContentScreen extends StatefulWidget {
  const SubmitProductsAdditionalInfoContentScreen({
    required this.infoUIModel,
    super.key,
  });

  final SubmitProductInfoParams infoUIModel;

  @override
  State<SubmitProductsAdditionalInfoContentScreen> createState() =>
      _SubmitProductsAdditionalInfoContentScreenState();
}

class _SubmitProductsAdditionalInfoContentScreenState
    extends State<SubmitProductsAdditionalInfoContentScreen> {
  final List<String> _unitOptions = SubmitProductUtils.getUnitOptions;
  String? _selectedUnit;

  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _unitController = TextEditingController();

  String? _unitError;
  String _usage = '';
  bool? _isDamagedSkin;

  @override
  void initState() {
    _selectedUnit = widget.infoUIModel.unitValue;
    _weightController.text = widget.infoUIModel.weightValue ?? '';
    _usage = widget.infoUIModel.productUsage ?? '';
    _isDamagedSkin = widget.infoUIModel.useOnDamagedSkin;
    _unitController.text = _selectedUnit ?? '';
    super.initState();
  }

  void _navigateToReviewScreen() async {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    String weightValue = _weightController.text.trim();
    if (_isInvalidWeight(weightValue)) {
      DSToast.showErrorToast(
        context: context,
        title: localization.productSubmit_pleaseEnterAValidWeightVolumeQty,
      );
      return;
    }
    if (weightValue.endsWith('.') && weightValue.length > 1) {
      weightValue = weightValue.substring(0, weightValue.length - 1);
    }
    final updatedModel = widget.infoUIModel.copyWith(
      unitValue: _selectedUnit,
      weightValue: weightValue.isValidValue ? weightValue : null,

      productUsage: _usage.isEmpty ? null : _usage,
      useOnDamagedSkin: _isDamagedSkin,
    );

    await injector.get<ProductSubmissionAnalytics>().logSubmitAddDetails(
      submissionId: widget.infoUIModel.submissionId ?? "",
      productCategory: widget.infoUIModel.productCategoryType.name,
      addDetailScreen:
          localization.submitProduct_productSubmission_additionalInfo,
    );
    if (!context.mounted) return;

    unawaited(
      context.pushNamed(
        AppRoutes.reviewSubmissionScreen.name,
        extra: updatedModel,
      ),
    );
  }

  bool _isInvalidWeight(String value) {
    final trimmed = value.trim();

    if (trimmed.isEmpty) return false;
    if (trimmed.contains(' ')) return true;
    final number = double.tryParse(trimmed);
    if (number == null) return true;
    if (number < 0) return true;
    return false;
  }

  void _skipAndNavigate() async {
    _resetFieldsToOriginal();

    final info =
        HealthyLivingScanLocalizations.of(
          context,
        )!.submitProduct_productSubmission_additionalInfo;

    /// Logs GA4 Skip Detail Event
    await injector.get<ProductSubmissionAnalytics>().logSubmitSkipDetails(
      productCategory: widget.infoUIModel.productCategoryType.name,
      submissionId: widget.infoUIModel.submissionId ?? "",
      skipDetailScreen: info,
    );
    if (!context.mounted) return;
    await context.pushNamed(
      AppRoutes.reviewSubmissionScreen.name,
      extra: widget.infoUIModel,
    );
  }

  void _resetFieldsToOriginal() {
    setState(() {
      _selectedUnit = widget.infoUIModel.unitValue;
      _unitController.text = _selectedUnit ?? '';

      _weightController.text = widget.infoUIModel.weightValue ?? '';

      _usage = widget.infoUIModel.productUsage ?? '';

      _isDamagedSkin = widget.infoUIModel.useOnDamagedSkin;

      _unitError = null;
    });
  }

  @override
  void dispose() {
    _weightController.dispose();
    _unitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DSText(
                      text:
                          localization
                              .submitProduct_productSubmission_additionalInfo,
                      textStyle: DSTextStyleType.primaryHeadingS,
                      textColor: context.dsColors.textNeutralOnWhite,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
                    DSText(
                      text:
                          localization
                              .submitProduct_productSubmission_thisInformationHelps,
                      textStyle: DSTextStyleType.primaryBodySRegular,
                      lineHeight: DSTypography.lineHeightLh300,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DSText(
                          text:
                              localization
                                  .submitProduct_productSubmission_productSize,
                          textStyle: DSTextStyleType.primarySubheadingXs,
                          textColor: context.dsColors.textNeutralOnWhite,
                          lineHeight: 1.5,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp200,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DSText(
                                    text:
                                        localization
                                            .submitProduct_productSubmission_weightVolumeQty,
                                    textStyle: DSTextStyleType.primaryCaption,
                                    textColor:
                                        context.dsColors.textNeutralOnWhite,
                                  ),
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp100,
                                  ),
                                  DSTextInput(
                                    hintText:
                                        localization
                                            .submitProduct_productSubmission_eg,
                                    controller: _weightController,
                                    keyboardType:
                                        TextInputType.numberWithOptions(
                                          decimal: true,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            DSSpacingWidget.horizontal(
                              spacing: context.dsSpacing.sp400,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DSText(
                                    text:
                                        localization
                                            .submitProduct_productSubmission_unit,
                                    textStyle: DSTextStyleType.primaryCaption,
                                    textColor:
                                        context.dsColors.textNeutralOnWhite,
                                  ),
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp100,
                                  ),
                                  DSDropdown.standard(
                                    items: _unitOptions,
                                    selectedItem: _selectedUnit,
                                    getLabel: (v) => v,
                                    hintText:
                                        localization
                                            .submitProduct_productSubmission_selectUnit,
                                    textEditingController: _unitController,
                                    textInputState:
                                        _unitError == null
                                            ? null
                                            : DSTextInputState.error,
                                    onChanged: (val) {
                                      setState(() {
                                        _selectedUnit = val;
                                        _unitController.text = val ?? '';
                                        _unitError = null;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                    if (widget.infoUIModel.productCategoryType ==
                            ProductCategory.sunscreen ||
                        widget.infoUIModel.productCategoryType ==
                            ProductCategory.personalCare) ...{
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSText(
                            text:
                                localization
                                    .submitProduct_productSubmission_usage,
                            textStyle: DSTextStyleType.primarySubheadingXs,
                            textColor: context.dsColors.textNeutralOnWhite,
                            lineHeight: 1.5,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp100,
                          ),
                          UsageTileWidget(
                            value: _usage,
                            onChanged: (String value) {
                              setState(() => _usage = value);
                            },
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp500,
                          ),
                          DSText(
                            text:
                                localization
                                    .submitProduct_productSubmission_isThisProductIntended,
                            textStyle: DSTextStyleType.primarySubheadingXs,
                            textColor: context.dsColors.textNeutralOnWhite,
                            lineHeight: 1.5,
                          ),
                          DSText(
                            text:
                                localization
                                    .submitProduct_productSubmission_egAcne,
                            textStyle: DSTextStyleType.primaryBodySRegular,
                            textColor: context.dsColors.textNeutralSecondary,
                            lineHeight: 1.5,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp500,
                          ),

                          Row(
                            children: [
                              DsRadio(
                                value: _isDamagedSkin == true,
                                onChanged:
                                    (_) =>
                                        setState(() => _isDamagedSkin = true),
                                label:
                                    localization
                                        .submitProduct_productSubmission_yes,
                              ),
                              DSSpacingWidget.horizontal(
                                spacing: context.dsSpacing.sp700,
                              ),
                              DsRadio(
                                value: _isDamagedSkin == false,
                                onChanged:
                                    (_) =>
                                        setState(() => _isDamagedSkin = false),
                                label:
                                    localization
                                        .submitProduct_productSubmission_no,
                              ),
                            ],
                          ),
                        ],
                      ),
                    },
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DSButtonPrimary(
                  text: localization.submitProduct_info_next,
                  onPressed: _navigateToReviewScreen,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                GestureDetector(
                  onTap: _skipAndNavigate,
                  child: Container(
                    height: 42,
                    alignment: Alignment.center,
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
        ],
      ),
    );
  }
}
