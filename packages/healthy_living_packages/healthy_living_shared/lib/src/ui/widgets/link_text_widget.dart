import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class LinkTextWidget extends StatelessWidget {
  const LinkTextWidget({
    required this.title,
    super.key,
    this.onTap,
    this.textStyle,
  });

  final VoidCallback? onTap;
  final String title;
  final DSTextStyleType? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: DSText(
        text: title,
        textStyle: textStyle ?? DSTextStyleType.primaryLinkS,
        textColor: context.dsColors.textPrimaryLink,
        decoration: TextDecoration.underline,
        decorationColor: context.dsColors.textPrimaryLink,
      ),
    );
  }
}
