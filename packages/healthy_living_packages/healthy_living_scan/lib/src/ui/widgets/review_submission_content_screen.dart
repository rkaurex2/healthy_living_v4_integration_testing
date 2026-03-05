import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_state.dart';
import 'package:healthy_living_scan/src/ui/model/product_category_ui_model.dart';
import 'package:healthy_living_scan/src/ui/model/product_form_ui_model.dart';
import 'package:healthy_living_scan/src/ui/widgets/captured_image_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_form_list_item.dart';
import 'package:healthy_living_scan/src/ui/widgets/review_ingredients_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/review_submit_button.dart';
import 'package:healthy_living_scan/src/ui/widgets/select_product_type_item.dart';
import 'package:healthy_living_scan/src/ui/widgets/usage_tile_widget.dart';
import 'package:healthy_living_scan/src/utils/submit_product_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ReviewSubmissionContentScreen extends StatefulWidget {
  final SubmitProductInfoParams infoUIModel;

  const ReviewSubmissionContentScreen({required this.infoUIModel, super.key});

  @override
  State<ReviewSubmissionContentScreen> createState() =>
      _ReviewSubmissionContentScreenState();
}

class _ReviewSubmissionContentScreenState
    extends State<ReviewSubmissionContentScreen> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _unitController = TextEditingController();
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productBrandNameController =
      TextEditingController();
  final List<String> _unitOptions = SubmitProductUtils.getUnitOptions;
  String? _selectedUnit;
  String? _unitError;
  String _usage = '';
  String _uuid = '';
  bool? _isDamagedSkin;
  late SubmitProductInfoParams _currentInfoModel;

  @override
  void initState() {
    _currentInfoModel = widget.infoUIModel;
    _selectedUnit = _currentInfoModel.unitValue ?? '';
    _unitController.text = _selectedUnit ?? '';
    _weightController.text = _currentInfoModel.weightValue ?? '';
    _usage = _currentInfoModel.productUsage ?? '';
    _isDamagedSkin = _currentInfoModel.useOnDamagedSkin;
    _productBrandNameController.text = _currentInfoModel.brandName;
    _productNameController.text = _currentInfoModel.productName;
    _getUuid();
    super.initState();
  }

  void _updateIngredientText(String updatedIngredients) {
    setState(() {
      _currentInfoModel = _currentInfoModel.copyWith(
        ingredientText: updatedIngredients,
      );
    });
  }

  void _handleSubmit() {
    String weightValue = _weightController.text.trim();

    final localization = HealthyLivingScanLocalizations.of(context)!;
    if (!_validateFields(context)) {
      return;
    }
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
    _currentInfoModel = _currentInfoModel.copyWith(
      brandName: _productBrandNameController.text.trim(),
      productName: _productNameController.text.trim(),
      unitValue: _selectedUnit,
      weightValue: weightValue.isValidValue ? weightValue : null,
      productUsage: _usage.isEmpty ? null : _usage,
      useOnDamagedSkin: _isDamagedSkin,
      uuid: _uuid,
      ingredients:
          _currentInfoModel.ingredientText ?? _currentInfoModel.ingredients,
      finalUserEditsSubmit: true,
    );
    context.read<SubmitProductBloc>().add(
      SubmitProductEvent.submitProduct(
        submissionId: widget.infoUIModel.submissionId ?? "",
        infoUIModel: _currentInfoModel,
      ),
    );
  }

  void _getUuid() async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    _uuid = identifierParams.uuid;
  }

  bool _validateFields(BuildContext context) {
    final brand = _productBrandNameController.text.trim();
    final name = _productNameController.text.trim();

    if (!brand.isValidValue) {
      DSToast.showErrorToast(
        context: context,
        title:
            HealthyLivingScanLocalizations.of(
              context,
            )!.submitProduct_productSubmission_brandIsRequired,
      );
      return false;
    }

    if (!name.isValidValue) {
      DSToast.showErrorToast(
        context: context,
        title:
            HealthyLivingScanLocalizations.of(
              context,
            )!.submitProduct_productSubmission_productNameIsRequired,
      );
      return false;
    }

    return true;
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

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final HealthyLivingSharedLocalizations sharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return BlocConsumer<SubmitProductBloc, SubmitProductState>(
      listenWhen:
          (_, current) =>
              current is SubmitProductSuccess ||
              current is LoadInstantScore ||
              current is PollingInstantScoreSuccess ||
              current is SubmitProductError ||
              current is SubmitProductFailure,

      listener: (context, state) async {
        if (state is SubmitProductSuccess) {
          /// Logs GA4 Product Submission Success Event
          await injector.get<ProductSubmissionAnalytics>().logSubmitSuccess(
            submissionId: widget.infoUIModel.submissionId ?? "",
            productCategory: widget.infoUIModel.productCategoryType.name,
          );

          var infoUIUpdatedModel = widget.infoUIModel.copyWith(
            isInstantScoreHazardProduct: false,
            productName: _productNameController.text,
            brandName: _productBrandNameController.text,
          );
          if (!context.mounted) return;
          await context.pushNamed(
            AppRoutes.submissionConfirmationScreen.name,
            extra: infoUIUpdatedModel,
          );
        } else if (state is LoadInstantScore) {
          if (!context.mounted) return;
          await context.pushNamed(
            AppRoutes.instantScoreProcessingScreen.name,
            extra: state.loadingInstantScoreMessage,
          );
        } else if (state is PollingInstantScoreSuccess) {
          /// Logs GA4 Product Submission Success Event
          await injector.get<ProductSubmissionAnalytics>().logSubmitSuccess(
            submissionId: widget.infoUIModel.submissionId ?? "",
            productCategory: widget.infoUIModel.productCategoryType.name,
          );
          var infoUIUpdatedModel = widget.infoUIModel.copyWith(
            provisionalScoreResponse: state.provisionalScore,
            isInstantScoreHazardProduct: true,
            productName: _productNameController.text,
            brandName: _productBrandNameController.text,
          );
          if (!context.mounted) return;
          context.pop();

          if (!context.mounted) return;
          await context.pushNamed(
            AppRoutes.submissionConfirmationScreen.name,
            extra: infoUIUpdatedModel,
          );
        } else if (state is SubmitProductError) {
          /// Logs GA4 Product Submission Fail Event
          await injector.get<ProductSubmissionAnalytics>().logSubmitFail(
            submissionId: widget.infoUIModel.submissionId ?? "",
            productCategory: widget.infoUIModel.productCategoryType.name,
          );
          if (!context.mounted) return;
          DSToast.showErrorToast(
            context: context,
            title:
                state.message ??
                sharedLocalizations.general_errorMessage_somethingWentWrong,
          );
        } else if (state is SubmitProductFailure) {
          /// Logs GA4 Product Submission Fail Event
          await injector.get<ProductSubmissionAnalytics>().logSubmitFail(
            submissionId: widget.infoUIModel.submissionId ?? "",
            productCategory: widget.infoUIModel.productCategoryType.name,
          );
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              SingleChildScrollView(
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
                                .submitProduct_productSubmission_reviewSubmission,
                        textStyle: DSTextStyleType.primaryHeadingS,
                        textColor: context.dsColors.textNeutralOnWhite,
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp100,
                      ),
                      DSText(
                        text:
                            localization
                                .submitProduct_productSubmission_reviewTheDetails,
                        textStyle: DSTextStyleType.primaryBodySRegular,
                        textColor: context.dsColors.textNeutralSecondary,
                        lineHeight: 1.5,
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp600,
                      ),
                      DSTextInput(
                        controller: _productBrandNameController,
                        label: localization.submitProduct_info_brand,
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp400,
                      ),
                      DSTextInput(
                        controller: _productNameController,
                        label: localization.submitProduct_info_productName,
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp500,
                      ),
                      ReviewIngredientsWidget(
                        infoUIModel: _currentInfoModel,
                        onIngredientUpdate: _updateIngredientText,
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp500,
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
                                  keyboardType: TextInputType.numberWithOptions(
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
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp500,
                      ),

                      if (widget.infoUIModel.productCategoryType ==
                              ProductCategory.personalCare ||
                          widget.infoUIModel.productCategoryType ==
                              ProductCategory.sunscreen) ...[
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
                        Row(
                          children: [
                            DsRadio(
                              value: _isDamagedSkin == true,
                              onChanged:
                                  (_) => setState(() => _isDamagedSkin = true),
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
                                  (_) => setState(() => _isDamagedSkin = false),
                              label:
                                  localization
                                      .submitProduct_productSubmission_no,
                            ),
                          ],
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp500,
                        ),
                      ],
                      DSText(
                        text:
                            localization
                                .submitProduct_productSubmission_productCategory,
                        textStyle: DSTextStyleType.primarySubheadingXs,
                        textColor: context.dsColors.textNeutralOnWhite,
                        lineHeight: 1.5,
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp200,
                      ),
                      SelectProductTypeItem(
                        productCategoryUIModel: _getCategory(),
                        onTap: () {},
                      ),
                      if (widget.infoUIModel.productFormIndex != null &&
                          (widget.infoUIModel.productCategoryType ==
                                  ProductCategory.personalCare ||
                              widget.infoUIModel.productCategoryType ==
                                  ProductCategory.sunscreen)) ...[
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp500,
                        ),
                        DSText(
                          text:
                              localization
                                  .submitProduct_productSubmission_productForm,
                          textStyle: DSTextStyleType.primarySubheadingXs,
                          textColor: context.dsColors.textNeutralOnWhite,
                          lineHeight: 1.5,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),

                        ProductFormListItem(
                          product: _getProductFormType(localization),
                          selected: false,
                        ),
                      ],
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp500,
                      ),
                      CapturedImageWidget(
                        capturedImagesList: _getProductImagesList(
                          StringConstants.front,
                        ),
                        title:
                            localization.submitProduct_productSubmission_photos,
                        label:
                            localization
                                .submitProduct_productSubmission_frontLabel,
                      ),
                      if (widget.infoUIModel.productCategoryType !=
                          ProductCategory.sunscreen) ...[
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp500,
                        ),
                        CapturedImageWidget(
                          capturedImagesList: _getProductImagesList(
                            StringConstants.singleIngredientsPanel,
                          ),
                          title:
                              localization
                                  .submitProduct_productSubmission_photos,
                          label:
                              localization
                                  .submitProduct_productSubmission_ingredients,
                        ),
                      ],
                      if (widget.infoUIModel.productCategoryType ==
                          ProductCategory.food) ...[
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp500,
                        ),
                        CapturedImageWidget(
                          capturedImagesList: _getProductImagesList(
                            StringConstants.nutritionPanel,
                          ),
                          title:
                              localization
                                  .submitProduct_productSubmission_photos,
                          label:
                              localization
                                  .submitProduct_productSubmission_nutritionFacts,
                        ),
                      ],
                      if (widget.infoUIModel.productCategoryType ==
                          ProductCategory.cleaner) ...[
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp500,
                        ),
                        CapturedImageWidget(
                          capturedImagesList: _getProductImagesList(
                            StringConstants.directions,
                          ),
                          title:
                              localization
                                  .submitProduct_productSubmission_photos,
                          label:
                              localization.submitProduct_info_directionForUse,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp500,
                        ),
                        CapturedImageWidget(
                          capturedImagesList: _getProductImagesList(
                            StringConstants.warnings,
                          ),
                          title:
                              localization
                                  .submitProduct_productSubmission_photos,
                          label:
                              localization.submitProduct_info_warningsOrHazards,
                        ),
                      ],

                      if (widget.infoUIModel.productCategoryType ==
                          ProductCategory.sunscreen) ...[
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp500,
                        ),
                        CapturedImageWidget(
                          capturedImagesList: _getProductImagesList(
                            StringConstants.drugFactsPanel,
                          ),
                          title:
                              localization
                                  .submitProduct_productSubmission_photos,
                          label:
                              localization
                                  .submitProduct_productSubmission_drugFactsPanel,
                        ),
                      ],
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp400,
                      ),
                      ReviewSubmitButton(
                        onSubmitTap: _handleSubmit,
                        onStartOverTap: () {
                          context.goNamed(
                            AppRoutes.submitProductInfo.name,
                            extra: _currentInfoModel,
                          );
                        },
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp500,
                      ),
                    ],
                  ),
                ),
              ),
              if (state is SubmitProductLoading) AppLoader(),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _weightController.dispose();
    _unitController.dispose();
    _productNameController.dispose();
    _productBrandNameController.dispose();

    super.dispose();
  }

  ProductCategoryUIModel _getCategory() {
    final localization = HealthyLivingSharedLocalizations.of(context)!;
    final String subTitle =
        widget.infoUIModel.subCategoryName ??
        widget.infoUIModel.categoryName ??
        widget.infoUIModel.categoryGroupName ??
        "";
    if (widget.infoUIModel.productCategoryType.value ==
        ProductCategory.personalCare.value) {
      return ProductCategoryUIModel(
        imageAsset: DSIcons.icPersonalCareSelectProduct,
        title: localization.general_productCategory_personalCare,
        subtitle: subTitle,
        isInstantScoring:
            widget.infoUIModel.isInstantScoreHazardProduct ?? false,
        productByCategoryType: ProductCategory.personalCare,
      );
    } else if (widget.infoUIModel.productCategoryType.value ==
        ProductCategory.sunscreen.value) {
      return ProductCategoryUIModel(
        imageAsset: DSIcons.icSunscreenSubmitProduct,
        title: localization.general_productCategory_sunscreen,
        subtitle: subTitle,
        isInstantScoring: false,
        productByCategoryType: ProductCategory.sunscreen,
      );
    } else if (widget.infoUIModel.productCategoryType.value ==
        ProductCategory.cleaner.value) {
      return ProductCategoryUIModel(
        imageAsset: DSIcons.icCleanersSubmitProduct,
        title: localization.general_productCategory_cleaners,
        subtitle: subTitle,
        isInstantScoring: false,
        productByCategoryType: ProductCategory.cleaner,
      );
    } else if (widget.infoUIModel.productCategoryType.value ==
        ProductCategory.food.value) {
      return ProductCategoryUIModel(
        imageAsset: DSIcons.icFoodSubmitProduct,
        title: localization.general_productCategory_food,
        subtitle: subTitle,
        isInstantScoring: false,
        productByCategoryType: ProductCategory.food,
      );
    }
    return ProductCategoryUIModel(
      imageAsset: DSIcons.icFoodSubmitProduct,
      title: localization.general_productCategory_food,
      subtitle: subTitle,
      isInstantScoring: false,
      productByCategoryType: ProductCategory.food,
    );
  }

  List<String> _getProductImagesList(String role) {
    final front = widget.infoUIModel.photosByRole?[StringConstants.front] ?? [];
    final ingredients =
        widget.infoUIModel.photosByRole?[StringConstants
            .singleIngredientsPanel] ??
        [];
    final nutrition =
        widget.infoUIModel.photosByRole?[StringConstants.nutritionPanel] ?? [];
    final drugFacts =
        widget.infoUIModel.photosByRole?[StringConstants.drugFactsPanel] ?? [];
    final directions =
        widget.infoUIModel.photosByRole?[StringConstants.directions] ?? [];
    final warnings =
        widget.infoUIModel.photosByRole?[StringConstants.warnings] ?? [];

    if (role == StringConstants.front && front.isValidList) {
      return front;
    } else if (role == StringConstants.singleIngredientsPanel &&
        ingredients.isValidList) {
      return ingredients;
    } else if (role == StringConstants.nutritionPanel &&
        nutrition.isValidList) {
      return nutrition;
    } else if (role == StringConstants.drugFactsPanel &&
        drugFacts.isValidList) {
      return drugFacts;
    } else if (role == StringConstants.directions && directions.isValidList) {
      return directions;
    } else if (role == StringConstants.warnings && warnings.isValidList) {
      return warnings;
    }
    return [];
  }

  ProductFormUIModel _getProductFormType(
    HealthyLivingScanLocalizations localization,
  ) {
    if (widget.infoUIModel.productCategoryType ==
        ProductCategory.personalCare) {
      return SubmitProductUtils.getPcpProductFormList(
        localization,
      )[widget.infoUIModel.productFormIndex ?? 0];
    } else {
      return SubmitProductUtils.getSunscreenProductFormList(
        localization,
      )[widget.infoUIModel.productFormIndex ?? 0];
    }
  }
}
