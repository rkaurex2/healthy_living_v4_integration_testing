import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CategoriesRadioSelectionWidget extends StatelessWidget {
  const CategoriesRadioSelectionWidget({super.key, required this.isChecked});

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23,
      height: 23,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:
              isChecked
                  ? context.dsColors.iconPrimary
                  : context.dsColors.iconNeutralDefault,
          width: 1.5,
        ),
        color: isChecked ? context.dsColors.iconPrimary : Colors.transparent,
      ),
      child:
          isChecked
              ? DSImage.asset(
                DSIcons.icCheck,
                width: 9,
                height: 6,
                color: context.dsColors.iconOnSurfaceDefault,
              )
              : null,
    );
  }
}
