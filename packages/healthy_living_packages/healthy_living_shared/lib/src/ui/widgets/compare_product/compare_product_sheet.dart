import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/compare_product/compare_another_product_card.dart';
import 'package:healthy_living_shared/src/ui/widgets/compare_product/compare_product_card.dart';

class CompareProductSheet extends StatefulWidget {
  final VoidCallback onTapCompareProducts;
  final VoidCallback onTapClose;
  final Function(int, CompareProductItem) onRemoveProduct;
  final List<CompareProductItem> compareProductList;
  final CompareProductCardType compareProductCardType;
  final bool isScanEnabled;
  final bool isSearchEnabled;
  final bool isDisableDefaultItem;
  final VoidCallback? scanOnPressed;
  final VoidCallback? searchOnPressed;
  const CompareProductSheet({
    required this.onTapCompareProducts,
    required this.onTapClose,
    required this.compareProductList,
    required this.onRemoveProduct,
    this.scanOnPressed,
    this.searchOnPressed,
    this.isScanEnabled = true,
    this.isSearchEnabled = true,
    this.isDisableDefaultItem = false,
    this.compareProductCardType = CompareProductCardType.addAnother,
    super.key,
  });

  @override
  State<CompareProductSheet> createState() => _CompareProductSheetState();
}

class _CompareProductSheetState extends State<CompareProductSheet> {
  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfacePrimaryDefault,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(context.dsRadius.rd500),
          topLeft: Radius.circular(context.dsRadius.rd500),
        ),
      ),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
            Container(
              height: context.dsSizes.sz100,
              width: context.dsSizes.sz600,
              decoration: BoxDecoration(
                color: context.dsColors.surfaceNeutralContainerWhite,
                borderRadius: BorderRadius.circular(context.dsRadius.rd300),
              ),
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
            HeaderWithTitle(
              leadIcon: DSIcons.icClose,
              title: healthyLivingSharedLocalizations.general_compareProducts,
              textStyle: DSTextStyleType.primaryHeadingS,
              textColor: context.dsColors.textOnSurfaceDefault,
              iconColor: context.dsColors.textOnSurfaceDefault,
              onTapLeadIcon: () {
                widget.onTapClose();
              },
            ),
            DSText(
              text:
                  healthyLivingSharedLocalizations
                      .general_compare_addTwoProductsDesc,
              textStyle: DSTextStyleType.primaryBodySRegular,
              textColor: context.dsColors.textOnSurfaceDefault,
              textAlign: TextAlign.center,
            ),
            if (widget.compareProductList.isNotEmpty) ...{
              Padding(
                padding: EdgeInsets.all(context.dsSpacing.sp400),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child:
                            widget.compareProductList.first.title.isValidValue
                                ? CompareProductCard(
                                  isDisableDefaultItem:
                                      widget.isDisableDefaultItem,
                                  imageUrl:
                                      widget
                                          .compareProductList
                                          .first
                                          .imageUrl ??
                                      "",
                                  brand:
                                      widget.compareProductList.first.brand ??
                                      "",
                                  title:
                                      widget.compareProductList.first.title ??
                                      "",
                                  onRemove: () {
                                    widget.onRemoveProduct.call(
                                      0,
                                      widget.compareProductList.first,
                                    );
                                  },
                                  isEWGVerified:
                                      widget
                                          .compareProductList
                                          .first
                                          .isEwgVerified,
                                  score: widget.compareProductList.first.score,
                                )
                                : CompareAnotherProductCard(
                                  scanOnPressed: () {},
                                  searchOnPressed: () {},
                                  onTap: () {},
                                  compareProductCardType:
                                      widget.compareProductCardType,
                                  isScanEnabled: widget.isScanEnabled,
                                  isSearchEnabled: widget.isSearchEnabled,
                                ),
                      ),
                      DSSpacingWidget.horizontal(
                        spacing: context.dsSpacing.sp300,
                      ),
                      Expanded(
                        child:
                            widget.compareProductList.length > 1
                                ? CompareProductCard(
                                  imageUrl:
                                      widget.compareProductList[1].imageUrl ??
                                      "",
                                  brand:
                                      widget.compareProductList[1].brand ?? "",
                                  title:
                                      widget.compareProductList[1].title ?? "",
                                  onRemove: () {
                                    widget.onRemoveProduct.call(
                                      1,
                                      widget.compareProductList[1],
                                    );
                                  },
                                  isEWGVerified:
                                      widget
                                          .compareProductList[1]
                                          .isEwgVerified,
                                  score: widget.compareProductList[1].score,
                                  isDisableDefaultItem: false,
                                )
                                : CompareAnotherProductCard(
                                  isScanEnabled: widget.isScanEnabled,
                                  isSearchEnabled: widget.isSearchEnabled,
                                  onTap: () {},
                                  compareProductCardType:
                                      widget.compareProductCardType,
                                  scanOnPressed: () {
                                    widget.scanOnPressed?.call();
                                  },
                                  searchOnPressed: () {
                                    widget.searchOnPressed?.call();
                                  },
                                ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                ),
                child: DSButtonSecondary(
                  text:
                      healthyLivingSharedLocalizations.general_compareProducts,
                  state:
                      widget.compareProductList.isNotEmpty &&
                              widget.compareProductList.length > 1
                          ? DSButtonState.normal
                          : DSButtonState.disabled,
                  type: DSButtonType.fill,
                  size: DSButtonSize.small,
                  onPressed: widget.onTapCompareProducts,
                  textStyle: DSTextStyleType.primaryButtonLRegular,
                ),
              ),
            },

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          ],
        ),
      ),
    );
  }
}
