import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/domain/models/sunscreen_active_ingredient_ui_model.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_state.dart';
import 'package:healthy_living_scan/src/utils/submit_product_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SunscreenDetailInfoContentScreen extends StatefulWidget {
  const SunscreenDetailInfoContentScreen({
    required this.infoUIModel,
    super.key,
    this.onNext,
  });

  final SubmitProductInfoParams infoUIModel;

  final void Function({
    required int spf,
    required List<Map<String, dynamic>> ingredients,
  })?
  onNext;

  @override
  State<SunscreenDetailInfoContentScreen> createState() =>
      _SunscreenDetailInfoContentScreenState();
}

class _SunscreenDetailInfoContentScreenState
    extends State<SunscreenDetailInfoContentScreen> {
  final _formKey = GlobalKey<FormState>();

  int? _selectedSpf;
  late final TextEditingController _spfController;
  final List<SunscreenActiveIngredientUIModel> _activeIngredients = [];
  bool _hasInitialized = false;

  @override
  void initState() {
    super.initState();
    _selectedSpf =
        widget.infoUIModel.sunscreenSpfValue != null
            ? int.tryParse(widget.infoUIModel.sunscreenSpfValue!)
            : null;

    _spfController = TextEditingController(
      text: _selectedSpf?.toString() ?? '',
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SubmitProductBloc>().add(
        const SubmitProductEvent.fetchSunscreenActiveIngredients(),
      );
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_hasInitialized) {
      _hasInitialized = true;
      _initActiveIngredients();
    }
  }

  bool _hasAnyActiveIngredientInput() {
    return _activeIngredients.any((row) {
      final ingredientText = row.ingredientController.text.trim();
      final percentageText = row.percentageController.text.trim();
      return ingredientText.isValidValue || percentageText.isValidValue;
    });
  }

  void _addIngredient() {
    for (final row in _activeIngredients) {
      final trimmedIngredient = row.ingredientController.text.trim();
      if (row.ingredientController.text != trimmedIngredient) {
        row.ingredientController.text = trimmedIngredient;
      }
      final normalizedPercentage = _normalizePercentage(
        row.percentageController.text,
      );
      if (row.percentageController.text != normalizedPercentage) {
        row.percentageController.text = normalizedPercentage;
      }
      row.ingredient = trimmedIngredient;
      row.percentage = normalizedPercentage;
    }

    if (_activeIngredients.length >=
        IntegerConstants.sunscreenActiveIngredientsLength) {
      DSToast.show(
        context: context,
        title:
            HealthyLivingScanLocalizations.of(
              context,
            )!.submitProduct_productSubmission_youCanAddUpTo,
      );
      return;
    }
    if (!_validateActiveIngredients(allowAllEmpty: false)) {
      return;
    }

    setState(() {
      _activeIngredients.add(
        SunscreenActiveIngredientUIModel(ingredient: '', percentage: ''),
      );
    });
  }

  @override
  void dispose() {
    _spfController.dispose();
    super.dispose();
  }

  void _removeIngredient(int index) {
    setState(() {
      _activeIngredients[index].ingredientController.dispose();
      _activeIngredients[index].percentageController.dispose();
      _activeIngredients.removeAt(index);
    });
  }

  bool _isPercentageValid(String value) {
    final normalized = _normalizePercentage(value);

    if (normalized.isEmpty) return true;
    if (normalized.contains(' ')) return false;
    final number = double.tryParse(normalized);
    if (number == null) return false;
    if (number < 0) return false;
    return true;
  }

  String _normalizePercentage(String value) {
    var trimmed = value.trim();
    if (trimmed.endsWith('.') && trimmed.length > 1) {
      trimmed = trimmed.substring(0, trimmed.length - 1);
    }
    return trimmed;
  }

  bool _validateForm() {
    if (_selectedSpf == null) {
      DSToast.show(
        context: context,
        title:
            HealthyLivingScanLocalizations.of(
              context,
            )!.submitProduct_info_spfRequired,
      );
      return false;
    }

    if (!_validateActiveIngredients(allowAllEmpty: true)) {
      return false;
    }

    return true;
  }

  List<Map<String, dynamic>> _getIngredientsData() {
    return _activeIngredients
        .where(
          (row) =>
              row.ingredientController.text.trim().isValidValue &&
              _isPercentageValid(row.percentageController.text),
        )
        .map((row) {
          final ingredient = row.ingredientController.text.trim();
          final percentage = _normalizePercentage(
            row.percentageController.text,
          );
          return <String, dynamic>{
            StringConstants.ingredient: ingredient,
            StringConstants.percentage: percentage,
          };
        })
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BlocBuilder<SubmitProductBloc, SubmitProductState>(
        builder: (context, state) {
          List<String> suggestions = const [];

          if (state is SunscreenActiveIngredientsLoaded) {
            suggestions = state.ingredients;
          }
          return Form(
            key: _formKey,
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
                                    .submitProduct_info_sunscreenDetails,
                            textStyle: DSTextStyleType.primaryHeadingS,
                            textColor: context.dsColors.textNeutralOnWhite,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp100,
                          ),
                          DSText(
                            text:
                                localization
                                    .submitProduct_info_provideTheFollowingInformation,
                            textStyle: DSTextStyleType.primaryBodySRegular,
                            lineHeight: DSTypography.lineHeightLh300,
                            textColor: context.dsColors.textNeutralSecondary,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp600,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DSText(
                                text:
                                    localization
                                        .submitProduct_info_protectionLevelSPF,
                                textStyle: DSTextStyleType.primaryCaption,
                                textColor: context.dsColors.textNeutralOnWhite,
                              ),
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp100,
                              ),
                              DSDropdown<int>.standard(
                                items: SubmitProductUtils.getSpfOptions,
                                selectedItem: _selectedSpf,
                                getLabel: (value) => '$value',
                                hintText: localization.submitProduct_info_spf,
                                textEditingController: _spfController,
                                onChanged: (val) {
                                  setState(() {
                                    _selectedSpf = val;
                                    _spfController.text =
                                        val != null ? val.toString() : '';
                                  });
                                },
                              ),
                            ],
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp600,
                          ),

                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _activeIngredients.length,
                            separatorBuilder:
                                (context, index) => DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp400,
                                ),
                            itemBuilder: (context, index) {
                              final row = _activeIngredients[index];
                              final ingredientController =
                                  row.ingredientController;
                              final percentageController =
                                  row.percentageController;

                              return Row(
                                key: row.key,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DSText(
                                          text:
                                              localization
                                                  .submitProduct_info_activeIngredient,
                                          textStyle:
                                              DSTextStyleType.primaryCaption,
                                          textColor:
                                              context
                                                  .dsColors
                                                  .textNeutralOnWhite,
                                        ),
                                        DSSpacingWidget.vertical(
                                          spacing: context.dsSpacing.sp100,
                                        ),
                                        DSDropdown<String>.search(
                                          items: suggestions,
                                          getLabel: (v) => v,
                                          selectedItem:
                                              !row.ingredient.isValidValue
                                                  ? null
                                                  : row.ingredient,
                                          textEditingController:
                                              ingredientController,
                                          onChanged: (val) {
                                            ingredientController.text =
                                                val ?? "";
                                            row.ingredient = val ?? '';
                                            row.hasSelectedIngredient = true;
                                            setState(() {});
                                          },
                                          hintText: '',
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DSText(
                                          text:
                                              localization
                                                  .submitProduct_info_percentage,
                                          textStyle:
                                              DSTextStyleType.primaryCaption,
                                          textColor:
                                              context
                                                  .dsColors
                                                  .textNeutralOnWhite,
                                        ),
                                        DSSpacingWidget.vertical(
                                          spacing: context.dsSpacing.sp100,
                                        ),
                                        DSTextInput(
                                          controller: percentageController,
                                          trailingIconPath:
                                              DSIcons.icPercentage,
                                          hintText: '0',
                                          keyboardType:
                                              TextInputType.numberWithOptions(
                                                decimal: true,
                                              ),
                                          iconSize: DSTextInputIconSize.xSmall,
                                          onChanged: (val) {
                                            row.percentage = val;
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (_activeIngredients.length > 1) ...[
                                    DSSpacingWidget.horizontal(
                                      spacing: context.dsSpacing.sp200,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: context.dsSpacing.sp600,
                                      ),
                                      child: GestureDetector(
                                        onTap: () => _removeIngredient(index),
                                        child: DSImage.asset(
                                          DSIcons.icDelete,
                                          height: context.dsSizes.sz400,
                                          width: context.dsSizes.sz400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              );
                            },
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp500,
                          ),
                          GestureDetector(
                            onTap:
                                _activeIngredients.length < 8
                                    ? _addIngredient
                                    : null,
                            child: Opacity(
                              opacity:
                                  _activeIngredients.length < 8 ? 1.0 : 0.4,
                              child: Row(
                                children: [
                                  DSImage.asset(DSIcons.icAdd),
                                  DSSpacingWidget.horizontal(
                                    spacing: context.dsSpacing.sp100,
                                  ),
                                  DSText(
                                    text:
                                        localization
                                            .submitProduct_info_addActiveIngredient,
                                    textStyle:
                                        DSTextStyleType.primaryButtonLMedium,
                                    textColor:
                                        context.dsColors.textPrimaryDefault,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(context.dsSpacing.sp400),
                  child: DSButtonPrimary(
                    text: localization.submitProduct_info_next,
                    onPressed: () async {
                      for (final row in _activeIngredients) {
                        final raw = row.percentageController.text;
                        final normalized = _normalizePercentage(raw);
                        if (row.percentageController.text != normalized) {
                          row.percentageController.text = normalized;
                          row.percentage = normalized;
                        }
                      }

                      if (!_validateForm()) return;

                      final ingredientsData = _getIngredientsData();
                      final activeIngredientsModels =
                          _getActiveIngredientsRequestModels();

                      final updatedInfoModel = widget.infoUIModel.copyWith(
                        sunscreenSpfValue: _selectedSpf?.toString(),
                        activeIngredient: activeIngredientsModels,
                      );
                      if (widget.onNext != null && _selectedSpf != null) {
                        widget.onNext!(
                          spf: _selectedSpf!,
                          ingredients: ingredientsData,
                        );
                      }

                      await injector
                          .get<ProductSubmissionAnalytics>()
                          .logSubmitAddDetails(
                            submissionId: widget.infoUIModel.submissionId ?? "",
                            productCategory:
                                widget.infoUIModel.productCategoryType.name,
                            addDetailScreen:
                                localization
                                    .submitProduct_info_sunscreenDetails,
                          );

                      if (!context.mounted) return;

                      await context.pushNamed(
                        AppRoutes.submitProductFormScreen.name,
                        extra: updatedInfoModel,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  List<ActiveIngredientRequestModel> _getActiveIngredientsRequestModels() {
    return _activeIngredients
        .where(
          (row) =>
              row.ingredientController.text.trim().isValidValue &&
              _isPercentageValid(row.percentageController.text),
        )
        .map(
          (row) => ActiveIngredientRequestModel(
            ingredient: row.ingredientController.text.trim(),
            percent: _normalizePercentage(row.percentageController.text),
          ),
        )
        .toList();
  }

  void _initActiveIngredients() {
    final existing = widget.infoUIModel.activeIngredient;

    if (existing != null && existing.isNotEmpty) {
      for (final item in existing) {
        final ui = SunscreenActiveIngredientUIModel(
          ingredient: item.ingredient,
          percentage: item.percent,
        );

        ui.ingredientController.text = item.ingredient;
        ui.percentageController.text = item.percent;

        _activeIngredients.add(ui);
      }
    } else {
      _addIngredient();
    }
    setState(() {});
  }

  bool _validateActiveIngredients({bool allowAllEmpty = false}) {
    final hasAnyInput = _hasAnyActiveIngredientInput();
    final localization = HealthyLivingScanLocalizations.of(context)!;
    if (allowAllEmpty && !hasAnyInput) {
      return true;
    }
    for (final row in _activeIngredients) {
      final ingredientText = row.ingredientController.text.trim();
      final percentageText = row.percentageController.text;

      if (!ingredientText.isValidValue || !_isPercentageValid(percentageText)) {
        DSToast.showErrorToast(
          context: context,
          title:
              localization
                  .submitProduct_productSubmission_pleaseAddActiveIngredientAndPercentage,
        );
        return false;
      }
      final normalized = _normalizePercentage(percentageText);
      final percentageValue = double.tryParse(normalized);
      if (percentageValue == null || percentageValue < 0) {
        DSToast.showErrorToast(
          context: context,
          title:
              localization
                  .submitProduct_productSubmission_percentageValueIsNotValid,
        );
        return false;
      }
    }
    return true;
  }
}
