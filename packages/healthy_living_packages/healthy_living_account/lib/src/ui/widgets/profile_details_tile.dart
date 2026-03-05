import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileDetailsTile extends StatelessWidget {
  final String title;
  final String value;

  const ProfileDetailsTile({
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
          textStyle: DSTextStyleType.primaryCaption,
          textColor: context.dsColors.textNeutralSecondary,
        ),
        DSText(
          text: value,
          textStyle: DSTextStyleType.primaryBodyMRegular,
          textColor: context.dsColors.textNeutralOnWhite,
        ),
      ],
    );
  }
}
