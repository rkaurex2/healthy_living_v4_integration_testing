import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class PackagingInfoSection extends StatelessWidget {
  final String title;
  final String value;

  const PackagingInfoSection({
    required this.title,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          text: title,
          textStyle: DSTextStyleType.primarySubHeadingS,
          textColor: context.dsColors.textNeutralOnWhite,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
        DSText(
          text: value,
          textStyle: DSTextStyleType.primaryBodySRegular,
          textColor: context.dsColors.textNeutralSecondary,
        ),
      ],
    );
  }
}
