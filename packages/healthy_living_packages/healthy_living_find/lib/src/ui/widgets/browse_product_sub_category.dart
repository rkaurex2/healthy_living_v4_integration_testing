import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BrowseProductSubCategory extends StatelessWidget {
  final String subCategories;
  final int index;
  final int selectedIndex;
  final ValueChanged<int> onSelected;
  final bool isVerified;

  const BrowseProductSubCategory({
    required this.subCategories,
    required this.index,
    required this.selectedIndex,
    required this.onSelected,
    this.isVerified = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = index == selectedIndex;
    return RawChip(
      label: DSText(
        text: subCategories,
        textStyle: DSTextStyleType.primaryButtonSMedium,
        textColor:
            isSelected
                ? context.dsColors.textOnSurfaceDefault
                : context.dsColors.textNeutralOnWhite,
      ),
      selected: isSelected,
      showCheckmark: false,
      onSelected: (_) {
        onSelected(index);
      },
      labelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color:
            isSelected
                ? context.dsColors.textOnSurfaceDefault
                : context.dsColors.textNeutralOnWhite,
      ),
      selectedColor: context.dsColors.surfacePrimaryDefault,
      backgroundColor: context.dsColors.surfacePrimaryLight1,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        side: const BorderSide(color: Colors.transparent),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      pressElevation: 0,
      elevation: 0,
      shadowColor: Colors.transparent,
      chipAnimationStyle: ChipAnimationStyle(
        enableAnimation: AnimationStyle(duration: Duration.zero),
        selectAnimation: AnimationStyle(duration: Duration.zero),
        avatarDrawerAnimation: AnimationStyle(duration: Duration.zero),
        deleteDrawerAnimation: AnimationStyle(duration: Duration.zero),
      ),
    );
  }
}
