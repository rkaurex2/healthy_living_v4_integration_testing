import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CheckListItem extends StatelessWidget {
  final String checkListText;

  const CheckListItem({required this.checkListText, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSImage.asset(
          DSIcons.icCheck,
          color: context.dsColors.iconPrimary,
          height: 20,
          width: 20,
        ),
        DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
        Expanded(
          child: DSText(
            text: checkListText,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: context.dsColors.textPrimaryDefault,
          ),
        ),
      ],
    );
  }
}
