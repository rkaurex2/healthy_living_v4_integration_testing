import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SelectionOptionsSheetView extends StatefulWidget {
  final VoidCallback onTap;
  final VoidCallback onTapClearSelection;
  final VoidCallback onTapClose;
  final int selectItemCount;
  final String title;
  final String buttonText;
  final DSButtonState dsButtonState;

  const SelectionOptionsSheetView({
    required this.onTap,
    required this.onTapClearSelection,
    required this.onTapClose,
    required this.title,
    required this.buttonText,
    this.dsButtonState = DSButtonState.normal,
    this.selectItemCount = 0,
    super.key,
  });

  @override
  State<SelectionOptionsSheetView> createState() =>
      _SelectionOptionsSheetViewState();
}

class _SelectionOptionsSheetViewState extends State<SelectionOptionsSheetView> {
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
            title: widget.title,
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
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
                DSButtonSecondary(
                  width: MediaQuery.of(context).size.width * 0.45,
                  text: widget.buttonText,
                  state: widget.dsButtonState,
                  type: DSButtonType.fill,
                  size: DSButtonSize.small,
                  onPressed: widget.onTap,
                  textStyle: DSTextStyleType.primaryButtonLRegular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
