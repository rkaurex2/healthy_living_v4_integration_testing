import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSCheckbox extends StatefulWidget {
  final DSCheckboxStatus status;
  final DSCheckboxState state;
  final String? label;
  final ValueChanged<DSCheckboxStatus> onChanged;

  const DSCheckbox({
    required this.status,
    required this.state,
    required this.onChanged,
    this.label,
    super.key,
  });

  @override
  State<DSCheckbox> createState() => _DSCheckboxState();
}

class _DSCheckboxState extends State<DSCheckbox> {
  void _handleTap() {

    if (widget.state == DSCheckboxState.disabled) return;

    final updatedStatus =
        widget.status == DSCheckboxStatus.unSelected
            ? DSCheckboxStatus.selected
            : DSCheckboxStatus.unSelected;

    widget.onChanged(updatedStatus);
  }

  bool _isLongPressed = false;

  Color _resolveColorFromUIState() {
    if (_isLongPressed) {
      return context.dsColors.surfacePrimaryPress;
    }

    switch (widget.state) {
      case DSCheckboxState.pressed:
        return context.dsColors.surfacePrimaryPress;
      case DSCheckboxState.disabled:
        return context.dsColors.surfacePrimaryDisabled;
      case DSCheckboxState.defaultState:
        return context.dsColors.surfacePrimaryDefault;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isChecked = widget.status == DSCheckboxStatus.selected;
    final isMultiselect = widget.status == DSCheckboxStatus.multiselect;
    final spec = DesignSystemUtil.getDSCheckboxSizeSpec();

    final borderColor = _resolveColorFromUIState();
    final fillColor =
        (isChecked || isMultiselect)
            ? _resolveColorFromUIState()
            : context.dsColors.surfaceNeutralContainerWhite;

    final Widget? icon =
        widget.status != DSCheckboxStatus.unSelected
            ? DSImage.asset(
              isChecked ? DSIcons.icCheck : DSIcons.icMinus,
              color: context.dsColors.iconOnSurfaceDefault,
            )
            : null;

    return GestureDetector(
      onTap: _handleTap,
      onTapDown: (_) {
        if (widget.state != DSCheckboxState.disabled) {
          setState(() => _isLongPressed = true);
        }
      },
      onTapUp: (_) {
        if (widget.state != DSCheckboxState.disabled) {
          setState(() => _isLongPressed = false);
        }
      },
      onTapCancel: () {
        if (widget.state != DSCheckboxState.disabled) {
          setState(() => _isLongPressed = false);
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            width: spec.size,
            height: spec.size,
            decoration: BoxDecoration(
              color: fillColor,
              border: Border.all(color: borderColor, width: 1),
              borderRadius: BorderRadius.circular(context.dsRadius.rd100),
            ),
            alignment: Alignment.center,
            child: icon,
          ),
          DSSpacingWidget.horizontal(spacing: context.dsSizes.sz300),
          if (widget.label != null && widget.label!.isNotEmpty)
            Flexible(
              child: DSText(
                text: widget.label!,
                textStyle: DSTextStyleType.primaryButtonLMedium,
                textColor: context.dsColors.textNeutralOnWhite,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
