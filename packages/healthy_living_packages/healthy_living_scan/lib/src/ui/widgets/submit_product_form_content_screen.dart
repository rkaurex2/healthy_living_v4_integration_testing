import 'package:design_system/design_system.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/ui/model/product_form_type.dart';
import 'package:healthy_living_scan/src/ui/model/product_form_ui_model.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_form_list_item.dart';
import 'package:healthy_living_scan/src/utils/submit_product_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:flutter/material.dart';

class SubmitProductFormContentScreen extends StatefulWidget {
  const SubmitProductFormContentScreen({required this.infoUIModel, super.key});

  final SubmitProductInfoParams infoUIModel;

  @override
  State<SubmitProductFormContentScreen> createState() =>
      _SubmitProductFormContentScreenState();
}

class _SubmitProductFormContentScreenState
    extends State<SubmitProductFormContentScreen> {
  int? _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.infoUIModel.productFormIndex;
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final List<ProductFormUIModel> productList =
        widget.infoUIModel.productCategoryType == ProductCategory.personalCare
            ? SubmitProductUtils.getPcpProductFormList(localization)
            : SubmitProductUtils.getSunscreenProductFormList(localization);
    if (_selectedIndex != null &&
        (_selectedIndex! < 0 || _selectedIndex! >= productList.length)) {
      _selectedIndex = null;
    }
    return Padding(
      padding: EdgeInsets.only(
        left: context.dsSpacing.sp400,
        right: context.dsSpacing.sp400,
        bottom: context.dsSpacing.sp400,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSText(
            text: localization.submitProduct_info_productForm,
            textStyle: DSTextStyleType.primaryHeadingS,
            textColor: DSBaseColors.neutral1000,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
          DSText(
            text: localization.submitProduct_info_selectOneOfTheFollowing,
            textStyle: DSTextStyleType.primaryBodySRegular,
            textColor: context.dsColors.textNeutralOnWhite,
            lineHeight: 1.5,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),

          Expanded(
            child: ListView.separated(
              itemCount: productList.length,
              separatorBuilder:
                  (context, index) => DSSpacingWidget.vertical(
                    spacing: context.dsSpacing.sp200,
                  ),
              itemBuilder: (context, index) {
                final product = productList[index];
                final selected = _selectedIndex == index;
                return ProductFormListItem(
                  product: product,
                  selected: selected,

                  onTap: () async {
                    final updatedModel = widget.infoUIModel.copyWith(
                      productFormIndex: index,
                      productForm: _getProductForm(index),
                    );

                    await injector
                        .get<ProductSubmissionAnalytics>()
                        .logSubmitAddDetails(
                          submissionId: widget.infoUIModel.submissionId ?? "",
                          productCategory:
                              widget.infoUIModel.productCategoryType.name,
                          addDetailScreen:
                              localization.submitProduct_info_productForm,
                        );
                    if (!context.mounted) return;

                    await context.pushNamed(
                      AppRoutes.submitProductsAdditionalInfoScreen.name,
                      extra: updatedModel,
                    );
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () async {
              _selectedIndex = null;

              /// Logs GA4 Skip Detail Event
              await injector
                  .get<ProductSubmissionAnalytics>()
                  .logSubmitSkipDetails(
                    skipDetailScreen:
                        localization.submitProduct_info_productForm,
                    productCategory:
                        widget.infoUIModel.productCategoryType.name,
                    submissionId: widget.infoUIModel.submissionId ?? "",
                  );
              final updateInfoModel = widget.infoUIModel.copyWith(
                productFormIndex: null,
                productForm: null,
              );

              if (context.mounted) {
                await context.pushNamed(
                  AppRoutes.submitProductsAdditionalInfoScreen.name,
                  extra: updateInfoModel,
                );
              }
            },
            child: Container(
              height: 42,
              padding: EdgeInsets.symmetric(
                vertical: context.dsSpacing.sp200,
                horizontal: context.dsSpacing.sp300,
              ),
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
    );
  }

  String? _getProductForm(int? index) {
    if (index == null) return null;
    ProductFormType type = ProductFormType.unknown;

    if (index == 0) {
      type = ProductFormType.liquid;
    } else if (index == 1) {
      type = ProductFormType.powder;
    } else if (index == 2) {
      type = ProductFormType.pressedPowder;
    } else if (index == 3) {
      type = ProductFormType.spray;
    } else if (index == 4) {
      type = ProductFormType.aerosolSpray;
    }
    final value = type.value;
    return value.isEmpty ? null : value;
  }
}
