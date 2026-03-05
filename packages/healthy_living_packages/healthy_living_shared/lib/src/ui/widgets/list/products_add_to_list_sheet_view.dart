import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductsAddToListSheetView extends StatefulWidget {
  final VoidCallback onTapAddToList;
  final VoidCallback onTapClearSelection;
  final VoidCallback onTapClose;
  final int selectItemCount;
  final String? listNameAddToList;

  const ProductsAddToListSheetView({
    required this.onTapAddToList,
    required this.onTapClearSelection,
    required this.onTapClose,
    this.selectItemCount = 0,
    this.listNameAddToList,
    super.key,
  });

  @override
  State<ProductsAddToListSheetView> createState() =>
      _ProductsAddToListSheetViewState();
}

class _ProductsAddToListSheetViewState
    extends State<ProductsAddToListSheetView> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          Container(
            height: 4,
            width: 32,
            decoration: BoxDecoration(
              color: context.dsColors.surfaceNeutralContainerWhite,
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            ),
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          HeaderWithTitle(
            leadIcon: DSIcons.icClose,
            title: healthyLivingSharedLocalizations.general_addToList,
            textStyle: DSTextStyleType.primaryHeadingS,
            textColor: context.dsColors.textOnSurfaceDefault,
            iconColor: context.dsColors.textOnSurfaceDefault,
            onTapLeadIcon: () {
              widget.onTapClose();
            },
          ),

          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          Padding(
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DSButtonPrimary(
                    text:
                        healthyLivingSharedLocalizations
                            .general_clearSelections,
                    state:
                        widget.selectItemCount > 0
                            ? DSButtonState.normal
                            : DSButtonState.disabled,
                    type: DSButtonType.ghost,
                    size: DSButtonSize.small,
                    textColor:
                        widget.selectItemCount > 0
                            ? context.dsColors.textOnSurfaceDefault
                            : context.dsColors.textNeutralDisabled,
                    onPressed: widget.onTapClearSelection,
                    textStyle: DSTextStyleType.primaryButtonLRegular,
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp500),
                Expanded(
                  child: DSButtonSecondary(
                    text: HealthyLivingSharedUtils.getAddToListText(
                      isValidValue: widget.listNameAddToList.isValidValue,
                      listName: widget.listNameAddToList,
                      selectItemCount: 0,
                      localization: healthyLivingSharedLocalizations,
                    ),
                    secondaryText:
                        widget.selectItemCount > 0
                            ? "(${widget.selectItemCount})"
                            : "",
                    state:
                        widget.selectItemCount > 0
                            ? DSButtonState.normal
                            : DSButtonState.disabled,
                    type: DSButtonType.fill,
                    size: DSButtonSize.small,
                    onPressed: widget.onTapAddToList,
                    textStyle: DSTextStyleType.primaryButtonLRegular,
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
