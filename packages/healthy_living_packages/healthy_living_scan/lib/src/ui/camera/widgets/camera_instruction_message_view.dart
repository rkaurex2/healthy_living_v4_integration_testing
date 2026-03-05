import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CameraInstructionMessageView extends StatelessWidget {
  final String message;
  final String icon;

  const CameraInstructionMessageView({
    required this.message,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.dsSpacing.sp400),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: context.dsColors.surfacePrimaryOpacity,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          ),
          child: Padding(
            padding: EdgeInsets.all(context.dsSpacing.sp200),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: DSImage.asset(icon, width: 26, height: 26),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                Flexible(
                  child: DSText(
                    text: message,
                    textStyle: DSTextStyleType.primaryBodyMRegular,
                    textColor: context.dsColors.textOnSurfaceDefault,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
