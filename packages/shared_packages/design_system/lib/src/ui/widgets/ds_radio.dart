import 'package:design_system/design_system.dart';
import 'package:design_system/src/util/radio/radio_utils.dart';
import 'package:flutter/material.dart';

class DsRadio extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool enabled;
  final String? label;

  const DsRadio({
    required this.value,
    required this.onChanged,
    super.key,
    this.enabled = true,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final style = RadioUtils().getRadioStyle(
      state: enabled ? DSRadioState.normal : DSRadioState.disabled,
      status: value ? DSRadioStatus.selected : DSRadioStatus.unSelected,
      dsColor: context.dsColors,
    );
    final spec = DesignSystemUtil().getDSRadioSizeSpec();
    return GestureDetector(
      onTap: enabled ? () => onChanged(!value) : null,
      child: Row(
        spacing: context.dsSpacing.sp200,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: spec.width,
            height: spec.height,
            padding: spec.padding,
            decoration: BoxDecoration(
              color: style.backgroundColor,
              shape: BoxShape.circle,
              border: Border.all(color: style.borderColor, width: 1),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: style.selectionColor,
              ),
            ),
          ),
          if (label != null && label!.isNotEmpty) ...{
            DSText(
              text: label ?? "",
              textStyle: DSTextStyleType.primaryButtonLMedium,
              textColor: style.labelTextColor,
            ),
          },
        ],
      ),
    );
  }
}
